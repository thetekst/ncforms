NcForms.window.UpdateNcFields = function(config) {
    config = config || {};
	config.id = Ext.id();
    Ext.applyIf(config,{
        title: ('Update field')
        ,url: NcForms.config.connectorUrl
        ,baseParams: {
            action: 'mgr/ncform/updateFields'
        }
        ,fields: [{
				xtype: 'hidden'
				,name: 'id'
			},{
				xtype: 'ncforms-combo-type'
				,id: 'ncforms-types-' + config.id
				,fieldLabel: ('Type')
				,name: 'type'
				,hiddenName: 'type'
				,anchor: '100%'
				,value: 'text'
				,listeners: {
					'select': { fn: this.fieldSets, scope: this }
					// ,'render': { fn: this.fieldSets, scope: this }
				}
			},{
				xtype: 'textfield'
				,id: 'ncforms.label-' + config.id
				,fieldLabel: ('Label')
				,name: 'label'
				,width: 300
			},{
				xtype: 'textfield'
				,fieldLabel: ('Input value')
				,name: 'input_value'
				,width: 300
			},{
				xtype: 'textfield'
				,id: 'ncforms.input_default_value-' + config.id
				,fieldLabel: ('Input default value')
				,name: 'input_default_value'
				,width: 300
			},{
				xtype: 'textfield'
				,id: 'ncforms.placeholder-' + config.id
				,fieldLabel: ('Placeholder')
				,name: 'placeholder'
				,width: 300
			},{
				xtype: 'checkbox'
				,id: 'ncforms.multiple-' + config.id
				,fieldLabel: ('Multiple')
				,name: 'multiple'
				,anchor: '100%'
			},{
				xtype: 'checkbox'
				,id: 'ncforms.input_validate-' + config.id
				,fieldLabel: ('Input validate')
				,name: 'input_validate'
				,anchor: '100%'
			}
		]
    });
    NcForms.window.UpdateNcFields.superclass.constructor.call(this,config);
	
	/**
     * When form shows set default values (show/hide)
     */
    this.on('show', function () {
		var typeField = Ext.getCmp('ncforms-types-' + this.config.id);
		this.fieldSets(typeField);
    });
};
Ext.extend(NcForms.window.UpdateNcFields,MODx.Window, {
	fieldSets: function (field, record, i) {
        var placeholder 		= Ext.getCmp('ncforms.placeholder-' + this.config.id);
        var multiple 			= Ext.getCmp('ncforms.multiple-' + this.config.id);
        var inputValidate 		= Ext.getCmp('ncforms.input_validate-' + this.config.id);
        var inputDefaultValue 	= Ext.getCmp('ncforms.input_default_value-' + this.config.id);
		var label 				= Ext.getCmp('ncforms.label-' + this.config.id);
		
		switch (field.value) {
		
			case 'select':
				placeholder.hide();
				multiple.show();
				inputValidate.show();
				inputDefaultValue.show();
				label.show();
				break;
				
			case 'checkbox':	
			case 'radio':
				placeholder.hide();
				multiple.hide();
				inputValidate.show();
				inputDefaultValue.show();
				label.show();
				break;
			case 'hidden':
				placeholder.hide();
				multiple.hide();
				inputValidate.hide();
				inputDefaultValue.hide();
				label.hide();
				break;
				
			default:
				// text, textarea
                placeholder.show();
				multiple.hide();
				inputValidate.show();
				inputDefaultValue.hide();
				label.show();
		}
	}
});
Ext.reg('ncforms-window-ncfield-update',NcForms.window.UpdateNcFields);