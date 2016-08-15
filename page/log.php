<?php
class page_log extends Page {
    function init(){
        parent::init();
        $page=$this;
		
        $this->add('View_Info')->set('Domnule '.$this->api->auth->model['first_name'].' Aceasta este activitatea proiectului:');
        $g=$this->add('Grid');
	    $g->setModel('Log');
	    $g->addPaginator(5);
	    $g->getColumn('DataActiune')->makeSortable();
	    $g->getColumn('tabel')->makeSortable();
    }
}
