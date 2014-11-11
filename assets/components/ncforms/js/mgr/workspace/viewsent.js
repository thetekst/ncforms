Ext.onReady(function() {MODx.load({ xtype: 'ncforms-page-viewsent'});});

NcForms.page.ViewSent = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        components: [{
            xtype: 'ncforms-panel-viewsent'
            ,renderTo: 'ncforms-panel-viewsent-div' // результат поместить в контейнер с ID='ncforms-panel-viewsent-div'
        }]
    });
    NcForms.page.ViewSent.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.page.ViewSent,MODx.Component);
Ext.reg('ncforms-page-viewsent',NcForms.page.ViewSent);