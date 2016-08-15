<?php
class page_user extends Page {
	function init(){
		parent::init();


		$this->api->addLocation('atk4-addons',array(
				'php'=>'misc/lib'
			));
		$c=$this->add('Columns');
		$left_column =$c->addColumn(6);
		$form = $left_column->add('Form');
		$form->addClass('stacked');
		$form->setModel($this->api->auth->model,
			array('first_name','last_name','email'));
		$form->addSubmit('Salveaza');
		if($form->isSubmitted()){
			$form->update();
			$form->js()->univ()->successMessage('Salvat cu succes!')->execute();
		}

		$right_column=$c->addColumn(6);
		$form = $right_column->add('Form');
		$form->setModel($this->api->auth->model,
			array('password'));
		$form->getElement('password')->add('StrengthChecker',null,'after_field');
		$form->addField('password','confirma_parola');
		$form->addSubmit('Schimba Parola');
		$form->addClass('stacked');

		if($form->isSubmitted()){
			if($form->get('password') != $form->get('confirma_parola')){
				$form->displayError('password','Parolele trebuie sa fie identice!');
			}
			$form->update();
			$form->js()->univ()->successMessage('Parola schimbata cu succes!')->execute();
		}
	}
}