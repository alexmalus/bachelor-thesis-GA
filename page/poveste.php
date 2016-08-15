<?php
class page_poveste extends Page {
	function init(){
		parent::init();
		$page=$this;
		$m=$this->add('Model_Proiect')
		  ->addCondition('realizare','1');
		$nume= $m->loadAny()->get('nume');
		$this->add('View_Warning')->set('Elementele de tip Story de mai jos sunt pentru proiectul: ' .$nume)
								  ->addclose('true');
		if($this->api->auth->model['is_po'])	
		{
			$g = $page->add('gridext/CRUD_Extended');
			$g->setModel('Poveste');
			if($g->grid) {
				$g->grid->addPaginator(4);
				$g->grid->getColumn('Prioritate')->makeSortable();
				$g->grid->getColumn('Estimare')->makeSortable();
			}
		}
		else
		{
			$g = $page->add('Grid');
			$g->setModel('Poveste');
			$g->addPaginator(4);
			$g->getColumn('Prioritate')->makeSortable();
			$g->getColumn('Estimare')->makeSortable();
			
		}
	}
}