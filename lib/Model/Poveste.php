<?php
class Model_Poveste extends Model_Table {
	public $table="poveste";
	function init(){
		parent::init();

		$this->addField('Nume')->mandatory('Introduceti numele elementului de tip story');
		$this->addField('Prioritate')->mandatory('Care este prioritatea?');
		$this->addField('Estimare')->mandatory('Cate zile lucratoare estimati?');
		$this->addField('MetodaValidare')->mandatory('Metoda de validare folosita');
		$this->addField('Note');
		$this->addField('nrSprint');

        //implementarea log-ului
        $this->addHook('afterInsert',function($m){

            $m=$this->add('Model_Log');
            $m['user_id']=$m->api->auth->model->id;
            $m['info']='Inserare date in tabelul Story';
			$m['tabel']='poveste';
			$m['DataActiune']=date("Y.m.d H:i:s", $_SERVER['REQUEST_TIME']); //data actuala
            $m->save();
        });
		
		$this->addHook('beforeSave',function($m){

            $m=$this->add('Model_Log');
            $m['user_id']=$m->api->auth->model->id;
            $m['info']='Actualizare date in tabelul Story';
			$m['tabel']='poveste';
			$m['DataActiune']=date("Y.m.d H:i:s", $_SERVER['REQUEST_TIME']); //data actuala
            $m->save();
        });
		
		$this->addHook('beforeDelete',function($m){
		
			$m=$this->add('Model_Log');
            $m['user_id']=$m->api->auth->model->id;
            $m['info']='Stergere linie in tabelul Story';
			$m['tabel']='poveste';
			$m['DataActiune']=date("Y.m.d H:i:s", $_SERVER['REQUEST_TIME']); //data actuala
            $m->save();
        });
	}

		function action_Muta_In_Sprint1(){
            $this['nrSprint']=1;
            $this->saveAndUnload();      
		}
		function action_Muta_In_Sprint2(){
			$this['nrSprint']=2;
            $this->saveAndUnload();
		}
		function action_Muta_In_Sprint3(){
			$this['nrSprint']=3;
            $this->saveAndUnload();
		}
}
