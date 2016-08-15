<?php
//Aceasta clasa imparte pagina in doua parti. De fiecare data cand se apeleaza addColumn
//returneaza un nou obiect. Apoi se poate folosi acel obiect pentru a adauga elemente aditionala.
//In exemplul nostru cream structuri complicate:     
class page_programare extends Page {
	  function init(){
        parent::init();
		
        $p=$this;  
        $c=$p->add('View_Columns');

		if($this->api->auth->model['is_scrum'])
		{
			$col=$c->addColumn();
			$col->add('H3')->set('Notite Neincepute');
			$col->add('TSGrid')
				->setReloadThis($c)
				->dq
				->where('faza','inceput');
		
			$col=$c->addColumn();
			$col->add('H3')->set('Notite Finalizate');
			$col->add('View_Demo');
		}
		else
		{
			$col=$c->addColumn();
			$col->add('H3')->set('Notite Neincepute');
			$col->add('Grid')
				->setModel('Subnotite')
				->addCondition('faza','inceput');
		
			$col=$c->addColumn();
			$col->add('H3')->set('Notite Finalizate');
			$col->add('Grid')
				->setModel('Subnotite')
				->addCondition('faza','sfarsit');
		}
    }

}
