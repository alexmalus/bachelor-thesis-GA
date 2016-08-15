<?php
class page_vizUseri extends Page {
	
    function init(){
	parent::init();
	$page=$this;
			
	$idd=$this->api->auth->model['first_name'];		
	$g = $page->add('gridext/Grid_Extended');
	$g->setModel('User')
	  ->addCondition('first_name',$idd);
	$g->addToolbar()
            ->add('Text')
            ->setHTML('<b>Informatii generale despre contul dumneavoastra</b>');
	
	$form=$page->add('form');
	
	$this->add('H2')->set('Membri de echipa');
	$tabs = $this->add('Tabs');

		$tab = $tabs->addTab('Project Owner');
		$tab->add('Grid')->setModel('User')
			->addCondition('is_po','1');

		$tab = $tabs->addTab('Scrum Master');
		$tab->add('Grid')->setModel('User')
			->addCondition('is_scrum','1');

		$tab = $tabs->addTab('Programatorii');
		$tab->add('Grid')->setModel('User')
			->addCondition('is_po','0')
			->addCondition('is_scrum','0')
			->addCondition('is_admin','0');
   }
}