<?php

class page_Probleme extends Page{
	function init(){
		parent::init();

		$page=$this;
		$page->add('H3')->set('Lista a problemelor nerezolvate');
		if($this->api->auth->model['is_scrum'])//if user= Scrum Master, he can modify these records or even state that they're fixed
		{
			$g = $page->add('gridext/CRUD_Extended');
			$g->setModel('Probleme')
			  ->addCondition('este_fixata','0');
			if($g->grid) {
				$g->grid->addPaginator(4);
				$g->grid->addQuickSearch(array('Titlu'));
				$g->grid->addColumn('button','repar','Repara');
				$g->grid->getColumn('Prioritatea')->makeSortable();
				$g->grid->getColumn('ZiuaScadenta')->makeSortable();
				if($_GET['repar'])
				{
					$g->model->loadData($_GET['repar']);				
					$g->model->Repara();
					$g->js(null,$g->grid->js()->reload())
					->univ()->alert('Succes!')->execute();
				}
			}
		}
		else
		{
			$g = $page->add('Grid');
			$g->setModel('Probleme')
			  ->addCondition('este_fixata','0');
			$g->addPaginator(4);
			$g->addQuickSearch(array('Titlu'));
			$g->getColumn('Prioritatea')->makeSortable();
			$g->getColumn('ZiuaScadenta')->makeSortable();
			
		}
		
		$page->add('H3')->set('Lista a problemelor rezolvate');
		$g = $page->add('Grid');
		$g->setModel('Probleme')
		  ->addCondition('este_fixata','1');
		$g->addPaginator(4);
		$g->addQuickSearch(array('Titlu'));
		$g->getColumn('Prioritatea')->makeSortable();
		$g->getColumn('ZiuaScadenta')->makeSortable();
	}
}