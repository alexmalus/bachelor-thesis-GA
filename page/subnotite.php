<?php
class page_subnotite extends Page {
	function init(){
		parent::init();
		$page=$this;
		$m=$this->add('Model_Proiect');
		$m->addCondition('realizare','1');
		$nume= $m->loadAny()->get('nume');
		$this->add('View_Error')->set('Subnotitele de mai jos sunt pentru proiectul: ' .$nume)
								->addclose('true');
		if($this->api->auth->model['is_scrum'])	//scrum master can modify what users should do
		{			
			$c=$this->add('CRUD');
			$c->setModel('Subnotite');
			if($c->grid){
				$c->grid->getColumn('estimare')->makeSortable();
				$c->grid->addPaginator(5);
			}
		}
		else
		{	
			$c=$this->add('Grid');
			$c->setModel('Subnotite');
			if(!($this->api->auth->model['is_po']))
			{
				$c->addColumn('button','alege','Revendica');
				if($_GET['alege'])
				{
					//user must choose the story in which the subnote will be active
                    $m= $c->model->load($_GET['alege']);
                    // Set user_id to mine
                    $m['user_id']=$this->api->auth->model->id;
                    $m->save();
                    $this->js(null, $c->js()->reload())->univ()->alert('Ai revendicat '.$m['nume'])->execute();
				}
			}
		}
		$page->add('H3')->set('Subnotite ce au ajuns in starea finala.');
		$c=$this->add('Grid');
		$c->setModel('Subnotite')
			->addCondition('faza','sfarsit');
	}
}
