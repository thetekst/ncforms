<?php
class NcformsInputRender extends modTemplateVarInputRender {
    public function getLexiconTopics() {
        return array('tv_widget', 'ncforms:tv');
    }

    public function process($value,array $params = array()) {
    	$this->config['core_path'] = $this->modx->getOption('ncforms.core_path', null, $this->modx->getOption('core_path') . 'components/ncforms/');

		$ncforms = $this->modx->getService('ncforms', 'ncforms', $this->config['core_path'] . 'model/ncforms/');
		if (!($ncforms instanceof ncforms)) return '';

        $c = $this->modx->newQuery('NcForm');
        $ncforms = $this->modx->getCollection('NcForm', $c);

        $forms = array(
            array(
                'value' => '',
                'text' => '&nbsp;'
            )
        );
		foreach ($ncforms as $form) {
			$selected = $form->get('id') == $this->tv->get('value');
		    $forms[] = array(
		        'value' => $form->get('id'),
		        'text' => $form->get('name').' ('.$form->get('id').')',
		        'selected' => $selected,
		    );
		}
		$this->setPlaceholder('forms', $forms);
    }

    public function getTemplate() {
    	return $this->config['core_path'] . 'templates/elements/tv/renders/input/ncforms.tpl';
    }
}
return 'NcformsInputRender';
