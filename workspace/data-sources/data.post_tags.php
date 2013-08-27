<?php

	require_once(EXTENSIONS . '/section_schemas/data-sources/datasource.section_schema.php');

	Class datasourcepost_tags extends SectionSchemaDatasource {

		public $dsParamROOTELEMENT = 'post-tags';
		public $dsParamSECTION = 'posts';
		public $dsParamFIELDS = array('tags');

		public function about(){
			return array(
				'name' => 'Post Tags',
				'author' => array(
					'name' => 'Lindsey Bradford',
					'website' => 'http://sites.tc/Ensembles/Publishing-Platform',
					'email' => 'lindseyb@wearetelegraph.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-17T04:06:00+00:00'
			);
		}

		public function allowEditorToParse(){
			return true;
		}

	}
