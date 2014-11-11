<?php
/* get NcForm */
if (empty($scriptProperties['id'])) return $modx->error->failure($modx->lexicon('ncforms.ncform_err_ns'));
$ncform = $modx->getObject('NcForm',$scriptProperties['id']);
if (empty($ncform)) return $modx->error->failure($modx->lexicon('ncforms.ncform_err_nf'));

// set 'spam_hook'
$scriptProperties['spam_hook'] = !empty($scriptProperties['spam_hook']) ? 1 : 0;
// set 'recaptcha_hook'
$scriptProperties['recaptcha_hook'] = !empty($scriptProperties['recaptcha_hook']) ? 1 : 0;

/* set NcForm fields */
$ncform->fromArray($scriptProperties);
 
/* save NcForm */
if ($ncform->save() == false) {
    return $modx->error->failure($modx->lexicon('ncforms.ncform_err_save'));
}
 
return $modx->error->success('',$ncform);