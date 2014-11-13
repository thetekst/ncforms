<?php
$xpdo_meta_map['NcForm']= array (
  'package' => 'ncforms',
  'version' => NULL,
  'table' => 'ncforms',
  'extends' => 'xPDOObject',
  'fields' => 
  array (
    'id' => NULL,
    'name' => NULL,
    'save_method' => 'database_email',
    'redirect_or_msg' => 'success_message',
    'email' => '',
    'success_message' => '',
    'spam_hook' => 1,
    'recaptcha_hook' => 1,
    'redirect_id' => 0,
    'identifier' => '',
    'hooks' => '',
    'action_button' => '',
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
    'name' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
    ),
    'save_method' => 
    array (
      'dbtype' => 'enum',
      'phptype' => 'string',
      'null' => false,
      'precision' => '\'database\',\'database_email\'',
      'default' => 'database_email',
    ),
    'redirect_or_msg' => 
    array (
      'dbtype' => 'enum',
      'phptype' => 'string',
      'null' => false,
      'precision' => '\'redirect\',\'success_message\'',
      'default' => 'success_message',
    ),
    'email' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
      'default' => '',
    ),
    'success_message' => 
    array (
      'dbtype' => 'text',
      'phptype' => 'string',
      'null' => true,
      'default' => '',
    ),
    'spam_hook' => 
    array (
      'dbtype' => 'int',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 1,
    ),
    'recaptcha_hook' => 
    array (
      'dbtype' => 'int',
      'precision' => '1',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => false,
      'default' => 1,
    ),
    'redirect_id' => 
    array (
      'dbtype' => 'int',
      'precision' => '11',
      'attributes' => 'unsigned',
      'phptype' => 'integer',
      'null' => true,
      'default' => 0,
    ),
    'identifier' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => true,
      'default' => '',
    ),
    'hooks' => 
    array (
      'dbtype' => 'text',
      'precision' => '255',
      'phptype' => 'string',
      'null' => true,
      'default' => '',
    ),
    'action_button' => 
    array (
      'dbtype' => 'varchar',
      'precision' => '255',
      'phptype' => 'string',
      'null' => true,
      'default' => '',
    ),
  ),
  'indexes' => 
  array (
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
  'composites' => 
  array (
    'Fields' => 
    array (
      'class' => 'NcFormField',
      'local' => 'id',
      'foreign' => 'form_id',
      'cardinality' => 'many',
      'owner' => 'local',
    ),
  ),
);
