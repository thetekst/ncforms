var NcForms = function(config) {
    config = config || {};
    NcForms.superclass.constructor.call(this,config);
};
Ext.extend(NcForms,Ext.Component,{
    page:{},window:{},grid:{},tree:{},panel:{},combo:{},config: {}
});
Ext.reg('ncforms',NcForms);
NcForms = new NcForms();