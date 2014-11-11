NcForms.window.viewNcViewSent = function(config) {
    config = config || {};
	config.id = Ext.id();
    Ext.applyIf(config,{
        title: ('ncforms.ncviewsent_view')
        ,url: NcForms.config.connectorUrl
        ,baseParams: {
            action: 'mgr/ncform/viewSent'
        }
    });
    NcForms.window.viewNcViewSent.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.window.viewNcViewSent,MODx.Window);
Ext.reg('ncforms-window-ncviewsent-view',NcForms.window.viewNcViewSent);