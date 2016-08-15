<?php
class page_progress extends Page {
    function init(){
        parent::init();
        $page=$this;
		
        $this->add('View_Info')->set('Domnule '.$this->api->auth->model['first_name'].', mai jos aveti tot ce ati facut in cadrul
		proiectului pana acum:');
       $g=$this->add('Grid');
	   $g->setModel('Log')
	    ->addCondition('user_id',$this->api->auth->model['id']);
	   $g->addPaginator(5);
	   $g->getColumn('DataActiune')->makeSortable();
	   $g->getColumn('tabel')->makeSortable();
    }
}
