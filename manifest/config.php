<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '99999',
			'association_maximum_rows' => '5',
			'lang' => 'en',
			'pages_table_nest_children' => 'no',
			'version' => '2.3.3',
			'cookie_prefix' => 'sym-',
			'session_gc_divisor' => '10',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### DATABASE ######
		'database' => array(
			'host' => '127.0.0.1',
			'port' => '3306',
			'user' => 'root',
			'password' => 'root',
			'db' => 'db-ifgather',
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'If: Gather',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'm/d/Y',
			'datetime_separator' => ' ',
			'timezone' => 'America/Chicago',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
			'disable_regular_rules' => 'no',
			'disable_upscaling' => 'no',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_posts_sortby' => '37',
			'section_posts_order' => 'asc',
			'section_unleash-stories_sortby' => '70',
			'section_unleash-stories_order' => 'desc',
			'section_what-if-stories_sortby' => '99',
			'section_what-if-stories_order' => 'asc',
		),
		########


		###### SEARCH_INDEX ######
		'search_index' => array(
			're-index-per-page' => '20',
			're-index-refresh-rate' => '0.5',
			'get-param-prefix' => null,
			'get-param-keywords' => 'keywords',
			'get-param-per-page' => 'per-page',
			'get-param-sort' => 'sort',
			'get-param-direction' => 'direction',
			'get-param-sections' => 'sections',
			'get-param-page' => 'page',
			'default-sections' => null,
			'default-per-page' => '20',
			'default-sort' => 'score',
			'default-direction' => 'desc',
			'excerpt-length' => '250',
			'min-word-length' => '3',
			'max-word-length' => '30',
			'stem-words' => 'yes',
			'build-entries' => 'no',
			'mode' => 'like',
			'log-keywords' => 'yes',
			'indexes' => 'a:1:{i:2;a:3:{s:6:\"fields\";a:4:{i:0;s:6:\"header\";i:1;s:10:\"sub-header\";i:2;s:7:\"article\";i:3;s:4:\"tags\";}s:9:\"weighting\";s:1:\"2\";s:7:\"filters\";a:0:{}}}',
		),
		########


		###### HTML5_DOCTYPE ######
		'html5_doctype' => array(
			'exclude_pagetypes' => null,
		),
		########


		###### MEMBERS ######
		'members' => array(
			'cookie-prefix' => 'sym-members',
			'section' => '7',
		),
		########


		###### EMAIL ######
		'email' => array(
			'default_gateway' => 'smtp',
		),
		########


		###### EMAIL_SENDMAIL ######
		'email_sendmail' => array(
			'from_name' => 'IF:GATHERING',
			'from_address' => 'lindseyb@wearetelegraph.com',
		),
		########


		###### EMAIL_SMTP ######
		'email_smtp' => array(
			'from_name' => 'IF:GATHERING',
			'from_address' => 'lindseyb@wearetelegraph.com',
			'host' => 'smtp.gmail.com',
			'port' => '465',
			'secure' => 'ssl',
			'auth' => '1',
			'username' => 'lindseyb@wearetelegraph.com',
			'password' => 'Telegraph1989',
		),
		########


		###### CLIENT_LOGO ######
		'client_logo' => array(
			'path' => 'assets/images/icons/ifgather-logo-drk-large+@2x.png',
		),
		########


		###### DATETIME ######
		'datetime' => array(
			'english' => 'en, en_GB.UTF8, en_GB',
		),
		########
	);
