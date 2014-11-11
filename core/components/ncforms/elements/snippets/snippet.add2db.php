<?php
$allFormFields = $hook->getValues();
$formId = $allFormFields['FORM_ID'];
$success_message = $allFormFields['NCFORM_SUCCESS_MESSAGE'];
unset($allFormFields['NCFORM_SUCCESS_MESSAGE']);
unset($allFormFields['recaptcha_challenge_field']);
unset($allFormFields['recaptcha_response_field']);
unset($allFormFields['nospam']);
unset($allFormFields['nospam:blank']);

$json = $modx->toJSON($allFormFields);
 
$ncformssentdata = $modx->newObject('NcFormSentData');
$arrayVal = array('form_id' => $formId, 'sent_on' => time(), 'data' => $json);
$ncformssentdata->fromArray($arrayVal);

if ($ncformssentdata->save()){
    if(!empty($success_message)) $_SESSION['SUCCESS_MSG'] = $success_message;
    return true;
}else{
    return false;
}