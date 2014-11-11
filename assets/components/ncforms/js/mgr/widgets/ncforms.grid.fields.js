NcForms.grid.NcFields = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        id: 'ncforms-grid-ncfields'
        ,url: NcForms.config.connectorUrl
        ,baseParams: {
			action: 'mgr/ncform/getListName'
			,id: MODx.request.id
			,form_id: config.form_id
		}
		/* ,buttons: [{
            text: ('Back to form list')
            ,handler: function() { window.location.href = '?a=workspace&namespace=ncforms';}
        }] */
		// Если здесь не указать имя, то и при обновлении (Update) оно не появится!
        ,fields: [
			'id'
			,'form_id'
			,'label'
			,'header'
			,'input_value'
			,'input_default_value'
			,'type'
			,'order_id'
			,'multiple'
			,'input_validate'
			,'placeholder'
		]
        ,paging: true
        ,remoteSort: false
		// ,sortBy: 'order'
        ,anchor: '97%'
		// для сортировки полей методом dragAndDrop BEGIN
		,enableDragDrop: true
		,ddGroup: 'ddGrid' + config.form_id
		,ddText : 'Place this row.'
		// для сортировки полей методом dragAndDrop END
        ,autoExpandColumn: 'form_id'
		// Добавление встроенного редактирования BEGIN
		,save_action: 'mgr/ncform/updateFromGridFields'
		,autosave: true
		// Добавление встроенного редактирования END
        ,columns: [{
            header: _('id')
            ,dataIndex: 'id'
            ,sortable: true
            ,width: 60
        },{
            header: ('Type')
            ,dataIndex: 'type'
            ,sortable: true
            ,width: 350
			,editor: { xtype: 'ncforms-combo-type'}
        },{
            header: ('Label')
            ,dataIndex: 'label'
            ,sortable: true
            ,width: 350
			,editor: { xtype: 'textfield' }
        }]
		// форма для поиска
		,tbar:[{
			xtype: 'textfield'
			,id: 'ncforms-search-filter-2'
			,emptyText: ('Search...')
			,listeners: {
				'change': {fn:this.search,scope:this}
				,'render': {fn: function(cmp) {
					new Ext.KeyMap(cmp.getEl(), {
						key: Ext.EventObject.ENTER
						,fn: function() {
							this.fireEvent('change',this);
							this.blur();
							return true;
						}
						,scope: cmp
					});
				},scope:this}
			}
		}
		// кнопка Создать форму
		,{
		   text: ('Create new field')
		   ,handler: { xtype: 'ncforms-window-ncfield-create' ,blankValues: true, form_id: MODx.request.id }
		},{
		   text: ('Back to form list')
		   ,handler: function() { window.location.href = '?a=' + MODx.action['ncforms:index'];}
		}]
    });
    NcForms.grid.NcFields.superclass.constructor.call(this,config);
	
	// Reorder by Drag and Drop
    this.on('render', this.dragAndDrop, this);
};
Ext.extend(NcForms.grid.NcFields,MODx.grid.Grid,{
	// функция обработки поисковых запросов
    search: function(tf,nv,ov) {
        var s = this.getStore();
        s.baseParams.query = tf.getValue();
        this.getBottomToolbar().changePage(1);
        this.refresh();
    }
	// добавляем контекстное меню
	,getMenu: function() {
		var m = [{
			text: ('Update field')
			,handler: this.updateNcField
		},'-',{
			text: ('Remove field')
			,handler: this.removeNcField
		}];
		this.addContextMenuItem(m);
		return true;
	}
	
	// обработчкик кнопки обновить, вызываем из меню
	,updateNcField: function(btn,e) {
		if (!this.updateNcFieldWindow) {
			this.updateNcFieldWindow = MODx.load({
				xtype: 'ncforms-window-ncfield-update'
				,record: this.menu.record
				,listeners: {
					'success': {fn:this.refresh,scope:this}
				}
			});
		} else {
			this.updateNcFieldWindow.setValues(this.menu.record);
		}
		this.updateNcFieldWindow.show(e.target);
	}
	// обработчкик кнопки удалить, вызываем из меню
	,removeNcField: function() {
		MODx.msg.confirm({
			title: ('Remove field')
			,text: ('ncforms.ncfield_remove_confirm')
			,url: this.config.url
			,params: {
				action: 'mgr/ncform/removeFields'
				,id: this.menu.record.id
			}
			,listeners: {
				'success': {fn:this.refresh,scope:this}
			}
		});
	}
	,dragAndDrop: function (grid) {
    	var that = this,
            ddrow = new Ext.dd.DropTarget(grid.container, {
    		ddGroup: 'ddGrid' + this.config.form_id
    		,copy: false
    		,notifyDrop: function (dd, e, data) {
    			var ds = grid.store,
                    sm = grid.getSelectionModel(),
    				rows = sm.getSelections();

    			if (dd.getDragData(e)) {
    				var cindex = dd.getDragData(e).rowIndex;
    				for (var i = 0; i < rows.length; i++) {
                        rowData = ds.getById(rows[i].id);
    					if (!this.copy) {
                            ds.remove(ds.getById(rows[i].id));
                            ds.insert(cindex, rowData);
    					}
    				};
                }

                var d = ds.data.items,
                    data,
                    fieldOrder = [];

                for (var i = 0; i < d.length; i++) {
                    data = d[i].data;
                    data['order_id'] = i;
					
                    fieldOrder.push(data);
                };

                MODx.Ajax.request({
                    url: NcForms.config.connectorUrl
                    ,params: {
                        action: that.config.save_action + 'Order'
                        ,data: Ext.util.JSON.encode(fieldOrder)
						,form_id: grid.baseParams.id
                    }
                });
    		}
    	});
    }
});
Ext.reg('ncforms-grid-ncfields',NcForms.grid.NcFields);