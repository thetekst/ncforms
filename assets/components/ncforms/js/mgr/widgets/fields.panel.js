NcForms.panel.FieldsPanel = function(config) {
    config = config || {};
    Ext.apply(config,{
        border: false
        ,baseCls: 'modx-formpanel'
        ,items: [{
            html: '<h2>'+('Fields management')+'</h2>'
            ,border: false
            ,cls: 'modx-page-header'
        },{
            xtype: 'modx-tabs'
            ,bodyStyle: 'padding: 10px'
            ,defaults: { border: true ,autoHeight: true }
            ,border: true
            ,items: [{
                title: ('Fields')
                ,defaults: { autoHeight: true }
                ,id: 'ncfields'
                ,items: [{
                    html: '<p>'+('This field manager')+'</p><br />'
                    ,border: false
                },{
				   xtype: 'ncforms-grid-ncfields'
				   ,preventRender: true
				}]
            }]
        }]
    });
    NcForms.panel.FieldsPanel.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.panel.FieldsPanel,MODx.Panel);
Ext.reg('ncforms-panel-fields',NcForms.panel.FieldsPanel);