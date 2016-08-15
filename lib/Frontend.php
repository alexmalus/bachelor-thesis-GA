<?php
class Frontend extends ApiFrontend {
    function init(){
        parent::init();
        $this->dbConnect();
        $this->requires('atk','4.2.0');
        $this->add('jUI');

        $this->pathfinder->addLocation('/',array(
            'addons'=>array('ambient-addons','atk4-addons'),
			'js'=>array(
						 'templates/js',
						 'misc/templates/js'
            ),
			'template'=> array(
                'tree/templates/default'
            )))
           ->setParent($this->pathfinder->base_location)
           ->setRelativePath('/');   
		
		$this->add("cms/Controller_Cms");
        $this->add('Auth')
        ->setModel('User');
        $this->auth->allowPage(array('index'));  

		if($this->auth->isLoggedIn()){		//daca utilizatorul este logat, oferim meniul de baza
		$menu = $this->add('menu/Menu_Dropdown',null,'Menu');
        $menu
			->setType('horizontal')
			->setPosition('left')
			->addMenuItem('index','Pagina Start')
			->addMenuItem('proiect','Proiect')
			->sub()
				->addMenuItem('proiect','Proiect Curent')
				->addMenuItem('poveste','Backlog Proiect')
				->addMenuItem('Probleme','Probleme')	
			->end()
			->addMenuItem('BacklogSprint','Sprint')
			->sub()
				->addMenuItem('BacklogSprint','Backlog Sprint')
				->addMenuItem('notite','Gestionare Note')		
			->end()
			->addMenuItem('user','Detalii')
			->sub()
				->addMenuItem('vizUseri','Membri Echipa')
				->addMenuItem('user','Preferinte')
				->addMenuItem('progress','Log Activitate')
			->end()	
			->addMenuItem('logout','Logout');
		
        // Meniu secundar cu pagini specifice Product Owner-ului si Scrum Master-ului
		if(($this->auth->model['is_po']) || ($this->auth->model['is_scrum']))
		{
			$menu = $this->add('menu/Menu_Dropdown',null,'Menu2');
			$menu
				->setType('horizontal')
				->setPosition('right')
				->addMenuItem('programare','Programare Sprint')
				->addMenuItem('urmarire','Urmarire Sprint')
				->addMenuItem('log','Activitate Proiect');
		}
		
		//pe langa acest meniu comun Product Owner-ului si Scrum Master-ul, Scrum Master-ul are posibilitatea
		//de a adauga noi membri pentru a scadea timpul de lucru
		if($this->auth->model['is_scrum'])
		{
			$menu = $this->add('menu/Menu_Dropdown',null,'Menu2');
			$menu
				->setType('horizontal')
				->setPosition('right')
				->addMenuItem('register','Inregistrare membri');
		}
		
		
		// Meniu secundar cu pagini speciale Adminului de site
		if($this->auth->model['is_admin'])
		{
			$menu = $this->add('menu/Menu_Dropdown',null,'Menu2');	
			$menu
				->setType('horizontal')
				->setPosition('right')
				->addMenuItem("cmsadmin", "Gestiune CMS")
				->addMenuItem("fileadmin", "Gestiune Fisiere");
        } 

		//Daca utilizatorul nu este autentificat, ii vom oferi meniul introductiv
		}else
		{
			$menu=$this->add('Menu',null,'Menu')
				->addMenuItem('index','Pagina Start')
				->addMenuItem('login');
		}		
        $this->auth->check();
		
    } 
}
