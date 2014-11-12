<?php
// file_put_contents('log.txt',"---\n".var_export($scriptProperties,true)."\n---\n\n", FILE_APPEND);
/* get NcFormField */
if (empty($scriptProperties['id'])) return $modx->error->failure($modx->lexicon('ncforms.ncfields_err_ns'));
$ncfields = $modx->getObject('NcFormField', $scriptProperties['id']);
if (empty($ncfields)) return $modx->error->failure($modx->lexicon('ncforms.ncfields_err_nf'));

// set 'required'
$scriptProperties['required'] = !empty($scriptProperties['required']) ? 1 : 0;
// set 'multiple'
$scriptProperties['multiple'] = !empty($scriptProperties['multiple']) ? 1 : 0;

/* set NcFormField fields */
$ncfields->fromArray($scriptProperties);

/* save NcFormField */
if ($ncfields->save() == false) {
    return $modx->error->failure($modx->lexicon('ncforms.ncfields_err_save'));
}
 
return $modx->error->success('',$ncfields);