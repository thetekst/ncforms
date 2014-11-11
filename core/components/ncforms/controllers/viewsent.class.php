<?php
/**
 * Formz
 *
 * Loads the home page.
 *
 * @package Formz
 * @subpackage controllers
 */
// file_put_contents('log.txt',"---\n".var_export('workspace.class.php',true)."\n---\n\n", FILE_APPEND);

// Удалить эти 2 строки, если нужно будет запаковать компонент. Т.к. в formz этих строк нет. BEGIN
/*if(!defined('NCFORMS_CORE_PATH_COMPONENTS')) {
	define( 'NCFORMS_CORE_PATH_COMPONENTS' , str_replace( '\\', '/' , realpath( dirname(dirname( __FILE__ ) )) ) . '/' );
}
require_once NCFORMS_CORE_PATH_COMPONENTS . 'index.class.php';*/
// Удалить эти 2 строки, если нужно будет запаковать компонент. Т.к. в formz этих строк нет. END

class NcformsViewsentManagerController extends NcformsBaseManagerController {
    public function process(array $scriptProperties = array()) {
		
    }

    public function getPageTitle() { return $this->modx->lexicon('ncforms'); }

    public function loadCustomCssJs() {
        $this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/ncforms.grid.viewsent.js');
		$this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/viewsent.panel.js');
		$this->addJavascript($this->ncforms->config['jsUrl'].'mgr/widgets/ncforms.view.viewsent.js');
        // last load
		$this->addLastJavascript($this->ncforms->config['jsUrl'].'mgr/workspace/viewsent.js');
    }

    public function getTemplateFile() { return $this->ncforms->config['templatesPath'] . 'viewsent.tpl'; }
}
