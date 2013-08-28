<?php
Class datasourcenextprevarticle extends Datasource{
    public function __construct(&$parent, $env=NULL, $process_params=true){
        parent::__construct($parent, $env, $process_params);
        $this->_dependencies = array('$ds-unleash-stories.system-id');
    }
    public function about(){
        return array(
                 'name' => 'NextPrevArticle',
                 'author' => array(
                        'name' => 'Carson Sasser',
                        'website' => 'http://tech.carsonsasser.com',
                        'email' => 'sassercw@cox.net'),
                 'version' => '1.0',
                 'release-date' => '2011-03-23T21:05:11+00:00');
    }
    public function allowEditorToParse(){
        return false;
    }
    // Gets the previous and next articles given a current article (ds-article contains
    // the entry_id of the current article and comes from the article data source).
    public function grab(&$param_pool=NULL){
        $result = new XMLElement('next_prev_article');
        // Get the entry_id and date (table 26) of the current article.
        $entry_id = (int)$param_pool['ds-unleash-stories.system-id'][0];
        $sql = "SELECT `local` FROM `sym_entries_data_26`
                WHERE `entry_id` = $entry_id LIMIT 1";
        $entry_date = $this->_Parent->Database->fetchVar('local', 0, $sql);
        // Get the entry_id of the next published (table 30) article.
        $sql = "SELECT t1.`entry_id`
                     FROM `sym_entries_data_26` AS t1
                     LEFT JOIN `sym_entries_data_30` AS t2 ON t1.entry_id = t2.entry_id
                     WHERE t1.`local` > $entry_date
                     AND t2.value = 'yes'
                     ORDER BY t1.`local` ASC LIMIT 1";
        $next_article_id = $this->_Parent->Database->fetchVar('entry_id', 0, $sql);
        // Get the title and handle (table 23) of the next article and add them to the XML.
        if ($next_article_id) {
            $sql = "SELECT handle,value FROM sym_entries_data_23
                    WHERE entry_id = $next_article_id LIMIT 1";
            $row = $this->_Parent->Database->fetchRow(0, $sql);
            $next = new XMLElement('next', $row['value']);
            $next->setAttributeArray(array('entry_id' => $next_article_id,
                'handle' => $row['handle']));
            $result->appendChild($next);
        }
        // Get the entry_id of the previous published (table 30) article.
        $sql = "SELECT t1.`entry_id`
                     FROM `sym_entries_data_26` AS t1
                     LEFT JOIN `sym_entries_data_30` AS t2 ON t1.entry_id = t2.entry_id
                     WHERE t1.`local` < $entry_date
                     AND t2.value = 'yes'
                     ORDER BY t1.`local` DESC LIMIT 1";
        $prev_article_id = $this->_Parent->Database->fetchVar('entry_id', 0, $sql);
        // Get the title and handle (table 23) of the previous article and add them to the XML.
        if ($prev_article_id) {
            $sql = "SELECT handle,value FROM sym_entries_data_23
                    WHERE entry_id = $prev_article_id LIMIT 1";
            $row = $this->_Parent->Database->fetchRow(0, $sql);
            $prev = new XMLElement('previous', $row['value']);
            $prev->setAttributeArray(array('entry_id' => $prev_article_id,
                'handle' => $row['handle']));
            $result->appendChild($prev);
        }
        return $result;
    }
}