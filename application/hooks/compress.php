<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
function compress()
{
	$CI =& get_instance();
	$buffer = $CI->output->get_output();

	/*
	$search = array(
		'/\>[^\S ]+/s', 
		'/[^\S ]+\</s', 
		'/(\s)+/s', // shorten multiple whitespace sequences
		'#(?://)?<!\[CDATA\[(.*?)(?://)?\]\]>#s' //leave CDATA alone
	);
	$replace = array(
		'>',
		'<',
		'\\1',
		"//&lt;![CDATA[\n".'\1'."\n//]]>"
	);
	*/

	$search = '#(?ix)(?>[^\S ]\s*|\s{2,})(?=(?:(?:[^<]++|<(?!/?(?:textarea|pre)\b))*+)(?:<(?>textarea|pre)\b|\z))#';
	$replace = ' ';
	$buffer = preg_replace($search, $replace, $buffer);

	$CI->output->set_output($buffer);
	$CI->output->_display();
 }

?>