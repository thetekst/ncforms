<?php
$isLimit = !empty($scriptProperties['limit']);
$start = $modx->getOption('start',$scriptProperties,0);
$limit = $modx->getOption('limit',$scriptProperties,10);
$sort = $modx->getOption('sort',$scriptProperties,'sent_on');
$dir = $modx->getOption('dir',$scriptProperties,'DESC');
$query = $modx->getOption('query',$scriptProperties,'');
$id = $modx->getOption('id',$scriptProperties,'');

if(!empty($id)) {
	/* build query */
	$c = $modx->newQuery('NcFormSentData');
	$setQuery = array('NcFormSentData.form_id' => $id);
	
	if (!empty($query)) {
		array_push($setQuery, array(
			'id:LIKE' => '%'.$query.'%'
		));
	}
	
	$c->where($setQuery);
	$c->sortby('NcFormSentData.'.$sort, $dir);
	$count = $modx->getCount('NcFormSentData',$c);
	
	if ($isLimit) $c->limit($limit,$start);
	$ncforms = $modx->getIterator('NcFormSentData', $c);
	
	/* iterate */
	$list = array();
	foreach ($ncforms as $ncform) {
		$ncformArray = $ncform->toArray();
		$list[]= $ncformArray;
		// file_put_contents('log.txt',"---\n".var_export($ncformArray,true)."\n---\n\n", FILE_APPEND);
	}
	
	return $this->outputArray($list,$count);
}