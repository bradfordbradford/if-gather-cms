<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceunleash_story_mainentry extends SectionDatasource {

		public $dsParamROOTELEMENT = 'unleash-story-mainentry';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = array(
				'date'
		);
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'63' => '{$header}',
				'72' => 'yes',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'header',
				'author',
				'article: formatted',
				'banner-image',
				'people: name',
				'people: title-position',
				'people: profile-image',
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'Unleash Story _mainEntry',
				'author' => array(
					'name' => 'Lindsey Bradford',
					'website' => 'http://ifgather-cms.tc',
					'email' => 'lindseyb@wearetelegraph.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-28T16:22:32+00:00'
			);
		}

		public function getSource() {
			return '8';
		}

		public function allowEditorToParse() {
			return true;
		}

		public function execute(array &$param_pool = null) {
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$result = parent::execute($param_pool);
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			return $result;
		}

	}
