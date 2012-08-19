<?php
/********************************************************************************
 MachForm
  
 Copyright 2007-2012 Appnitro Software. This code cannot be redistributed without
 permission from http://www.appnitro.com/
 
 More info at: http://www.appnitro.com/
 ********************************************************************************/
	require('includes/init.php');
	
	require('config.php');
	require('includes/db-core.php');
	require('includes/helper-functions.php');
	require('includes/check-session.php');
	
	if(empty($_POST['customer_id'])){
		die("Invalid parameters.");
	}
	
	$dbh = mf_connect_db();
	$mf_settings = mf_get_settings($dbh);

	$data['customer_name'] = $_POST['customer_name'];
	$data['customer_id'] = $_POST['customer_id'];
	$data['license_key'] = substr($_POST['license_key'], 0,1);
   	mf_ap_settings_update($data,$dbh);

   	echo '{"status" : "ok"}';
?>