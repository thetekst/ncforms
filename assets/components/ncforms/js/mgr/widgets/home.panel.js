NcForms.panel.Home = function(config) {
    config = config || {};
    Ext.apply(config,{
        border: false
        ,baseCls: 'modx-formpanel'
        ,items: [{
            html: '<h2>'+_('ncforms.management')+'</h2>'
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
				,id: 'ncforms'
				,items: [{
					html: '<p>'+('Form plugin')+'</p><br />'
					,border: false
				},{
				   xtype: 'ncforms-grid-ncforms'
				   ,preventRender: true
				}]
			}]
		}]
    });
    NcForms.panel.Home.superclass.constructor.call(this,config);
};
Ext.extend(NcForms.panel.Home,MODx.Panel);
Ext.reg('ncforms-panel-home',NcForms.panel.Home);