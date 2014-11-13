<?php
$xpdo_meta_map['NcFormField']= array (
  'package' => 'ncforms',
  'version' => NULL,
  'table' => 'ncforms_fields',
  'extends' => 'xPDOObject',
  'fields' => 
  array (
    'id' => NULL,
    'form_id' => NULL,
    'label' => NULL,
    'placeholder' => NULL,
    'multiple' => 0,
    'required' => 0,
    'input_name' => NULL,
    'input_value' => NULL,
    'input_default_value' => NULL,
    'input_wrapper_tag_id' => NULL,
    'type' => 'text',
    'order_id' => 0,
    'error_msg' => NULL,
    'validation' => '',
  ),
  'fieldMeta' => 
  array (
    'id' => 
    array (
      'dbtype' => 'int',
      'precision' => '11',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'index' => 'pk',
      'generated' => 'native',
    ),
    'form_id' => 
    array (
      'dbtype' => 'int',
      'precision' => '11',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => true,
    ),
    'label' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'placeholder' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'multiple' => 
    array (
      'dbtype' => 'int',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'required' => 
    array (
      'dbtype' => 'int',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 0,
    ),
    'input_name' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'input_value' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'input_default_value' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'input_wrapper_tag_id' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'type' => 
    array (
      'dbtype' => 'enum',
      'phptype' => 'string',
      'null' => false,
      'precision' => '\'text\',\'textarea\',\'select\',\'checkbox\',\'radio\',\'hidden\'',
      'default' => 'text',
    ),
    'order_id' => 
    array (
      'dbtype' => 'int',
      'precision' => '10',
      'phptype' => 'integer',
      'null' => true,
      'default' => 0,
    ),
    'error_msg' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => false,
    ),
    'validation' => 
    array (
      'dbtype' => 'enum',
      'phptype' => 'string',
      'null' => false,
      'precision' => '\'\',\'email\',\'isNumber\'',
      'default' => '',
    ),
  ),
  'indexes' => 
  array (
    'order_id' => 
    array (
      'alias' => 'order_id',
      'primary' => false,
      'unique' => false,
      'type' => 'BTREE',
      'columns' => 
      array (
        'order_id' => 
        array (
          'length' => '',
          'collation' => 'A',
          'null' => false,
        ),
      ),
    ),
    'PRIMARY' => 
    array (
      'alias' => 'PRIMARY',
      'primary' => true,
      'unique' => true,
      'columns' => 
      array (
        'id' => 
        array (
          'collation' => 'A',
          'null' => false,
        ),
      ),
    ),
  ),
  'aggregates' => 
  array (
    'Form' => 
    array (
      'class' => 'NcForm',
      'local' => 'form_id',
      'foreign' => 'id',
      'cardinality' => 'one',
      'owner' => 'foreign',
    ),
  ),
);
