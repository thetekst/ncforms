<?php
$chnks = array(
    'formTpl' => 'Form Template Layout',
    'recaptcha' => 'Recaptcha Template Layout',
	'emailTpl' => '',
	'inputcheckbox' => '',
	'inputcontrolswrapper' => '',
	'inputhidden' => '',
	'inputradio' => '',
	'inputselect' => '',
	'inputselectoption' => '',
	'inputtext' => '',
	'inputtextarea' => '',
	'inputwrapper' => '',
);

$chunks = array();
$i = 0;

foreach($chnks as $cn => $cdesc) {
    $i++;
    $cfilename = strtolower($cn);
    $chunks[$i]= $modx->newObject('modChunk');
    $chunks[$i]->fromArray(array(
        'id' => $i,
        'name' => $cn,
        'description' => $cdesc,
        'snippet' => file_get_contents($sources['chunks']. $cfilename . '.chunk.tpl'),
    ), '', true, true);
}

return $chunks;