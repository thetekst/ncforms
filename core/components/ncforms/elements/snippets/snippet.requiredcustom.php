<?php
$isValue = (bool)$value;
$msg = !empty($param) ? $param : 'This is a required field.';
if (!$isValue) {
  $validator->addError($key, $msg);
}
return $isValue;