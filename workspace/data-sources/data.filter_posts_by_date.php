<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcefilter_posts_by_date extends SectionDatasource {

		public $dsParamROOTELEMENT = 'filter-posts-by-date';
		public $dsParamORDER = 'desc';
		public $dsParamGROUP = '38';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		

		public $dsParamFILTERS = array(
				'37' => 'yes',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'header'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'Filter Posts by Date',
				'author' => array(
					'name' => 'Lindsey Bradford',
					'website' => 'http://sites.tc/Ensembles/Publishing-Platform',
					'email' => 'lindseyb@wearetelegraph.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-17T04:20:50+00:00'
			);
		}

		public function getSource() {
			return '2';
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
