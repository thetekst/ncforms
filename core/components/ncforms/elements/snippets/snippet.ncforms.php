<?php
/**
 * @package ncforms
 * $modx->getOption()? С помощью этого метода можно узнать наши системные настройки.
 *
 * $modx->getService() загружает класс, создает экземпляр объекта, если он существует, и устанавливает его в $modx->ncforms, в этом случае (первый параметр, передаваемый в метод)
 */

/*ini_set("display_errors",1);
error_reporting(E_ALL);*/

// include classes
/* spl_autoload_register(function($class) {
	$path = dirname(__FILE__).'/classes/'.$class.'.php';
	if(is_file($path)) require_once($path);
}); */

// file_put_contents('log.txt',"---\n".var_export($formArray,true)."\n---\n\n", FILE_APPEND);

$ncfs = $modx->getService(
	'ncforms',
	'NcForms',
	$modx->getOption('ncforms.core_path',null,$modx->getOption('core_path').'components/ncforms/').'model/ncforms/',
	$scriptProperties
);

if (!($ncfs instanceof NcForms)) return '';

/* setup default properties */
$tpl = $modx->getOption('tpl',$scriptProperties,'rowTpl');
$formTpl = $modx->getOption('formTpl',$scriptProperties,'formTpl');
$id = $modx->getOption('id', $scriptProperties, null);
$sort = $modx->getOption('sort',$scriptProperties,'order_id');
$dir = $modx->getOption('dir',$scriptProperties,'ASC');

$form = $fieldsArray = $fieldsDefaultValuesArray = array();
$fields = $validate = '';

/* build form query */
$ncforms = $modx->getObject('NcForm',$id);
if(!$ncforms) {
   return 'id='.$id.' does not exist';
}   
$form = $ncforms->toArray();

if(!is_array($form))
	{die('Форма с id='.$id.' не найдена');}
	
session_start();
if (isset($_SESSION['SUCCESS_MSG'])) {
	$form['showSuccessMsg'] = $_SESSION['SUCCESS_MSG'];
	unset($_SESSION['SUCCESS_MSG']);
}

/* build fields query */
$c = $modx->newQuery('NcFormField');
$c->where(array(
    'form_id' => $id
));
$c->sortby($sort,$dir);

$ncfields = $modx->getCollection('NcFormField', $c);
if(!$ncfields){
   return 'this fields does not exist';
}   
if(!is_array($ncfields))
	{die('Поля с id='.$id.' не найдены');}

// if(isset($_POST)) {echo '<pre>'; print_r($_POST); echo '</pre>';}
foreach ($ncfields as $field) {
	$formArray = $field->toArray();
// 	file_put_contents('log.txt',"---\n".var_export($formArray,true)."\n---\n\n", FILE_APPEND);
	$tmp = $controls = '';
	
	// собираем строку для валидации
	if($formArray['required']) {
		$validate .= $reqSeparator.sprintf('field%s:requiredCustom=^%s^', $formArray['id'], $formArray['error_msg']);
	}
	
	/* $fieldMgr = new FieldMgr($formArray['type']);
	$getField = $fieldMgr->getField();
	$fieldThis = $getField->make($formArray, $_POST['field'.$formArray['id']]);
	echo $fieldThis; */
	
	switch($formArray['type']) {
		case 'text':
			$formArray['input_value'] = isset($_POST['field'.$formArray['id']]) ? $_POST['field'.$formArray['id']] : $formArray['input_value'];
			
			if($formArray['required']) {
				$validate .= !empty($formArray['validation']) ? sprintf(':%s', $formArray['validation']) : '';
			}
			
			$tmp = $ncfs->getChunk('inputText',$formArray);
			$form['fields'] .= $ncfs->getChunk('inputWrapper', array(
				'fields' 			=> $tmp,
				'label'				=> $formArray['label'],
				'required'			=> $formArray['required'],
				'field_id'			=> sprintf('field%s',$formArray['id'])
				));
			break;
		case 'radio':
			if(empty($formArray['input_value'])) continue;
				
			// convert string Red=red||Blue=blue||Black=black to array
			$list = array();
			$list = valuesToArray($formArray['input_value']);
			
			$input_default_value = isset($_POST['field'.$formArray['id']]) ? $_POST['field'.$formArray['id']] : $formArray['input_default_value'];
			
			foreach($list as $in) {
				$formArray['input_value'] = $in['value'];
				$formArray['header'] = $in['label'];
				
				if(!empty($input_default_value)) {
					if(!strcasecmp($formArray['input_value'], $input_default_value)) {
						$formArray['input_default_value'] = $formArray['input_value'];
					}
				} else {$formArray['input_default_value'] = '';}
				
				$controls .= $ncfs->getChunk('inputRadio',$formArray);
			}
			
			$tmp .= $ncfs->getChunk('inputControlsWrapper', array(
					'controls'	=> $controls,
					'multiple'	=> $formArray['multiple'],
					'field_id'	=> $formArray['id']
			));
			
			$form['fields'] .= $ncfs->getChunk('inputWrapper', array(
					'fields' 			=> $tmp,
					'label' 			=> $formArray['label'],
					'required'			=> $formArray['required'],
					'field_id'			=> sprintf('field%s',$formArray['id'])
				));
			break;
		case 'checkbox':
			if(empty($formArray['input_value'])) continue;
			
			// check input_value count
			$list = array();
			$list = valuesToArray($formArray['input_value']);
			
			// input_default_value count if type == checkbox
			$input_default_values = array();
			
			$input_default_values = $formArray['input_default_value'] = isset($_POST['field'.$formArray['id']]) ? $_POST['field'.$formArray['id']] : defaultValuesToArray($formArray['input_default_value']);
			// file_put_contents('log.txt',"---\n".var_export($_POST,true)."\n---\n\n", FILE_APPEND);
			// file_put_contents('log.txt',"---\n".var_export($_POST['field'.$formArray['id']],true)."\n---\n\n", FILE_APPEND);
			// file_put_contents('log.txt',"---\n".var_export($input_default_values,true)."\n---\n\n", FILE_APPEND);
			
			foreach($list as $in) {
				$formArray['input_value'] = $in['value'];
				$formArray['header'] = $in['label'];
				if(is_array($input_default_values) && count($input_default_values) > 0) {
					if(in_array($formArray['input_value'], $input_default_values)) {
						$formArray['input_default_value'] = $formArray['input_value'];
					}
				}
				$controls .= $ncfs->getChunk('inputCheckbox',$formArray);
			}
			
			// set default field value to 'multiple' = 1;
			$formArray['multiple'] = 1;
			
			$tmp .= $ncfs->getChunk('inputControlsWrapper', array(
					'controls'		=> $controls,
					'multiple'		=> $formArray['multiple'],
					'field_id'		=> $formArray['id']
			));
			
			$form['fields'] .= $ncfs->getChunk('inputWrapper', array(
				'fields' 			=> $tmp,
				'label' 			=> $formArray['label'],
				'required'			=> $formArray['required'],
				'field_id'			=> sprintf('field%s',$formArray['id'])
				));
			
			break;
		case 'select':
			if(empty($formArray['input_value'])) continue;
			
			// check input_value count
			$list = array();
			$list = valuesToArray($formArray['input_value']);
			
			// input_default_value count if type == checkbox
			$input_default_values = array();
			$input_default_values = $formArray['input_default_value'] = isset($_POST['field'.$formArray['id']]) ? $_POST['field'.$formArray['id']] : defaultValuesToArray($formArray['input_default_value']);
			
			// file_put_contents('log.txt',"---\n".var_export($input_default_values,true)."\n---\n\n", FILE_APPEND);
			
			foreach($list as $in) {
				$formArray['input_value'] = $in['value'];
				$formArray['header'] = $in['label'];
				if(is_array($input_default_values) && count($input_default_values) > 0) {
					if(in_array($formArray['input_value'], $input_default_values)) {
						$formArray['input_default_value'] = $formArray['input_value'];
					}
				}
				
				$tmp .= $ncfs->getChunk('inputSelectOption', $formArray);
			}
			
			$wrapSelectTag = $ncfs->getChunk('inputSelect', array(
				'option' 		=> $tmp,
				'multiple' 		=> $formArray['multiple'],
				'field_id' 		=> $formArray['id'])
			);
			
			$controls .= $ncfs->getChunk('inputControlsWrapper', array(
					'controls'		=> $wrapSelectTag,
					'multiple'		=> $formArray['multiple'],
					'type'			=> $formArray['type'],
					'field_id'		=> $formArray['id']
			));
			
			$form['fields'] .= $ncfs->getChunk('inputWrapper', array(
				'fields' 			=> $controls,
				'label' 			=> $formArray['label'],
				'required'			=> $formArray['required'],
				'field_id'			=> sprintf('field%s',$formArray['id'])
				));
			
			break;
		case 'textarea':
			$input_default_values = $formArray['input_value'] = isset($_POST['field'.$formArray['id']]) ? $_POST['field'.$formArray['id']] : $formArray['input_value'];
			
			if($formArray['required']) {
				$validate .= !empty($formArray['validation']) ? sprintf(':%s', $formArray['validation']) : '';
			}
			
			$tmp = $ncfs->getChunk('inputTextArea',$formArray);
			$form['fields'] .= $ncfs->getChunk('inputWrapper', array(
				'fields' 			=> $tmp,
				'label'				=> $formArray['label'],
				'required'			=> $formArray['required'],
				'field_id'			=> sprintf('field%s',$formArray['id'])
			));
			break;
		case 'hidden':
			$input_default_values = $formArray['input_value'];
			$form['fields'] .= $ncfs->getChunk('inputHidden',$formArray);
			break;
	}
	
	$reqSeparator = ',';
}
$recaptchaHook = $form['recaptcha_hook'] ? ',recaptcha' : null;
$emailHook = !strcasecmp('database_email', $form['save_method']) ? ',email' : null;
$redirectHook = ',redirect'; // всегда редирект //!strcasecmp('redirect', $form['redirect_or_msg']) ? ',redirect' : null;
$redirectTo = !strcasecmp('redirect', $form['redirect_or_msg']) ? $form['redirect_id'] : 'thisPage';
$spamHook = $form['spam_hook'] ? ',spam' : null;
$formHooks = $form['hooks'] ? ','.$form['hooks'] : null;
$tmpHooks = $recaptchaHook.$emailHook.$spamHook.',Add2DB'.$formHooks.$redirectHook;
$hooks = preg_replace('/(^,)/', '', $tmpHooks);
$rmCommaValidate = preg_replace('/(^,)/', '', $validate);
$settingsArray = array(
	//'fieldsDefaultValuesArray' 	=> $fieldsDefaultValuesArray
	'validate' 					=> $rmCommaValidate
	,'redirectTo' 				=> $redirectTo
	,'hooks' 					=> $hooks
	,'text' 					=> 'OK'
	,'emailTpl' 				=> 'emailTpl'
	,'emailFrom' 				=> 'phpd@mail.ru'
	,'isSpamHook'				=> $spamHook
	,'isRecaptcha'				=> $recaptchaHook
);
// echo 'hooks: '.$hooks.'<br>';
// echo 'validate: '.$rmCommaValidate.'<br>';

foreach($settingsArray as $key => $val) {
	$form[$key] = $val;
}

// file_put_contents('log.txt',"---\n".var_export($form['hooks'],true)."\n---\n\n", FILE_APPEND);
// echo '<pre>';
// print_r($form);
// echo '<.pre>';
$complateForm = $ncfs->getChunk($formTpl,$form);
// unset($form['fields']);echo '<pre>'; print_r($form); echo '</pre>';
/////////////////////
// unset($form['fields']);
// unset($form['fieldsDefaultValuesArray']);
// file_put_contents('log.txt',"---\n".var_export($form,true)."\n---\n\n", FILE_APPEND);

return $complateForm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///// functions

function valuesToArray($values, $separator = '||') {
	// file_put_contents('log.txt',"---\n".var_export($list,true)."\n---\n\n", FILE_APPEND);
	$expl = explode($separator, $values);
	if(count($expl) > 0) {
		$list = array();
		foreach($expl as $inputs) {
			$prop = explode('=', $inputs);
			if(count($prop) > 0) {
				$list[] = array('label' => $prop[0], 'value' => $prop[1]);
			}
		}
		return $list;
	}
	return $values;
}

function defaultValuesToArray($values, $separator = '||') {
	$expl = explode($separator, $values);
	if(count($expl) > 0) {
		$list = array();
		foreach($expl as $ex) {
			$list[] = $ex;
		}
		return $list;
	}
	return $values;
}

function checkSeparator($strValues, $separator = '||') {
	$pos = strpos($strValues, $separator);
	if ($pos !== false)
		return true;
}

// &emailTpl=`[[+emailTpl]]`
// &emailTo=`[[+email]]`
// &emailFrom=`[[+emailFrom]]`
// [[+save_method:equalto=`database_email`:then=`[[+emailSettings]]`]]

function checkMethod(array $emailArray) {
	if(0 == count($emailArray)) {
		return '';
	}
	
	$data = '';
	foreach($emailArray as $key => $val) {
		if(empty($val)) {
			return '';
		}
		$data .= '&'.$key.'=`'.$val."`\n";
	}
	return $data;
}

function setFieldValue($postv, $value) {
	/*$default = $value;
	echo $postv.'<br>';
	echo ':'.$default.'<br>';
	if(isset($postv)) {
		$default = $postv;
	}
	if (!strcmp($postv, 'POST_EMPTY')) {
		$default = 'no';
	}
	echo ':'.$default.'<br>';
	return $default;*/
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////