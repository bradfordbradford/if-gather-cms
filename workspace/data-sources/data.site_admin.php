<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcesite_admin extends AuthorDatasource {

		public $dsParamROOTELEMENT = 'site-admin';
		public $dsParamORDER = 'desc';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'id';
		

		public $dsParamFILTERS = array(
				'id' => '2',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'username',
				'name',
				'email'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'Site Admin',
				'author' => array(
					'name' => 'Lindsey Bradford',
					'website' => 'http://ifgather-cms.tc',
					'email' => 'lindseyb@wearetelegraph.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-28T20:51:53+00:00'
			);
		}

		public function getSource() {
			return 'authors';
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
