Ext.onReady(function() {MODx.load({ xtype: 'ncforms-page-fields'});});

NcForms.page.FieldsPanel = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        components: [{
            xtype: 'ncforms-panel-fields'
            ,renderTo: 'ncforms-panel-fields-div' // результат поместить в контейнер с ID='ncforms-panel-fields-div'
        }]
    });
    NcForms.page.FieldsPanel.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.page.FieldsPanel,MODx.Component);
Ext.reg('ncforms-page-fields',NcForms.page.FieldsPanel);