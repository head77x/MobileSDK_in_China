<?php
	$resultstr = '';
	$resultstr .= '{"stat" : "1",';
	$resultstr .= '"message" : "getsuccess",';
	$resultstr .= '"friendlists":[';
	$resultstr .= '{"_UserID" : "111111", "_FaceType" : "1", "_Name" : "testuser_1", "_Score" : "1000", "_Rank" : "10"},';
	$resultstr .= '{"_UserID" : "111112", "_FaceType" : "2", "_Name" : "testuser_2", "_Score" : "1001", "_Rank" : "9"},';
	$resultstr .= '{"_UserID" : "111113", "_FaceType" : "3", "_Name" : "testuser_3", "_Score" : "1002", "_Rank" : "8"},';
	$resultstr .= '{"_UserID" : "111114", "_FaceType" : "4", "_Name" : "testuser_4", "_Score" : "1003", "_Rank" : "7"},';
	$resultstr .= '{"_UserID" : "111115", "_FaceType" : "5", "_Name" : "testuser_5", "_Score" : "1004", "_Rank" : "6"},';
	$resultstr .= '{"_UserID" : "111116", "_FaceType" : "6", "_Name" : "testuser_6", "_Score" : "1005", "_Rank" : "5"},';
	$resultstr .= '{"_UserID" : "111117", "_FaceType" : "7", "_Name" : "testuser_7", "_Score" : "1006", "_Rank" : "4"},';
	$resultstr .= '{"_UserID" : "111118", "_FaceType" : "8", "_Name" : "testuser_8", "_Score" : "1007", "_Rank" : "3"},';
	$resultstr .= '{"_UserID" : "111119", "_FaceType" : "9", "_Name" : "testuser_9", "_Score" : "1008", "_Rank" : "2"},';
	$resultstr .= '{"_UserID" : "111120", "_FaceType" : "10", "_Name" : "testuser_10", "_Score" : "1009", "_Rank" : "1"}';
	$resultstr .= ']}';

	echo $resultstr;
	die();
?>
