<?php
class Model_Log extends Model_Table {
	public $table="log";
	function init(){
		parent::init();

		$this->addField('user_id');
		$this->addField('info');
		$this->addField('tabel');
		$this->addField('DataActiune')->type('date');
	}
}
