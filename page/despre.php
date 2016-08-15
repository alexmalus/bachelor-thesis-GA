<?php
class page_despre extends Page {
    function init(){
        parent::init();
        $page=$this;
		
		$page->add('H3')->set('Acest site a fost realizat pentru a satisface tema de licenta ce are ca cerinta
		dezvoltarea unei aplicatii specializate, implicand o metodologie Agile.');
		$page->add('H4')->set('Cel mai bun framework gasit care a ajutat la realizarea aceste cerinte este Agile Toolkit.');
		$page->add('H4')->set('Agile Toolkit este folosit pentru crearea unor aplicatii web puternice. Este
		open Source si momentan in versiunea 4.2.4.');
		$page->add('H4')->set('Multe multumiri echipei Agile pentru oferirea unui produs grozav!');
    }
}
