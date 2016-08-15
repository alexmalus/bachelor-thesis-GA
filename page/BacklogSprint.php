<?php

class page_BacklogSprint extends Page{
	function init(){
		parent::init();
		$page=$this;	
		$page->add('H3')->set('Informatii Sprint');				
		//date despre sprint-uri
		$tabs = $this->add('Tabs');
		//info 1
		$tab = $tabs->addTab('Date Sprint 1');		
		$user_crud=$tab->add('Grid');
		$user_crud->setModel('SumarSprint')
			->addCondition('story_id','1');	
		//info 2
		$tab = $tabs->addTab('Date Sprint 2');
		$tab->add('Grid')->setModel('SumarSprint')
			->addCondition('story_id','2');			
		//info 3
		$tab = $tabs->addTab('Date Sprint 3');
		$tab->add('Grid')->setModel('SumarSprint')
			->addCondition('story_id','3');	
		$form=$page->add('Form');	//creeaza o linie pentru delimitare vizuala		
		//tabele sprint
		$tabs = $this->add('Tabs');
		//numarul 1
		if($this->api->auth->model['is_scrum'])
		{
			$tab = $tabs->addTab('Sprint Numarul 1');	
			$user_crud=$tab->add('CRUD');
			$user_crud->setModel('Poveste')
			->addCondition('nrSprint','1');
			if($user_crud->grid)$user_crud->grid->addClass('zebra bordered');		
			//numarul 2
			$tab = $tabs->addTab('Sprint Numarul 2');
			$tab->add('CRUD')->setModel('Poveste')
			->addCondition('nrSprint','2');			
			//numarul 3
			$tab = $tabs->addTab('Sprint Numarul 3');
			$tab->add('CRUD')->setModel('Poveste')
			->addCondition('nrSprint','3');
		}
		else
		{
			$tab = $tabs->addTab('Sprint Numarul 1');	
			$user_crud=$tab->add('Grid');
			$user_crud->setModel('Poveste')
			->addCondition('nrSprint','1');	
			//numarul 2
			$tab = $tabs->addTab('Sprint Numarul 2');
			$tab->add('Grid')->setModel('Poveste')
			->addCondition('nrSprint','2');			
			//numarul 3
			$tab = $tabs->addTab('Sprint Numarul 3');
			$tab->add('Grid')->setModel('Poveste')
			->addCondition('nrSprint','3');
		}
		// Urmeaza Backlog Sprint
		if($this->api->auth->model['is_scrum']){
		$page->add('H3')->set('Alegeti ce doriti sa intre in Sprint-ul dorit!');
		$g = $page->add('gridext/Grid_Extended');
		$g->setModel('Poveste')
		->addCondition('nrSprint',0);
		$g->addActionToolbar();
		$g->addPaginator(4);
		}
	}
}
