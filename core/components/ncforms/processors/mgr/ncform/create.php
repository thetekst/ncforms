<?php
// file_put_contents('log.txt',"---\n".var_export($scriptProperties,true)."\n---\n\n", FILE_APPEND);
if (empty($scriptProperties['name'])) {
    $modx->error->addField('name',$modx->lexicon('ncforms.ncform_err_ns_name'));
} else {
    $alreadyExists = $modx->getObject('NcForm',array('name' => $scriptProperties['name']));
    if ($alreadyExists) {
        $modx->error->addField('name',$modx->lexicon('ncforms.ncform_err_ae'));
    }
}
 
if ($modx->error->hasError()) { return $modx->error->failure(); }
 
$ncform = $modx->newObject('NcForm');

// set 'spam_hook'
$scriptProperties['spam_hook'] = !empty($scriptProperties['spam_hook']) ? 1 : 0;
// set 'recaptcha_hook'
$scriptProperties['recaptcha_hook'] = !empty($scriptProperties['recaptcha_hook']) ? 1 : 0;

$ncform->fromArray($scriptProperties);
 
if ($ncform->save() == false) {
    return $modx->error->failure($modx->lexicon('ncforms.ncform_err_save'));
}
 
return $modx->error->success('',$ncform);