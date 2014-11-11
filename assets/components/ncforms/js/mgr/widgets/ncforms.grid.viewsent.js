NcForms.grid.NcViewSent = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        id: 'ncforms-grid-ncviewsent'
        ,url: NcForms.config.connectorUrl
        ,baseParams: {
			action: 'mgr/ncform/getListViewSent'
			,id: MODx.request.id
			,form_id: config.form_id
		}
		// Если здесь не указать имя, то и при обновлении (Update) оно не появится!
        ,fields: [
			'id'
			,'form_id'
			,'sent_on'
			,'data'
		]
        ,paging: true
        ,remoteSort: false
        ,anchor: '97%'
        ,autoExpandColumn: 'form_id'
        ,columns: [{
            header: _('id')
            ,dataIndex: 'id'
            ,sortable: true
            ,width: 60
        },{
            header: ('Sent on')
            ,dataIndex: 'sent_on'
            ,sortable: true
            ,width: 60
        },{
            header: ('Data')
            ,dataIndex: 'data'
            ,sortable: true
            ,width: 500
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
		// кнопка Вернуться к списку форм
		,{
		   text: ('Back to form list')
		   ,handler: function() { window.location.href = '?a=' + MODx.action['ncforms:index'];}
		}]
    });
    NcForms.grid.NcViewSent.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.grid.NcViewSent,MODx.grid.Grid,{
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
			text: ('View')
			,handler: this.viewNcViewSent
		},'-',{
			text: ('Remove')
			,handler: this.removeNcViewSent
		}];
		this.addContextMenuItem(m);
		return true;
	}
	
	// обработчкик кнопки Обзор, вызываем из меню
	,viewNcViewSent: function(btn,e) {
		if (!this.viewNcViewSentWindow) {
			this.viewNcViewSentWindow = MODx.load({
				xtype: 'ncforms-window-ncviewsent-view'
				,record: this.menu.record
				,listeners: {
					'success': {fn:this.refresh,scope:this}
				}
			});
		} else {
			this.viewNcViewSentWindow.setValues(this.menu.record);
		}
		this.viewNcViewSentWindow.show(e.target);
	}
	// обработчкик кнопки Удалить, вызываем из меню
	,removeNcViewSent: function() {
		MODx.msg.confirm({
			title: ('Remove')
			,text: ('ncforms.ncviewsent_remove_confirm')
			,url: this.config.url
			,params: {
				action: 'mgr/ncform/removeViewSent'
				,id: this.menu.record.id
			}
			,listeners: {
				'success': {fn:this.refresh,scope:this}
			}
		});
	}
});
Ext.reg('ncforms-grid-ncviewsent',NcForms.grid.NcViewSent);