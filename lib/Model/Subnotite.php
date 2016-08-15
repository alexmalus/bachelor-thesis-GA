<?php
class Model_Subnotite extends Model_Table {
	public $table="subnotite";
	function init(){
		parent::init();
		$this->addField('nume');
		$this->addField('estimare');
		$this->addField('Finalizare')->hidden('true');
		$this->addField('Utilitate')->hidden('true');
		$this->addField('faza');
		$this->hasOne('User',null,'first_name');
		$this->hasOne('Poveste',null,'Nume');
	}
	
	function ModUtilitate()
	{
		$this['Finalizare']=true;
		$this->saveAndUnload();
	}
}