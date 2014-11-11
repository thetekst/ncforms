<?php
/**
 * запускает все действо при открытии раздела в админке, инклудит ./controllers/index.php
 */

// return include NCFORMS_CORE_PATH.'components/ncforms/controllers/index.php';

/**
 * 
 */
require_once dirname(__FILE__) . '/model/ncforms/ncforms.class.php';
/**
 * @package 
 */

class IndexManagerController extends modExtraManagerController {
    public static function getDefaultController() { return 'workspace'; }
}

abstract class NcformsBaseManagerController extends modManagerController {
    /** @var  $ncforms */
    public $ncforms;
	
    public function initialize() {
        $this->ncforms = new NcForms($this->modx);
		
        $this->addJavascript($this->ncforms->config['jsUrl'] . 'mgr/ncforms.js');
        $this->addHtml('<script type="text/javascript">
        Ext.onReady(function() {
            NcForms.config = ' . $this->modx->toJSON($this->ncforms->config) . ';
            NcForms.config.connector_url = "' . $this->ncforms->config['connectorUrl'] . '";
        });
        </script>');

        return parent::initialize();
    }

    public function getLanguageTopics() {
        return array('ncforms:default');
    }

    public function checkPermissions() { return true; }
}
// file_put_contents('log.txt',"---\n".var_export('index.class.php',true)."\n---\n\n", FILE_APPEND);