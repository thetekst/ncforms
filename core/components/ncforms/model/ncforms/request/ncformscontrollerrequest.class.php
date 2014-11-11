<?php
require_once MODX_CORE_PATH . 'model/modx/modrequest.class.php';
class ncformsControllerRequest extends modRequest {
    public $ncforms = null;
    public $actionVar = 'action';
    public $defaultAction = 'index';
	
    function __construct(NcForms &$ncforms) {
        parent :: __construct($ncforms->modx);
        $this->ncforms =& $ncforms;
    }
 
    public function handleRequest() {
        $this->loadErrorHandler();
 
        /* save page to manager object. allow custom actionVar choice for extending classes. */
        $this->action = isset($_REQUEST[$this->actionVar]) ? $_REQUEST[$this->actionVar] : $this->defaultAction;
		
        $modx =& $this->modx;
        $ncforms =& $this->ncforms;
        $viewHeader = include $this->ncforms->config['corePath'].'controllers/mgr/header.php';
		
        $f = $this->ncforms->config['corePath'].'controllers/mgr/'.$this->action.'.php';
        if (file_exists($f)) {
            $viewOutput = include $f;
        } else {
            $viewOutput = 'Controller not found: '.$f;
        }
 
        return $viewHeader.$viewOutput;
    }
}