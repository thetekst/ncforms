<?php
$root = $modx->getOption('ncforms.core_path', null, $this->modx->getOption('core_path') . 'components/ncforms/');

return $modx->smarty->fetch($root . 'templates/elements/tv/renders/properties/ncforms.tpl');