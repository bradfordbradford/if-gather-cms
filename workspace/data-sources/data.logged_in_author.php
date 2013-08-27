<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelogged_in_author extends AuthorDatasource {

		public $dsParamROOTELEMENT = 'logged-in-author';
		public $dsParamORDER = 'desc';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'id';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'username',
				'name',
				'email',
				'author-token',
				'default-area'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'Logged in Author',
				'author' => array(
					'name' => 'Lindsey Bradford',
					'website' => 'http://sites.tc/Ensembles/Publishing-Platform',
					'email' => 'lindseyb@wearetelegraph.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-16T00:46:15+00:00'
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
