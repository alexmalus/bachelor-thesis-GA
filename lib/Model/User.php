<?php
class Model_User extends Model_Table {
	public $table="user";
	function init(){
		parent::init();

		$this->addField('first_name')->mandatory('Introdu Numele de familie.');
		$this->addField('last_name')->mandatory('Introdu prenumele.');
		$this->addField('email')->mandatory('Este necesar mail-ul programatorului.');
		$this->addField('password')->display(array('form'=>'password'))->mandatory('Type your password');
		
		$this->addExpression('full_name')->set('concat(first_name," ",last_name)');

		$this->addField('is_admin')->type('boolean');
		
		$this->addField('is_po')->type('boolean');

		$this->addField('is_scrum')->type('boolean');
		
		$this->hasMany('Proiect');
		
		$this->hasMany('Story');
	
	    $this->addHook('beforeSave',function($m){
        $m['email']=strtolower($m['email']);
        });
	}

}