<?php
class View_Demo extends AbstractView {
    function init(){
        parent::init();
        $c=$this->add("Grid");
        $c->setModel("Subnotite")->addCondition('faza','sfarsit');
        $c->addColumn("button", "Adauga_Utilitate");
				
        if ($_GET['Adauga_Utilitate']){
		$this->api->stickyGET("Adauga_Utilitate");
            $vp = $this->add('VirtualPage');
            $vp->set(function($vp){
                $m = $vp->add("Model_Subnotite")->load($_GET['Adauga_Utilitate']);
                $f=$vp->add("Form");
                $f->addSubmit("Adauga Utilitatea");
                $f->setModel($m,array('Utilitate'));
                if ($f->isSubmitted()){
                    $f->update()->js()->univ()->successMessage('Executat cu succes!')->closeDialog()->execute();
                    $vp->js()->reload()->execute();
                }
            });
            $this->js()->univ()->frameURL('Subnotite',$vp->getURL())->execute();
        }
    }
}