// Окно создания формы, вызываем кнопкой
NcForms.window.CreateNcForm = function(config) {
    config = config || {};
	config.id = Ext.id();
    Ext.applyIf(config,{
        title: ('Create new form')
        ,url: NcForms.config.connectorUrl
        ,baseParams: {
            action: 'mgr/ncform/create'
        }
        ,fields: [{
            xtype: 'textfield'
            ,fieldLabel: ('Name')
            ,name: 'name'
            ,width: 300
        },{
            xtype: 'ncforms-combo-save-method'
			,id: 'ncforms-save-method-' + config.id
            ,fieldLabel: ('Save method')
            ,name: 'save_method'
			,hiddenName: 'save_method'
            ,width: 300
			,listeners: {
				'select': { fn: this.fieldSets, scope: this }
				// ,'render': { fn: this.fieldSets, scope: this }
			}
        },{
            xtype: 'textfield'
			,id: 'ncforms-email-' + config.id
            ,fieldLabel: ('Email')
            ,name: 'email'
			,hiddenName: 'email'
            ,width: 300
        },{
            xtype: 'ncforms-combo-redirect-or-msg'
			,id: 'ncforms-combo-redirect-or-msg-' + config.id
            ,fieldLabel: ('After submit')
            ,name: 'redirect_or_msg'
			,hiddenName: 'redirect_or_msg'
            ,width: 300
			,listeners: {
				'select': { fn: this.successMsg, scope: this }
				// ,'render': { fn: this.successMsg, scope: this }
			}
        },{
            xtype: 'textarea'
			,id: 'ncforms.success_message-' + config.id
            ,fieldLabel: ('Success message')
            ,name: 'success_message'
			,hiddenName: 'success_message'
            ,width: 300
        },{
            xtype: 'textfield'
			,id: 'ncforms.redirect_id-' + config.id
            ,fieldLabel: ('Redirect id')
            ,name: 'redirect_id'
			,hiddenName: 'redirect_id'
            ,width: 300
        },{
			xtype: 'checkbox'
			,id: 'ncforms.spam_hook-' + config.id
			,fieldLabel: ('Spam hook')
			,name: 'spam_hook'
			,anchor: '100%'
			,checked: true
		},{
			xtype: 'checkbox'
			,id: 'ncforms.recaptcha_hook-' + config.id
			,fieldLabel: ('Recaptcha hook')
			,name: 'recaptcha_hook'
			,anchor: '100%'
			,checked: true
		},{
            xtype: 'textfield'
            ,fieldLabel: ('Identifier')
            ,name: 'identifier'
            ,width: 300
        },{
            xtype: 'textfield'
            ,fieldLabel: ('Hooks')
            ,name: 'hooks'
            ,width: 300
        },{
            xtype: 'textfield'
            ,fieldLabel: ('Action button name')
            ,name: 'action_button'
            ,width: 300
        },{
            xtype: 'textarea'
            ,fieldLabel: ('Properties')
            ,name: 'properties'
            ,width: 300
			,hidden: true
        }]
    });
    NcForms.window.CreateNcForm.superclass.constructor.call(this,config);
	
	/**
     * When form shows set default values (show/hide)
     */
    this.on('show', function () {
		var email = Ext.getCmp('ncforms-save-method-' + this.config.id);
		var redirectOrMsg = Ext.getCmp('ncforms-combo-redirect-or-msg-' + this.config.id);
		this.fieldSets(email);
		this.successMsg(redirectOrMsg);
    });
};
Ext.extend(NcForms.window.CreateNcForm,MODx.Window, {
	fieldSets: function (field, record, i) {
        var email = Ext.getCmp('ncforms-email-' + this.config.id);
		
		switch (field.value) {
			
			case 'database':
				email.hide();
				// requires a non-empty value
				email.allowBlank = true;
				// requires value to be a valid email address format
				email.vtype = undefined;
				break;
				
			default:
				// database_email
                email.show();
				// requires a non-empty value
				email.allowBlank = false;
				// requires value to be a valid email address format
				email.vtype = 'email';
		}
	}
	,successMsg: function (field, record, i) {
        var successMsg = Ext.getCmp('ncforms.success_message-' + this.config.id);
        var redirectId = Ext.getCmp('ncforms.redirect_id-' + this.config.id);
		
		switch (field.value) {
			
			case 'redirect':
				successMsg.hide();
				redirectId.show();
				// requires a non-empty value
				redirectId.allowBlank = false;
				break;
				
			default:
				// success_message
                successMsg.show();
				redirectId.hide();
		}
	}
});
Ext.reg('ncforms-window-ncform-create',NcForms.window.CreateNcForm);