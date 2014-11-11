NcForms.combo.MethodNcForm = function(config) {
    config = config || {};
    Ext.applyIf(config,{
		name: 'save_method'
		,triggerAction: 'all'
		,lazyRender: true
		,hiddenName: 'save_method'
		,mode: 'local'
        ,store: new Ext.data.ArrayStore({
            id: 0
            ,fields: ['id','name']
            ,data: [
                // ['database', ('ncforms.form.method.dbonly')]
                // ,['database_email', ('ncforms.form.method.dbandemail')]
				['database', 'Database']
                ,['database_email', 'Database email']
            ]
        })
        ,displayField: 'name'
        ,valueField: 'id'
		,fields: ['id', 'name']
		,editable: false
		,value: 'database_email'
    });
    NcForms.combo.MethodNcForm.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.combo.MethodNcForm,MODx.combo.ComboBox);
Ext.reg('ncforms-combo-save-method',NcForms.combo.MethodNcForm);

/*******************************************************************************/

NcForms.combo.RedirectMsgNcForm = function(config) {
    config = config || {};
    Ext.applyIf(config,{
		name: 'redirect_or_msg'
		,triggerAction: 'all'
		,lazyRender: true
		,hiddenName: 'redirect_or_msg'
		,mode: 'local'
        ,store: new Ext.data.ArrayStore({
            id: 0
            ,fields: ['id','name']
            ,data: [
                // ['database', ('ncforms.form.method.dbonly')]
                // ,['database_email', ('ncforms.form.method.dbandemail')]
				['success_message', 'Success message']
                ,['redirect', 'Redirect']
            ]
        })
        ,displayField: 'name'
        ,valueField: 'id'
		,fields: ['id', 'name']
		,editable: false
		,value: 'success_message'
    });
    NcForms.combo.RedirectMsgNcForm.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.combo.RedirectMsgNcForm,MODx.combo.ComboBox);
Ext.reg('ncforms-combo-redirect-or-msg',NcForms.combo.RedirectMsgNcForm);

/*******************************************************************************/

NcForms.combo.TypeNcForm = function(config) {
    config = config || {};
    Ext.applyIf(config,{
		name: 'type'
		,triggerAction: 'all'
		,lazyRender: true
		,hiddenName: 'type'
		,mode: 'local'
        ,store: new Ext.data.ArrayStore({
            id: 0
            ,fields: ['id','name']
            ,data: [
                // ['text', ('ncforms.form.type.text')]
                // ,['textarea', ('ncforms.form.type.textarea')]
				['text', 'text']
                ,['textarea', 'textarea']
                ,['select', 'select']
                ,['hidden', 'hidden']
                ,['checkbox', 'checkbox']
                ,['radio', 'radio']
            ]
        })
        ,displayField: 'name'
        ,valueField: 'id'
		,fields: ['id', 'name']
		,editable: false
		,value: 'text'
    });
    NcForms.combo.TypeNcForm.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.combo.TypeNcForm,MODx.combo.ComboBox);
Ext.reg('ncforms-combo-type',NcForms.combo.TypeNcForm);