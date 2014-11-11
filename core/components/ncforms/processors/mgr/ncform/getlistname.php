<?php
$isLimit = !empty($scriptProperties['limit']);
$start = $modx->getOption('start',$scriptProperties,0);
$limit = $modx->getOption('limit',$scriptProperties,10);
$sort = $modx->getOption('sort',$scriptProperties,'name');
$dir = $modx->getOption('dir',$scriptProperties,'ASC');
$query = $modx->getOption('query',$scriptProperties,'');
$id = $modx->getOption('id',$scriptProperties,'');

if(!empty($id)) {
	/* build query */
	$c = $modx->newQuery('NcFormField');
	$setQuery = array('NcFormField.form_id' => $id);
	
	if (!empty($query)) {
		array_push($setQuery, array(
			'label:LIKE' => '%'.$query.'%',
			'OR:type:LIKE' => '%'.$query.'%',
		));
	}
	
	$c->where($setQuery);
	$c->sortby('NcFormField.order_id','ASC');
	$count = $modx->getCount('NcFormField',$c);
	
	if ($isLimit) $c->limit($limit,$start);
	$ncforms = $modx->getIterator('NcFormField', $c);
	
	/* iterate */
	$list = array();
	foreach ($ncforms as $ncform) {
		$ncformArray = $ncform->toArray();
		$list[]= $ncformArray;
	}
	
	return $this->outputArray($list,$count);
}
// file_put_contents('log.txt',"---\n".var_export(1,true)."\n---\n\n", FILE_APPEND);