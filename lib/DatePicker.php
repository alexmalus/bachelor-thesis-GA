<?php

class Form_Field_DatePicker extends Form_Field {
    public $options=array();
    function getInput($attr=array()){
        // $this->value contains date in MySQL format
        // we need it in locale format

        $this->js(true)->datepicker(array_merge(array(
                    'duration'=>0,
                    'showOn'=>'button',
                    'buttonImage'=>$this->api->locateURL('images','calendar.gif'),
                    'buttonImageOnly'=> true,
                    'changeMonth'=>true,
                    'changeYear'=>true,
                    'dateFormat'=>$this->api->getConfig('locale/date_js','dd/mm/yy')
                    ),$this->options));

        return parent::getInput(array_merge(
            array(
                'value'=>$this->value?(date($this->api->getConfig('locale/date','d/m/Y'),strtotime($this->value))):'',
            ),$attr
        ));
    }
    function set($value){
        // value can be valid date format, as in config['locale']['date']
        if(!$value)return parent::set($value);
        list($d,$m,$y)=explode('/',$value);
        if($y)$value=join('/',array($m,$d,$y));
        elseif($m)$value=join('/',array($m,$d));
        $value=date('Y-m-d',strtotime($value));
        return parent::set($value);
    }
    function get(){
        $value=parent::get();
        // date cannot be empty string
        if($value=='')return null;
        return $value;
    }
}