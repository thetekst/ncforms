<?php
/**
 * Этот класс нам будет полезен тем, что в нем мы можем определить некоторые основные пути, 
 * а также методы, которые будем использовать в нашем компоненте.
 */
class NcForms {
    public $modx;
    public $config = array();
	
    function __construct(modX &$modx,array $config = array()) {
        $this->modx =& $modx;
 
        $basePath = $this->modx->getOption('ncforms.core_path',$config,$this->modx->getOption('core_path').'components/ncforms/'); // $modx->getOption()? С помощью этого метода можно узнать наши системные настройки.
        $assetsUrl = $this->modx->getOption('ncforms.assets_url',$config,$this->modx->getOption('assets_url').'components/ncforms/'); // $modx->getOption()? С помощью этого метода можно узнать наши системные настройки.
        $this->config = array_merge(array(
            'basePath' => $basePath,
            'corePath' => $basePath,
            'modelPath' => $basePath.'model/',
            'processorsPath' => $basePath.'processors/',
            'chunksPath' => $basePath.'elements/chunks/',
            'jsUrl' => $assetsUrl.'js/',
            'cssUrl' => $assetsUrl.'css/',
            'assetsUrl' => $assetsUrl,
            'connectorUrl' => $assetsUrl.'connector.php',
			'templatesPath' => $basePath . 'templates/',
        ),$config);
		
		// Это говорит xPDO, что мы хотим добавить xPDO пакет «ncforms», 
		// что позволит нам делать запросы к нашей пользовательской таблице.
		$this->modx->addPackage('ncforms',$this->config['modelPath']);
    }
	
	public function initialize($ctx = 'web') {
		switch ($ctx) {
			case 'mgr':
				// Загружаем файл локализации
				$this->modx->lexicon->load('ncforms:default');
				// Подгружаем Request
				if (!$this->modx->loadClass('ncformsControllerRequest',$this->config['modelPath'].'ncforms/request/',true,true)) {
				   return 'Could not load controller request handler.';
				}
				$this->request = new ncformsControllerRequest($this);
				return $this->request->handleRequest();
			break;
		}
		return true;
	}
	
	/**
	 * Метод для поиска чанков в каталоге /elements/chunks/
	 */
	public function getChunk($name,$properties = array()) {
		$chunk = null;
		if (!isset($this->chunks[$name])) {
			$chunk = $this->_getTplChunk($name);
			if (empty($chunk)) {
				$chunk = $this->modx->getObject('modChunk',array('name' => $name));
				if ($chunk == false) return false;
			}
			$this->chunks[$name] = $chunk->getContent();
		} else {
			$o = $this->chunks[$name];
			$chunk = $this->modx->newObject('modChunk');
			$chunk->setContent($o);
		}
		$chunk->setCacheable(false);
		return $chunk->process($properties);
	}
	
	/**
	 * Получаем шаблон чанка
	 */
	private function _getTplChunk($name,$postfix = '.chunk.tpl') {
		$chunk = false;
		$f = $this->config['chunksPath'].strtolower($name).$postfix;
		if (file_exists($f)) {
			$o = file_get_contents($f);
			$chunk = $this->modx->newObject('modChunk');
			$chunk->set('name',$name);
			$chunk->setContent($o);
		}
		return $chunk;
	}
}