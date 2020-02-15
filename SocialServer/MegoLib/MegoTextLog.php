<?php
function getNumberingPath($no, $size=3) 
{
        $mod = pow(10, $size);
        $output = sprintf('%0'.$size.'d/', $no%$mod);
        if($no >= $mod) $output .= getNumberingPath((int)$no/$mod, $size);
        return $output;
}

function writeText($f,$c)
{
	if(is_writable($f) || !file_exists($f)){
		if(!$h=fopen($f,'w'))return false;
		if(!fwrite($h,$c))return false;
		fclose($h);
	}else{
		return false;
	}
	return true;
}
?>