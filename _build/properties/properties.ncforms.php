<?php
$properties = array(
    array(
        'name' => 'formTpl',
        'desc' => 'prop_ncforms.formTpl_desc',
        'type' => 'textfield',
        'options' => '',
        'value' => 'formTpl',
        'lexicon' => 'ncforms:properties',
    ),
    array(
        'name' => 'id',
        'desc' => 'prop_ncforms.id_desc',
        'type' => 'textfield',
        'options' => '',
        'value' => null,
        'lexicon' => 'ncforms:properties',
    ),
    array(
        'name' => 'sort',
        'desc' => 'prop_ncforms.sort_desc',
        'type' => 'textfield',
        'options' => '',
        'value' => 'order_id',
        'lexicon' => 'ncforms:properties',
    ),
    array(
        'name' => 'dir',
        'desc' => 'prop_ncforms.dir_desc',
        'type' => 'list',
        'options' => array(
            array('text' => 'prop_ncforms.ascending','value' => 'ASC'),
            array('text' => 'prop_ncforms.descending','value' => 'DESC'),
        ),
        'value' => 'ASC',
        'lexicon' => 'ncforms:properties',
    ),
);
return $properties;