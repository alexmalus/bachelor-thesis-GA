<?php
     
class page_utilitate extends Page {
	  function init(){
        parent::init();
        $p=$this; 

if($_GET['teest']){
    //$p=$p->add('View','feedback');$_GET['cut_object']=$p->name;
    //$this->api->stickyGET('teest');
   // $f=$p->add('Form');
    //$form->setModel(subnotite, array('Utilitate'));
    //if($f->isSubmitted()){
    //    $f->update();
    //    $f->js()->univ()->successMessage('Thank you')->closeDialog()->execute();
   // }
    //return;
	
	 $this->api->stickyGET("teest");
            $vp = $this->add('VirtualPage');
            $vp->set(function($vp){
                $m = $vp->add("Model_Subnotite");
                $f=$vp->add("Form");
                $f->addSubmit("Add New");
                $f->setModel($m);
                if ($f->isSubmitted()){
                    $f->update();
                    $vp->js()->reload()->execute();
                }
            });
            $this->js()->univ()->frameURL('Items',$vp->getURL())->execute();
	
}
    }

}
