<?php
class page_urmarire extends Page {

    function init(){
	parent::init();
	$p=$this;

	$this->js(true)->_load("highcharts/js/highcharts");
	$this->js(true)->_load("ui.highcharts");
	
	$this->add("View_HtmlElement")->setElement("div")
       ->js(true)
       ->univ()
       ->highchart(array(
       'chart'=>array('width'=>480,'height'=>300),
       'title'=>array('text'=>'Componenta Echipei de lucru'),
	   'tooltip'=>array('valueSuffix'=>'%'),
       'series'=>array(array('type'=>'pie',
		  'name'=>'Primul proiect',
          'data'=>array(
            array('Product Owner',15),
            array('Scrum Master',15),
			array('Admin Principal',15),
            array('Programatori',55)
            )
            ))));

	$f=$this->add('form');		
			
	$this->add("View_HtmlElement")->setElement("div")
       ->js(true)
       ->univ()
       ->highchart(array(
       'chart'=>array('type'=>'line',
					'marginRight'=>'130',
					'marginBottom'=>'25',
					'width'=>900,'height'=>300),
       'title'=>array('text'=>'Burndown Chart reprezentând Performanța sprint-urilor proiectului'),
	   'subtitle'=>array('text'=>'Se calculează de la inceputul unui sprint până la sfârșitul acestuia'),
	   'xAxis'=>array('categories'=>array('1','2','3','4','5','6','7','8')),
		'yAxis'=>array('title'=>array(
			'text'=>'Lucru Estimat'),
					   'plotLines'=>array(array(
			'value'=>'0',
			'width'=>'1',
			'color'=>'$808080'))),
		'tooltip'=>array('valueSuffix'=>'UL'),
		'legend'=>array('layout'=>'vertical',
						'align'=>'right',
						'verticalAlign'=>'top',
						'borderWidth'=>'0'),
		'series'=>array(
				array('name'=>'Sprint1',
				'data'=>array(20, 19, 15, 13, 9, 6, 4, 0)),
				array('name'=>'Sprint2',
				'data'=>array(20, 19.5, 17, 15, 14)),
				array('name'=>'Sprint3',
				'data'=>array(20, 19, 19, 18, 17)),
						)
				)
			);
   }
}
