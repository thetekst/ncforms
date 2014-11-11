<?php
/**
 * Процессоры это то место, где вы будете модифицировать вашу базу данных. 
 * 
 * Коннекторы - это шлюзы к этим процессорам. Они ограничивают доступ, проверяют права доступа 
 * и направляют запросы к соответствующем процессору. Они также ограничивают точки доступа к 
 * вашей модели для безопасности вашего приложения. Думайте о вашей модели как о крепости и о 
 * коннекторах как о варотах в стенах вокруг вашей крепости. Вы хотите, чтобы эти ворота 
 * охранялись и их было небольшое количество.
 */

require_once dirname(dirname(dirname(dirname(__FILE__)))).'/config.core.php';
require_once MODX_CORE_PATH.'config/'.MODX_CONFIG_KEY.'.inc.php';
require_once MODX_CONNECTORS_PATH.'index.php';
 
$corePath = $modx->getOption('ncforms.core_path',null,$modx->getOption('core_path').'components/ncforms/');
require_once $corePath.'model/ncforms/ncforms.class.php';
$modx->ncforms = new NcForms($modx);
 
$modx->lexicon->load('ncforms:default');
 
/* handle request */
$path = $modx->getOption('processorsPath',$modx->ncforms->config,$corePath.'processors/');
$modx->request->handleRequest(array(
    'processors_path' => $path,
    'location' => '',
));