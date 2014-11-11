<?php
if (empty($scriptProperties['id'])) return $modx->error->failure($modx->lexicon('ncforms.ncform_err_ns'));
$ncform = $modx->getObject('NcForm',$scriptProperties['id']);
if (empty($ncform)) return $modx->error->failure($modx->lexicon('ncforms.ncform_err_nf'));
 
if ($ncform->remove() == false) {
    return $modx->error->failure($modx->lexicon('ncforms.ncform_err_remove'));
}
 
return $modx->error->success('',$ncform);