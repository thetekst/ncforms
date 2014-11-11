<?php
$ncfs = $modx->getService('ncforms', 'NcForms', $modx->getOption('ncforms.core_path',null,$modx->getOption('core_path').'components/ncforms/').'model/ncforms/',$scriptProperties);
if (!($ncfs instanceof NcForms)) return '';

/* если таблица не существует - создать таблицу */
$tablexists = $modx->query("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = '".$modx->getOption('dbname')."' AND table_name = '".$modx->getOption('table_prefix')."ncforms'");

if(!$tablexists->fetch(PDO::FETCH_COLUMN)){
    $m = $modx->getManager();
    $created1 = $m->createObjectContainer('NcForm');
    $created2 = $m->createObjectContainer('NcFormField');
    $created3 = $m->createObjectContainer('NcFormSentData');
	$result = $created1 ? '<span style="color:#008e17">NcForm created.</span><br>' : '<span style="color:#ff0000">NcForm not created.</span><br>';
	$result .= $created2 ? '<span style="color:#008e17">NcFormField created.<br>' : '<span style="color:#ff0000">NcFormField not created.</span><br>';
	$result .= $created3 ? '<span style="color:#008e17">NcFormSentData created.<br>' : '<span style="color:#ff0000">NcFormSentData not created.</span><br>';
	return $result;
}

return 'Таблицы уже созданы';

// [[!NcFormsSnippet? &file=`[[++ncforms.core_path]]elements/snippets/create.db.php`]]