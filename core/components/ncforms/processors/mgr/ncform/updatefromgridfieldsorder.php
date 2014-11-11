<?php
/**
 * Обновление поля order методом Drag and Drop
 */
 
/* parse JSON */
if (empty($scriptProperties['data'])) return $modx->error->failure('Invalid data.');
$formId = $modx->fromJSON($scriptProperties['form_id']);
$_DATA = $modx->fromJSON($scriptProperties['data']);
if (!is_array($_DATA)) return $modx->error->failure('Invalid data.');



foreach($_DATA as $data) {
	$id = $data['id'];
	
	
	if (empty($id)) return $modx->error->failure($modx->lexicon('ncforms.ncfields_err_ns'));
	$ncfields = $modx->getObject('NcFormField', array('id' => $id));
	if (empty($ncfields)) return $modx->error->failure($modx->lexicon('ncforms.ncfields_err_nf'));
	$tmp = $ncfields->toArray();
	$tmp['order_id'] = $data['order_id'];
	$ncfields->fromArray($tmp);
	
	/* save NcFormField */
	if ($ncfields->save() == false) {
		return $modx->error->failure($modx->lexicon('ncforms.ncfields_err_save'));
	}
}
return $modx->error->success('',$ncfields);