<?php
$isLimit = !empty($scriptProperties['limit']);
$start = $modx->getOption('start',$scriptProperties,0);
$limit = $modx->getOption('limit',$scriptProperties,10);
$sort = $modx->getOption('sort',$scriptProperties,'id');
$dir = $modx->getOption('dir',$scriptProperties,'ASC');
$query = $modx->getOption('query',$scriptProperties,'');
 
/* build query */
$c = $modx->newQuery('NcForm');
if (!empty($query)) {
    $c->where(array(
        'name:LIKE' => '%'.$query.'%',
        'OR:id:LIKE' => '%'.$query.'%',
    ));
}
$count = $modx->getCount('NcForm',$c);
$c->sortby($sort,$dir);
if ($isLimit) $c->limit($limit,$start);
$ncforms = $modx->getIterator('NcForm', $c);
 
/* iterate */
$list = array();
foreach ($ncforms as $ncform) {
    $ncformArray = $ncform->toArray();
    $list[]= $ncformArray;
}
// file_put_contents('log.txt',"---\n".var_export($list,true)."\n---\n\n", FILE_APPEND);
return $this->outputArray($list,$count);