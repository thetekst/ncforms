<?php
if ($object->xpdo) {
    switch ($options[xPDOTransport::PACKAGE_ACTION]) {
        case xPDOTransport::ACTION_INSTALL:
            $modx =& $object->xpdo;
            $modelPath = $modx->getOption('ncforms.core_path',null,$modx->getOption('core_path').'components/ncforms/').'model/';
            $modx->addPackage('ncforms',$modelPath);
 
            $manager = $modx->getManager();
 
            /* Model Classes names */
            $objects = array(
                'NcForm',
                'NcFormField',
                'NcFormSentData'
            );

            foreach($objects as $object) {
				$manager->createObjectContainer($object);
            }
 
            break;
        case xPDOTransport::ACTION_UPGRADE:
            break;
    }
}
return true;