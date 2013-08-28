<?php

	require_once(EXTENSIONS . '/section_schemas/data-sources/datasource.section_schema.php');

	Class datasourcepost_tags extends SectionSchemaDatasource {

		public $dsParamROOTELEMENT = 'post-tags';
		public $dsParamSECTION = 'equip-stories';
		public $dsParamFIELDS = array('tags','tags');

		public function about(){
			return array(
				'name' => 'Post Tags',
				'author' => array(
					'name' => 'Lindsey Bradford',
					'website' => 'http://ifgather-cms.tc',
					'email' => 'lindseyb@wearetelegraph.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-28T16:34:34+00:00'
			);
		}

		public function allowEditorToParse(){
			return true;
		}

	}
