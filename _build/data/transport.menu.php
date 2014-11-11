<?php
$action= $modx->newObject('modAction');
$action->fromArray(array(
    'id' => 1,
    'namespace' => 'ncforms',
    'parent' => 0,
    'controller' => 'index',
    'haslayout' => true,
    'lang_topics' => 'ncforms:default',
    'assets' => '',
),'',true,true);
 
$menu= $modx->newObject('modMenu');
$menu->fromArray(array(
    'text' => 'ncforms',
    'parent' => 'components',
    'description' => 'ncforms.desc',
    'icon' => 'images/icons/plugin.gif',
    'menuindex' => 0,
    'params' => '',
    'handler' => '',
),'',true,true);
$menu->addOne($action);
unset($menus);
 
return $menu;