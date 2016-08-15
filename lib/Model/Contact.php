<?php
class Model_Contact extends Model_Table {
	public $table="contact";
	function init(){
		parent::init();

		$this->addField('nume')->mandatory('Introduceti numele dumneavoastra.');
		$this->addField('email')->mandatory('Este necesar sa introduceti email-ul pentru procesare.');
		$this->addField('telefon');
		$this->addField('companie');
		$this->addField('detalii')->mandatory('Detalii?')->datatype('text');
	
	    $this->addHook('beforeSave',function($m){
        $m['email']=strtolower($m['email']);
        });
	}

}