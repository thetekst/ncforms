NcForms.grid.NcForms = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        id: 'ncforms-grid-ncforms'
        ,url: NcForms.config.connectorUrl
        ,baseParams: { action: 'mgr/ncform/getList' }
        ,fields: [
			'id'
			,'name'
			,'save_method'
			,'email'
			,'redirect_or_msg'
			,'redirect_id'
			,'spam_hook'
			,'recaptcha_hook'
			,'success_message'
			,'identifier'
			,'hooks'
			,'action_button'
			,'properties'
		]
        ,paging: true
        ,remoteSort: true
        ,anchor: '97%'
        ,autoExpandColumn: 'name'
		// Добавление встроенного редактирования BEGIN
		,save_action: 'mgr/ncform/updateFromGrid'
		,autosave: true
		// Добавление встроенного редактирования END
        ,columns: [{
            header: _('id')
            ,dataIndex: 'id'
            ,sortable: true
            ,width: 60
        },{
            header: ('Name')
            ,dataIndex: 'name'
            ,sortable: true
            ,width: 350
            ,editor: { xtype: 'textfield' }
        },{
            header: ('Save method')
            ,dataIndex: 'save_method'
            ,sortable: false
            ,width: 350
            ,editor: { xtype: 'ncforms-combo-save-method'}
        },{
            header: ('Email')
            ,dataIndex: 'email'
            ,sortable: false
            ,width: 350
            ,editor: { xtype: 'textfield' }
        }]
		// форма для поиска
		,tbar:[{
			xtype: 'textfield'
			,id: 'ncforms-search-filter'
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
		   text: ('Create new form')
		   ,handler: { xtype: 'ncforms-window-ncform-create' ,blankValues: true }
		   ,listeners: {
				statesave: function() {
					console.log(1);
				}
			}
		}]
    });
    NcForms.grid.NcForms.superclass.constructor.call(this,config)
};
Ext.extend(NcForms.grid.NcForms,MODx.grid.Grid,{
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
			text: ('Update form')
			,handler: this.updateNcForm
		},'-',{
			text: ('Remove form')
			,handler: this.removeNcForm
		},'-',{
			text: ('Edit fields')
			,handler: this.editNcFields
		},'-',{
			text: ('View sent data')
			,handler: this.viewSentNcFields
		}];
		this.addContextMenuItem(m);
		return true;
	}
	// обработчкик кнопки обновить, вызываем из меню
	,updateNcForm: function(btn,e) {
		if (!this.updateNcFormWindow) {
			this.updateNcFormWindow = MODx.load({
				xtype: 'ncforms-window-ncform-update'
				,record: this.menu.record
				,listeners: {
					'success': {fn:this.refresh,scope:this}
				}
			});
		} else {
			this.updateNcFormWindow.setValues(this.menu.record);
		}
		this.updateNcFormWindow.show(e.target);
	}
	// обработчкик кнопки удалить, вызываем из меню
	,removeNcForm: function() {
		MODx.msg.confirm({
			title: ('ncforms.ncform_remove')
			,text: ('ncforms.ncform_remove_confirm')
			,url: this.config.url
			,params: {
				action: 'mgr/ncform/remove'
				,id: this.menu.record.id
			}
			,listeners: {
				'success': {fn:this.refresh,scope:this}
			}
		});
	}
	// обработчкик кнопки редактировать поля формы, вызываем из меню
	,editNcFields: function(btn,e) {
		var id = this.menu.record.id;
		window.location.href = '?a=' + MODx.action['ncforms:index'] + '&action=fields&id=' + id;
	}
	// обработчкик кнопки обзора отправленных форм, вызываем из меню
	,viewSentNcFields: function(btn,e) {
		var id = this.menu.record.id;
		window.location.href = '?a=' + MODx.action['ncforms:index'] + '&action=viewsent&id=' + id;
	}
});
Ext.reg('ncforms-grid-ncforms',NcForms.grid.NcForms);