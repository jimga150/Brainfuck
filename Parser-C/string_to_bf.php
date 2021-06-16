<?php
namespace StrBF;

// Example Usage:
$input = implode(' ',array_slice($argv, 1));
echo wordwrap( Str2BF( $input ), 32, "\n", true );
echo "\n";


/**
 *  @brief Output string in BrainFuck
 *  
 *  @param [str] $input string
 *  @return (brainfuck) string
 *  
 *  @details Has 3 internal modes lower/upper/mixed 
 *  The optimization (per mode) is the header
 */
function Str2BF( $input ){
	if( preg_match('/^[^a-z]+$/', $input)){
		return upper( $input );
	}
	if( preg_match('/^[^A-Z]+$/', $input)){
		return lower( $input );
	}
	return mixed( $input );	
}

function MovePointer( &$current, $target ){
	$rval  = '';
	$diff = $target - $current;
	for($i = 0; $i < abs( $diff ); $i++ ){
		$rval .= ( $diff > 0 ) ? '>':'<';
	}
	$current = $target;
	return $rval;
}

function MoveChar( &$current, $target ){
	$rval  = '';
	$diff = $target - $current;
	for($i = 0; $i < abs( $diff ); $i++ ){
		$rval .= ( $diff > 0 ) ? '+':'-';
	}
	$current = $target;
	return $rval;
}

function mixed( $input ){
	
	$out = '';
	
	/*
	++++[>++++++++[>+<-]<-] #// 0,0,32
	>>[<++<+++>>-] #// 96,64,0 (A=65, A=97)
	*/
	$header = <<<'BFHEADER'
++++[>++++[>++<-]<-]>>[<++<+++>>-]
BFHEADER;
$p = 2;
	$x = [96,64,0];

	return $header.getBF( $input, $x, $p );
}

function lower( $input ){
	$x = [120,90,0];
	$p = 2;
	$header = <<<'BFHEADER'
+++++[>+++[>++<-]<-]>>[<+++<++++>>-]
BFHEADER;
	
	return $header.getBF( $input, $x, $p );
}

function upper( $input ){
	$x = [0,0,64];
	$p = 2;
	$header = <<<'BFHEADER'
++++[>++++[>++++<-]<-]>>
BFHEADER;
	
	return $header.getBF( $input, $x, $p );
}

function nearest( $chr, $list ){
	$min = 255;
	$rval = 0;
	foreach( $list as $i => $n ){
		$diff = abs( $chr - $n);
		if( $diff < 5){
			return $i;
		}
		if( $diff < $min ){
			$rval = $i;
			$min = $diff;
		}
	}
	return $rval;
}

function getBF( $input, $list, $currentPointer ){
	$out = '';
	$targetPointer = 0;
	$l = strlen( $input );
	for( $i = 0; $i < $l; $i++ ){
		$chr = ord($input[$i]);
		$targetPointer = nearest($chr, $list );
		$out .= MovePointer( $currentPointer, $targetPointer ).
						MoveChar( $list[$currentPointer], $chr ).'.';
		// $out .= "// {$input[$i]}\n";
	}
	
	return $out;
}
