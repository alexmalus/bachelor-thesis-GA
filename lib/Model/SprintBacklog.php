<?php
class Model_SprintBacklog extends Model_Table {
	public $table="sprint_backlog";
	function init(){
		parent::init();

		$this->addField('Nume')->mandatory('Introduceti numele elementului de tip story');
		$this->addField('Prioritate')->mandatory('Care este prioritatea?');
		$this->addField('Estimare')->mandatory('Cate zile lucratoare estimati?');
		$this->addField('MetodaValidare')->mandatory('Metoda de validare folosita');
		$this->addField('Note');
		$this->addField('nrSprint');
	}
}