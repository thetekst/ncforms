Ext.onReady(function() {MODx.load({ xtype: 'ncforms-page-workspace'});});

NcForms.page.Workspace = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        components: [{
            xtype: 'ncforms-panel-home'
            ,id: 'ncforms-panel-home'
            ,renderTo: 'ncforms-panel-workspace-div' // результат поместить в контейнер с ID='ncforms-panel-workspace-div'
        }]
    });
    NcForms.page.Workspace.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.page.Workspace,MODx.Component);
Ext.reg('ncforms-page-workspace',NcForms.page.Workspace);