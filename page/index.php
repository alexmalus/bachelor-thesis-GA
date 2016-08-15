<?php
class page_index extends Page {
    function init(){
        parent::init();
        $page=$this;

        if($this->api->auth->isLoggedIn()){
            $this->add('View_Info')->set('Buna ziua Domnule '.$this->api->auth->model['first_name']);
        }
		else
		{
			$this->add('View_Info')->set('Nu sunteti inca autentificat. Autentificati-va pentru a
			incepe lucrul la proiect!');
		}
		
		$this->add("stickynote/StickyNote");
    }
}
