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
	
	if(empty($_POST['unregister'])){
		die("Invalid parameters.");
	}
	
	$dbh = mf_connect_db();
	$data['customer_name'] = 'unregistered';
	$data['customer_id']   = '';
	$data['license_key']   = '';

   	mf_ap_settings_update($data,$dbh);

   	echo '{"status" : "ok"}';
?>