<?php
class Model_Probleme extends Model_Table {
	public $table="probleme";
	function init(){
		parent::init();

		$this->addField('Titlu')->mandatory('Introduceti titlul problemei');
		$this->addField('Prioritatea')->mandatory('Care este prioritatea?');
		$this->addField('ZiuaScadenta')->type('date');
		$this->addField('este_fixata')->type('boolean')->hidden('true');
		$this->hasOne('Proiect',null,'nume');
	}
	
	function Repara(){
		$this['este_fixata']=true;
		$this->saveAndUnload();
    }
}