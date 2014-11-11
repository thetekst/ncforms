NcForms.panel.ViewSent = function(config) {
    config = config || {};
    Ext.apply(config,{
        border: false
        ,baseCls: 'modx-formpanel'
        ,items: [{
            html: '<h2>'+('Data management')+'</h2>'
            ,border: false
            ,cls: 'modx-page-header'
        },{
            xtype: 'modx-tabs'
            ,bodyStyle: 'padding: 10px'
            ,defaults: { border: true ,autoHeight: true }
            ,border: true
            ,items: [{
                title: ('General')
                ,defaults: { autoHeight: true }
                ,id: 'ncviewsent'
                ,items: [{
                    html: '<p>'+('View sent data')+'</p><br />'
                    ,border: false
                },{
				   xtype: 'ncforms-grid-ncviewsent'
				   ,preventRender: true
				}]
            }]
        }]
    });
    NcForms.panel.ViewSent.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.panel.ViewSent,MODx.Panel);
Ext.reg('ncforms-panel-viewsent',NcForms.panel.ViewSent);