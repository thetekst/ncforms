<?php
/**
 * Добавление встроенного редактирования
 */
 
/* parse JSON */
if (empty($scriptProperties['data'])) return $modx->error->failure('Invalid data.');
$_DATA = $modx->fromJSON($scriptProperties['data']);
if (!is_array($_DATA)) return $modx->error->failure('Invalid data.');
 
/* get obj */
if (empty($_DATA['id'])) return $modx->error->failure($modx->lexicon('ncforms.ncform_err_ns'));
$ncform = $modx->getObject('NcFormField',$_DATA['id']);
if (empty($ncform)) return $modx->error->failure($modx->lexicon('ncforms.ncform_err_nf'));
 
$ncform->fromArray($_DATA);
 
/* save */
if ($ncform->save() == false) {
    return $modx->error->failure($modx->lexicon('ncforms.ncform_err_save'));
}
 
return $modx->error->success('',$ncform);