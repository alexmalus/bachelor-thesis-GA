<?php
class Model_Subscribe extends Model_Table {
	public $table="subscribe";
	function init(){
		parent::init();

		$this->addField('nume')->mandatory('Introduceti numele dumneavoastra.');
		$this->addField('email')->mandatory('Este necesar sa introduceti email-ul penrtu procesare.');
	
	    $this->addHook('beforeSave',function($m){
        $m['email']=strtolower($m['email']);
        });
	}

}