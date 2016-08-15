<?php
class Model_SumarSprint extends Model_Table {
	public $table="sumar_sprint";
	function init(){
		parent::init();

		$this->addField('DataIncepere');
		$this->addField('DataSfarsit');
		$this->addField('story_id')->hidden('true');
	}
}