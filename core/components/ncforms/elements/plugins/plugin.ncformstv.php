<?php
/**
 * Handles plugin events for NcForms Custom TV
 *
 * @package ncforms
 */
$corePath = $modx->getOption('ncforms.core_path', null, $modx->getOption('core_path') . 'components/ncforms/');
$modx->lexicon->load('ncforms:tv');

switch ($modx->event->name) {
    case 'OnTVInputRenderList':
        $modx->event->output($corePath.'processors/mgr/tv/input/');
        break;
    /*case 'OnTVOutputRenderList':
        $modx->event->output($corePath.'processors/mgr/tv/output/');
        break;
    case 'OnTVInputPropertiesList':
        //$modx->event->output($corePath.'processors/mgr/tv/input/options/');
        break;
    case 'OnTVOutputRenderPropertiesList':
         $modx->event->output($corePath.'processors/mgr/tv/output/options/');
        break;*/
}
return;