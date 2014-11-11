<?php
/**
 * Formz
 *
 * Loads the home page.
 *
 * @package Formz
 * @subpackage controllers
 */
// file_put_contents('log.txt',"---\n".var_export(get_defined_constants(true),true)."\n---\n\n", FILE_APPEND);

// Удалить эти 2 строки, если нужно будет запаковать компонент. Т.к. в formz этих строк нет. BEGIN
/*if(!defined('NCFORMS_CORE_PATH_COMPONENTS')) {
	define( 'NCFORMS_CORE_PATH_COMPONENTS' , str_replace( '\\', '/' , realpath( dirname(dirname( __FILE__ ) )) ) . '/' );
}
require_once NCFORMS_CORE_PATH_COMPONENTS . 'index.class.php';*/
// Удалить эти 2 строки, если нужно будет запаковать компонент. Т.к. в formz этих строк нет. END

class NcformsWorkspaceManagerController extends NcformsBaseManagerController {
    public function process(array $scriptProperties = array()) {
		
    }

    public function getPageTitle() { return $this->modx->lexicon('ncforms'); }

    public function loadCustomCssJs() {
        $this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/ncforms.grid.js');
        $this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/home.panel.js');
		$this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/combo.panel.js');
		$this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/ncforms.update.js');
		$this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/ncforms.create.js');
        // last load
		$this->addLastJavascript($this->ncforms->config['jsUrl'].'mgr/workspace/index.js');
    }

    public function getTemplateFile() { return $this->ncforms->config['templatesPath'] . 'workspace.tpl'; }
}
