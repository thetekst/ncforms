<?php
/*if (empty($scriptProperties['input_name'])) {
    $modx->error->addField('input_name',$modx->lexicon('ncforms.ncform_err_ns_name'));
} else {
	// file_put_contents('log.txt',"---\n".var_export($scriptProperties,true)."\n---\n\n", FILE_APPEND);
    $alreadyExists = $modx->getObject('NcFormField', array('input_name' => $scriptProperties['input_name'], 'form_id' => $scriptProperties['form_id']));
    if ($alreadyExists) {
        $modx->error->addField('input_name',$modx->lexicon('ncforms.ncform_err_ae'));
    }
}*/

if ($modx->error->hasError()) { return $modx->error->failure(); }
$ncform = $modx->newObject('NcFormField');

// set 'input_validate'
$scriptProperties['input_validate'] = !empty($scriptProperties['input_validate']) ? 1 : 0;
// set 'multiple'
$scriptProperties['multiple'] = !empty($scriptProperties['multiple']) ? 1 : 0;

$ncform->fromArray($scriptProperties);
 
if ($ncform->save() == false) {
    return $modx->error->failure($modx->lexicon('ncforms.ncform_err_save'));
}
return $modx->error->success('',$ncform);
// file_put_contents('log.txt',"---\n".var_export($scriptProperties,true)."\n---\n\n", FILE_APPEND);