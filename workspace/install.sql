
-- *** STRUCTURE:`tbl_fields_addresslocation` ***
DROP TABLE IF EXISTS`tbl_fields_addresslocation`;
CREATE TABLE`tbl_fields_addresslocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `street_label` varchar(80) NOT NULL,
  `city_label` varchar(80) NOT NULL,
  `region_label` varchar(80) NOT NULL,
  `postal_code_label` varchar(80) NOT NULL,
  `country_label` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_addresslocation` ***
INSERT INTO`tbl_fields_addresslocation` (`id`, `field_id`, `street_label`, `city_label`, `region_label`, `postal_code_label`, `country_label`) VALUES (6, 18, 'Street', 'City', 'State', 'Zip Code', 'Country');

-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (30, 37, 'on', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (9, 47, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (18, 58, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (19, 59, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (20, 60, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (29, 72, 'on', NULL);

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_datetime` ***
DROP TABLE IF EXISTS`tbl_fields_datetime`;
CREATE TABLE`tbl_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '1',
  `range` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_datetime` ***
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (22, 38, 1, 0, 0, 0);
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (21, 70, 1, 0, 0, 0);

-- *** STRUCTURE:`tbl_fields_html_panel` ***
DROP TABLE IF EXISTS`tbl_fields_html_panel`;
CREATE TABLE`tbl_fields_html_panel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `url_expression` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_html_panel` ***

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (132, 1, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (131, 2, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (133, 3, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (130, 6, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (136, 8, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (138, 9, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (137, 11, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (140, 13, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (141, 14, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (127, 15, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (128, 16, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (129, 17, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (134, 20, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (135, 21, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (244, 22, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (245, 26, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (210, 28, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (217, 30, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (218, 31, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (219, 32, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (139, 40, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (150, 43, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (151, 44, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (152, 45, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (220, 62, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (238, 63, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (239, 64, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (243, 75, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (247, 76, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (249, 79, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (250, 84, NULL);

-- *** STRUCTURE:`tbl_fields_memberemail` ***
DROP TABLE IF EXISTS`tbl_fields_memberemail`;
CREATE TABLE`tbl_fields_memberemail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberemail` ***
INSERT INTO`tbl_fields_memberemail` (`id`, `field_id`) VALUES (3, 53);

-- *** STRUCTURE:`tbl_fields_memberpassword` ***
DROP TABLE IF EXISTS`tbl_fields_memberpassword`;
CREATE TABLE`tbl_fields_memberpassword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_expiry` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberpassword` ***
INSERT INTO`tbl_fields_memberpassword` (`id`, `field_id`, `length`, `strength`, `salt`, `code_expiry`) VALUES (3, 55, 6, 'good', 'salt', '24 hours');

-- *** STRUCTURE:`tbl_fields_memberrole` ***
DROP TABLE IF EXISTS`tbl_fields_memberrole`;
CREATE TABLE`tbl_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_role` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberrole` ***
INSERT INTO`tbl_fields_memberrole` (`id`, `field_id`, `default_role`) VALUES (3, 52, 1);

-- *** STRUCTURE:`tbl_fields_memberusername` ***
DROP TABLE IF EXISTS`tbl_fields_memberusername`;
CREATE TABLE`tbl_fields_memberusername` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberusername` ***
INSERT INTO`tbl_fields_memberusername` (`id`, `field_id`, `validator`) VALUES (3, 54, NULL);

-- *** STRUCTURE:`tbl_fields_metakeys` ***
DROP TABLE IF EXISTS`tbl_fields_metakeys`;
CREATE TABLE`tbl_fields_metakeys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_keys` text COLLATE utf8_unicode_ci,
  `delete_empty_keys` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_metakeys` ***

-- *** STRUCTURE:`tbl_fields_oembed` ***
DROP TABLE IF EXISTS`tbl_fields_oembed`;
CREATE TABLE`tbl_fields_oembed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `refresh` int(11) unsigned DEFAULT NULL,
  `driver` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `thumbs` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `query_params` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_ssl` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_oembed` ***

-- *** STRUCTURE:`tbl_fields_order_entries` ***
DROP TABLE IF EXISTS`tbl_fields_order_entries`;
CREATE TABLE`tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_order_entries` ***

-- *** STRUCTURE:`tbl_fields_publish_tabs` ***
DROP TABLE IF EXISTS`tbl_fields_publish_tabs`;
CREATE TABLE`tbl_fields_publish_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_publish_tabs` ***
INSERT INTO`tbl_fields_publish_tabs` (`id`, `field_id`) VALUES (30, 4);
INSERT INTO`tbl_fields_publish_tabs` (`id`, `field_id`) VALUES (31, 19);
INSERT INTO`tbl_fields_publish_tabs` (`id`, `field_id`) VALUES (32, 7);
INSERT INTO`tbl_fields_publish_tabs` (`id`, `field_id`) VALUES (33, 12);
INSERT INTO`tbl_fields_publish_tabs` (`id`, `field_id`) VALUES (36, 80);
INSERT INTO`tbl_fields_publish_tabs` (`id`, `field_id`) VALUES (37, 82);

-- *** STRUCTURE:`tbl_fields_publishnotes` ***
DROP TABLE IF EXISTS`tbl_fields_publishnotes`;
CREATE TABLE`tbl_fields_publishnotes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `editable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_publishnotes` ***

-- *** STRUCTURE:`tbl_fields_repeating_date` ***
DROP TABLE IF EXISTS`tbl_fields_repeating_date`;
CREATE TABLE`tbl_fields_repeating_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_repeating_date` ***

-- *** STRUCTURE:`tbl_fields_search_index` ***
DROP TABLE IF EXISTS`tbl_fields_search_index`;
CREATE TABLE`tbl_fields_search_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_fields_search_index` ***
INSERT INTO`tbl_fields_search_index` (`id`, `field_id`) VALUES (17, 42);
INSERT INTO`tbl_fields_search_index` (`id`, `field_id`) VALUES (16, 73);

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (1, 41, 'no', 'yes', 'no', 22, 20);

-- *** STRUCTURE:`tbl_fields_subsectionmanager` ***
DROP TABLE IF EXISTS`tbl_fields_subsectionmanager`;
CREATE TABLE`tbl_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter_tags` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `droptext` text COLLATE utf8_unicode_ci,
  `create` tinyint(1) DEFAULT '1',
  `remove` tinyint(1) DEFAULT '1',
  `allow_multiple` tinyint(1) DEFAULT '1',
  `edit` tinyint(1) DEFAULT '1',
  `sort` tinyint(1) DEFAULT '1',
  `drop` tinyint(1) DEFAULT '1',
  `show_search` tinyint(1) DEFAULT '1',
  `show_preview` tinyint(1) DEFAULT '0',
  `recursion_levels` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_subsectionmanager` ***
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (44, 77, 4, NULL, '{$name}<br /> <em>{$profile-image}</em>', NULL, 1, 1, 0, 1, 0, 0, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (42, 69, 4, NULL, '{$name}<br /> <em>{$profile-image}</em>', NULL, 1, 1, 1, 1, 1, 0, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (46, 81, 4, NULL, '{$name}<br /> <em>{$profile-image}</em>', NULL, 1, 1, 1, 1, 1, 0, 1, 1, 0);

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***
INSERT INTO`tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (29, 25, NULL, 'existing');
INSERT INTO`tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (28, 66, NULL, 'existing');

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (27, 5, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 23, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (32, 46, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (39, 61, 'markdown_extra_with_smartypants', 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (48, 65, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE:`tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS`tbl_fields_uniqueupload`;
CREATE TABLE`tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_uniqueupload` ***
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (32, 74, '/workspace/assets/uploads/images', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (24, 57, '/workspace/assets/uploads/images', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (27, 34, '/workspace/assets/images/content', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (13, 39, '/workspace/assets/images/icons', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (36, 67, '/workspace/assets/uploads/images', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (38, 78, '/workspace/assets/uploads', NULL);

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_1` ***

-- *** STRUCTURE:`tbl_entries_data_11` ***
DROP TABLE IF EXISTS`tbl_entries_data_11`;
CREATE TABLE`tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_11` ***
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 4, 'telegraph-creative', 'Telegraph Creative');

-- *** STRUCTURE:`tbl_entries_data_12` ***
DROP TABLE IF EXISTS`tbl_entries_data_12`;
CREATE TABLE`tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_12` ***
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `value`) VALUES (5, 4, NULL);

-- *** STRUCTURE:`tbl_entries_data_13` ***
DROP TABLE IF EXISTS`tbl_entries_data_13`;
CREATE TABLE`tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_13` ***
INSERT INTO`tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 4, 'ahk2bse', 'ahk2bse');

-- *** STRUCTURE:`tbl_entries_data_14` ***
DROP TABLE IF EXISTS`tbl_entries_data_14`;
CREATE TABLE`tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_14` ***

-- *** STRUCTURE:`tbl_entries_data_15` ***
DROP TABLE IF EXISTS`tbl_entries_data_15`;
CREATE TABLE`tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_15` ***
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 4, 'hello-wearetelegraphcom', 'hello@wearetelegraph.com');

-- *** STRUCTURE:`tbl_entries_data_16` ***
DROP TABLE IF EXISTS`tbl_entries_data_16`;
CREATE TABLE`tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_16` ***

-- *** STRUCTURE:`tbl_entries_data_17` ***
DROP TABLE IF EXISTS`tbl_entries_data_17`;
CREATE TABLE`tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_17` ***

-- *** STRUCTURE:`tbl_entries_data_18` ***
DROP TABLE IF EXISTS`tbl_entries_data_18`;
CREATE TABLE`tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `street` (`street`),
  KEY `street_handle` (`street_handle`),
  KEY `city` (`city`),
  KEY `city_handle` (`city_handle`),
  KEY `region` (`region`),
  KEY `region_handle` (`region_handle`),
  KEY `postal_code` (`postal_code`),
  KEY `postal_code_handle` (`postal_code_handle`),
  KEY `country` (`country`),
  KEY `country_handle` (`country_handle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_18` ***
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `street`, `street_handle`, `city`, `city_handle`, `region`, `region_handle`, `postal_code`, `postal_code_handle`, `country`, `country_handle`, `latitude`, `longitude`) VALUES (5, 4, '2723 W. 12th St.', '2723-w-12th-st', 'Dallas', 'dallas', 'Texas', 'texas', 75211, 75211, 'United States', 'united-states', 32.741526, -96.8645);

-- *** STRUCTURE:`tbl_entries_data_19` ***
DROP TABLE IF EXISTS`tbl_entries_data_19`;
CREATE TABLE`tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_19` ***
INSERT INTO`tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (5, 4, NULL);

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***

-- *** STRUCTURE:`tbl_entries_data_20` ***
DROP TABLE IF EXISTS`tbl_entries_data_20`;
CREATE TABLE`tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_20` ***

-- *** STRUCTURE:`tbl_entries_data_21` ***
DROP TABLE IF EXISTS`tbl_entries_data_21`;
CREATE TABLE`tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_21` ***

-- *** STRUCTURE:`tbl_entries_data_22` ***
DROP TABLE IF EXISTS`tbl_entries_data_22`;
CREATE TABLE`tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_22` ***
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 1, 'tegan-and-sara', 'Tegan & Sara');
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 5, 'junip', 'Junip');
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 7, 'phantogram', 'Phantogram');
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 8, 'sleigh-bells', 'Sleigh Bells');
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 9, 'department-of-eagles', 'Department of Eagles');
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 10, 'the-national', 'The National');
INSERT INTO`tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 19, 'phosphorescent', 'Phosphorescent');

-- *** STRUCTURE:`tbl_entries_data_23` ***
DROP TABLE IF EXISTS`tbl_entries_data_23`;
CREATE TABLE`tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_23` ***
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 1, 'Folk-rock duo Tegan and Sara first burst onto the Canadian music scene in 1998, when they earned the highest score in history at Calgary\'s \"Garage Warz\" competition; their quick rise didn\'t stop, for their melodic acoustics and charming stage personas led to a slew of dates with Sarah McLachlan\'s Lilith Fair that same year and a record deal with Neil Young\'s Vapor Records in April 2000. Natives of Calgary, these twin sisters derived their music interests from their parents. Tegan and Sara began playing piano at age eight, and in their teens they were skanking around in their own punk bands. This Business of Art, which was produced by singer/songwriter Hawksley Workman, marked their debut in mid-2000, and a summer tour with Neil Young and the Pretenders followed in July. Two years later, Tegan and Sara released If It Was You, followed in 2004 by their commercial breakthrough, So Jealous. In 2005, the White Stripes released a popular cover of If It Was You\'s \"Walking with a Ghost.\" That same year saw the duo touring the U.S. with the Killers and landing seven songs in the popular medical TV drama Grey\'s Anatomy. In 2007, Tegan sang backup on a song on new Sire labelmate Against Me!\'s album New Wave, and the twins, who had by then moved far from the singer/songwriter mold and were more interested in exploring pop, punk, and indie rock, came out with The Con, produced by Christopher Walla of Death Cab for Cutie. Working with Walla went well, and Tegan and Sara also utilized his production skills on their next album, 2009\'s Sainthood. 2009 also found the duo collaborating with Tiësto on the song \"Feel It in My Bones\" for his album Kaleidoscope and with comedian Margaret Cho on the track \"Intervention\" from her Cho Dependent release. 2011\'s live CD/DVD Get Along was paired with three short behind-the-scenes films called States, India, and For the Most Part. On their seventh studio album, the duo turned to producer Greg Kurstin (Lily Allen, Kelly Clarkson, Ke$ha) for help in making an album that reflected the modern pop sound. The very slick, yet still emotionally powerful Heartthob was released in early 2013. ~ MacKenzie Wilson', '<p>Folk-rock duo Tegan and Sara first burst onto the Canadian music scene in 1998, when they earned the highest score in history at Calgary&#8217;s &#8220;Garage Warz&#8221; competition; their quick rise didn&#8217;t stop, for their melodic acoustics and charming stage personas led to a slew of dates with Sarah McLachlan&#8217;s Lilith Fair that same year and a record deal with Neil Young&#8217;s Vapor Records in April 2000. Natives of Calgary, these twin sisters derived their music interests from their parents. Tegan and Sara began playing piano at age eight, and in their teens they were skanking around in their own punk bands. This Business of Art, which was produced by singer/songwriter Hawksley Workman, marked their debut in mid-2000, and a summer tour with Neil Young and the Pretenders followed in July. Two years later, Tegan and Sara released If It Was You, followed in 2004 by their commercial breakthrough, So Jealous. In 2005, the White Stripes released a popular cover of If It Was You&#8217;s &#8220;Walking with a Ghost.&#8221; That same year saw the duo touring the U.S. with the Killers and landing seven songs in the popular medical TV drama Grey&#8217;s Anatomy. In 2007, Tegan sang backup on a song on new Sire labelmate Against Me!&#8217;s album New Wave, and the twins, who had by then moved far from the singer/songwriter mold and were more interested in exploring pop, punk, and indie rock, came out with The Con, produced by Christopher Walla of Death Cab for Cutie. Working with Walla went well, and Tegan and Sara also utilized his production skills on their next album, 2009&#8217;s Sainthood. 2009 also found the duo collaborating with Tiësto on the song &#8220;Feel It in My Bones&#8221; for his album Kaleidoscope and with comedian Margaret Cho on the track &#8220;Intervention&#8221; from her Cho Dependent release. 2011&#8217;s live CD/DVD Get Along was paired with three short behind-the-scenes films called States, India, and For the Most Part. On their seventh studio album, the duo turned to producer Greg Kurstin (Lily Allen, Kelly Clarkson, Ke$ha) for help in making an album that reflected the modern pop sound. The very slick, yet still emotionally powerful Heartthob was released in early 2013. ~ MacKenzie Wilson</p>\n');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 5, 'Gothenburg, Sweden-based indie rock outfit Junip was formed in late \'90s by singer/songwriter Jose Gonzalez. The trio, which consists of Gonzalez on guitar and vocals, drummer Elias Araya, and keyboard player Tobia Winterkorn, crafts dark, moody, indie folk in the vein of their founder. Junip released their debut 7\" in 2000 on their own Kakafoni imprint. Araya then spent nearly five years studying art in Norway and Finland, while Winterkorn worked as a teacher and Gonzalez launched a successful solo career. The trio regrouped for the Black Refuge EP in 2006 and began writing and recording in earnest after Gonzalez finished promoting his album In Our Nature in 2007. The full-length result, Fields, arrived in 2010 on Mute Records. For 2013\'s more polished and more experimental self-titled second album, the trio recorded in their practice space with help from co-producer Don Alsterberg. ~ James Christopher Monger', '<p>Gothenburg, Sweden-based indie rock outfit Junip was formed in late &#8217;90s by singer/songwriter Jose Gonzalez. The trio, which consists of Gonzalez on guitar and vocals, drummer Elias Araya, and keyboard player Tobia Winterkorn, crafts dark, moody, indie folk in the vein of their founder. Junip released their debut 7&#8221; in 2000 on their own Kakafoni imprint. Araya then spent nearly five years studying art in Norway and Finland, while Winterkorn worked as a teacher and Gonzalez launched a successful solo career. The trio regrouped for the Black Refuge EP in 2006 and began writing and recording in earnest after Gonzalez finished promoting his album In Our Nature in 2007. The full-length result, Fields, arrived in 2010 on Mute Records. For 2013&#8217;s more polished and more experimental self-titled second album, the trio recorded in their practice space with help from co-producer Don Alsterberg. ~ James Christopher Monger</p>\n');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 7, 'Killers and landing seven songs in the popular medical TV drama Grey’s Anatomy. In 2007, Tegan sang backup on a song on new Sire labelmate Against Me!’s album New Wave, and the twins, who had by then moved far from the singer/songwriter mold and were more interested in exploring pop, punk, and indie rock, came out with The Con, produced by Christopher Walla of Death Cab for Cutie. Working with Walla went well, and Tegan and Sara also utilized his production skills on their next album, 2009’s Sainthood. 2009 also found the duo collaborating with Tiësto on the song “Feel It in My Bones” for his album Kaleidoscope and with comedian Margaret Cho on the track “Intervention” from her Cho Dependent release.', '<p>Killers and landing seven songs in the popular medical TV drama Grey’s Anatomy. In 2007, Tegan sang backup on a song on new Sire labelmate Against Me!’s album New Wave, and the twins, who had by then moved far from the singer/songwriter mold and were more interested in exploring pop, punk, and indie rock, came out with The Con, produced by Christopher Walla of Death Cab for Cutie. Working with Walla went well, and Tegan and Sara also utilized his production skills on their next album, 2009’s Sainthood. 2009 also found the duo collaborating with Tiësto on the song “Feel It in My Bones” for his album Kaleidoscope and with comedian Margaret Cho on the track “Intervention” from her Cho Dependent release.</p>\n');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 8, 'Songwriter/producer Derek Miller and vocalist Alexis Krauss comprise Sleigh Bells, an experimental pop duo that began earning its first fans after a breakout performance at the 2009 CMJ Festival. The musicians formed the group in New York, where Miller (a Florida native and onetime member of hardcore act Poison ...', '<p>Songwriter/producer Derek Miller and vocalist Alexis Krauss comprise Sleigh Bells, an experimental pop duo that began earning its first fans after a breakout performance at the 2009 CMJ Festival. The musicians formed the group in New York, where Miller (a Florida native and onetime member of hardcore act Poison &#8230;</p>\n');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (51, 9, 'Originally known as the Whitey on the Moon UK, Department of Eagles blossomed from the recording project of two college roommates into purveyors of ambitious yet intimate music inspired by Van Dyke Parks and Paul McCartney. Fred Nicolaus and Daniel Rossen met in 2000, when they were assigned as each ...', '<p>Originally known as the Whitey on the Moon UK, Department of Eagles blossomed from the recording project of two college roommates into purveyors of ambitious yet intimate music inspired by Van Dyke Parks and Paul McCartney. Fred Nicolaus and Daniel Rossen met in 2000, when they were assigned as each &#8230;</p>\n');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 10, 'Although formed during the post-punk revival of the late \'90s, the National took inspiration from a wider set of influences, including country-rock, Americana, indie rock, and Brit-pop. The lineup began taking shape in Ohio and officially cemented itself in New York, with baritone vocalist Matt Berninger joining forces with two ...', '<p>Although formed during the post-punk revival of the late &#8217;90s, the National took inspiration from a wider set of influences, including country-rock, Americana, indie rock, and Brit-pop. The lineup began taking shape in Ohio and officially cemented itself in New York, with baritone vocalist Matt Berninger joining forces with two &#8230;</p>\n');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 19, 'Gothenburg, Sweden-based indie rock outfit Junip was formed in late \'90s by singer/songwriter Jose Gonzalez. The trio, which consists of Gonzalez on guitar and vocals, drummer Elias Araya, and keyboard player Tobia Winterkorn, crafts dark, moody, indie folk in the vein of their founder. Junip released their debut 7\" in 2000 on their own Kakafoni imprint. Araya then spent nearly five years studying art in Norway and Finland, while Winterkorn worked as a teacher and Gonzalez launched a successful solo career. The trio regrouped for the Black Refuge EP in 2006 and began writing and recording in earnest after Gonzalez finished promoting his album In Our Nature in 2007. The full-length result, Fields, arrived in 2010 on Mute Records. For 2013\'s more polished and more experimental self-titled second album, the trio recorded in their practice space with help from co-producer Don Alsterberg. ~ James Christopher Monger', '<p>Gothenburg, Sweden-based indie rock outfit Junip was formed in late &#8217;90s by singer/songwriter Jose Gonzalez. The trio, which consists of Gonzalez on guitar and vocals, drummer Elias Araya, and keyboard player Tobia Winterkorn, crafts dark, moody, indie folk in the vein of their founder. Junip released their debut 7&#8221; in 2000 on their own Kakafoni imprint. Araya then spent nearly five years studying art in Norway and Finland, while Winterkorn worked as a teacher and Gonzalez launched a successful solo career. The trio regrouped for the Black Refuge EP in 2006 and began writing and recording in earnest after Gonzalez finished promoting his album In Our Nature in 2007. The full-length result, Fields, arrived in 2010 on Mute Records. For 2013&#8217;s more polished and more experimental self-titled second album, the trio recorded in their practice space with help from co-producer Don Alsterberg. ~ James Christopher Monger</p>\n');

-- *** STRUCTURE:`tbl_entries_data_25` ***
DROP TABLE IF EXISTS`tbl_entries_data_25`;
CREATE TABLE`tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_25` ***
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (141, 1, 'moody', 'Moody');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (162, 8, 'lo-fi', 'Lo-Fi');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (145, 5, 'moody', 'Moody');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (144, 5, 'lo-fi', 'Lo-Fi');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 1, 'indie-rock', 'Indie-Rock');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (147, 7, 'indie-electric', 'Indie-Electric');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (143, 5, 'indie-folk', 'Indie-Folk');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (161, 8, 'indie-rock', 'Indie-Rock');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (160, 8, 'dark', 'Dark');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 9, 'dark', 'Dark');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (139, 10, 'moody', 'Moody');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (138, 10, 'indie-rock', 'Indie-Rock');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 9, 'indie-rock', 'Indie-Rock');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 5, 'dark', 'Dark');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (137, 10, 'dark', 'Dark');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 9, 'moody', 'Moody');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (159, 19, 'moody', 'Moody');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (158, 19, 'lo-fi', 'Lo-Fi');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (157, 19, 'indie-folk', 'Indie-Folk');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (156, 19, 'dark', 'Dark');

-- *** STRUCTURE:`tbl_entries_data_26` ***
DROP TABLE IF EXISTS`tbl_entries_data_26`;
CREATE TABLE`tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_26` ***
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 1, 'canadians-do-it-better', '\"Canadians Do It Better\"');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 5, 'mute-records-turns-it-up', 'Mute Records Turns It Up');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 7, 'eyelid-movements', 'Eyelid Movements');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 8, 'mute-records-turns-it-up', 'Mute Records Turns It Up');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 9, 'high-places', 'High Places');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 10, 'britain-joins-forces', 'Britain Joins Forces');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 19, 'in-dallas', 'In Dallas');

-- *** STRUCTURE:`tbl_entries_data_28` ***
DROP TABLE IF EXISTS`tbl_entries_data_28`;
CREATE TABLE`tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_28` ***
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 3, 'avignon', 'Avignon');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 13, 'the-con', 'The Con');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 14, 'sleigh-bells', 'Sleigh Bells');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 15, 'junip', 'Junip');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 16, 'the-national', 'The National');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 17, 'phantograms', 'Phantograms');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 18, 'department-of-eagles', 'Department of Eagles');

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 2, 'jennie-allen', 'JENNIE ALLEN');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 20, 'lauren-chandler', 'lauren chandler');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 21, 'christine-caine', 'christine caine');

-- *** STRUCTURE:`tbl_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 2, 'founder-and-visionary', 'Founder & Visionary');

-- *** STRUCTURE:`tbl_entries_data_32` ***
DROP TABLE IF EXISTS`tbl_entries_data_32`;
CREATE TABLE`tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_32` ***
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 2, 'http-jennieallencom-blog-its-time-a-new-movement-for-our-generation', 'http://jennieallen.com/blog/its-time-a-new-movement-for-our-generation/');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 20, 'http-laurenchandlercom-2013-06-ifgathering', 'http://laurenchandler.com/2013/06/ifgathering/');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 21, 'http-christinecainecom', 'http://christinecaine.com/');

-- *** STRUCTURE:`tbl_entries_data_34` ***
DROP TABLE IF EXISTS`tbl_entries_data_34`;
CREATE TABLE`tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_34` ***
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 2, 'bio_jennie-521cfc63f0c83.jpg', 11962, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-08-27T14:22:11-05:00\";s:5:\"width\";i:130;s:6:\"height\";i:130;}');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 20, 'bio_lauren-521cfc939e157.jpg', 10816, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-08-27T14:22:59-05:00\";s:5:\"width\";i:130;s:6:\"height\";i:130;}');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 21, 'bio_christine-521cfccb4f3f9.jpg', 10481, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-08-27T14:23:55-05:00\";s:5:\"width\";i:130;s:6:\"height\";i:130;}');

-- *** STRUCTURE:`tbl_entries_data_37` ***
DROP TABLE IF EXISTS`tbl_entries_data_37`;
CREATE TABLE`tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_37` ***
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (57, 5, 'no');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (56, 1, 'no');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (59, 7, 'yes');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (63, 8, 'yes');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (50, 9, 'yes');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (55, 10, 'yes');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (62, 19, 'yes');

-- *** STRUCTURE:`tbl_entries_data_38` ***
DROP TABLE IF EXISTS`tbl_entries_data_38`;
CREATE TABLE`tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_38` ***
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (55, 5, '2013-06-05 22:10:47', '2013-06-05 22:10:47');
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (54, 1, '2012-10-17 22:13:19', '2012-10-17 22:13:19');
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (57, 7, '2013-08-18 22:10:37', '2013-08-18 22:10:37');
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (61, 8, '2013-06-11 14:11:06', '2013-06-11 14:11:06');
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (48, 9, '2013-07-12 22:11:33', '2013-07-12 22:11:33');
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (53, 10, '2013-06-21 22:11:47', '2013-06-21 22:11:47');
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `start`, `end`) VALUES (60, 19, '2013-06-05 14:09:02', '2013-06-05 14:09:02');

-- *** STRUCTURE:`tbl_entries_data_39` ***
DROP TABLE IF EXISTS`tbl_entries_data_39`;
CREATE TABLE`tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_39` ***
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 4, 'telegraphcreative-gold-asteris-520d70d3c0e2c.png', 9070, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-08-15T19:22:43-05:00\";s:5:\"width\";i:150;s:6:\"height\";i:138;}');

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`) VALUES (5, 4, NULL);

-- *** STRUCTURE:`tbl_entries_data_40` ***
DROP TABLE IF EXISTS`tbl_entries_data_40`;
CREATE TABLE`tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_40` ***
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 4, 'telegraph-is-a-small-creative-shop-based-in-dallas-tx-with-a-passion-for-building-gorgeous-websites-and-memorable-brands', 'Telegraph is a small creative shop based in Dallas, TX with a passion for building gorgeous websites and memorable brands.');

-- *** STRUCTURE:`tbl_entries_data_41` ***
DROP TABLE IF EXISTS`tbl_entries_data_41`;
CREATE TABLE`tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_41` ***
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (1, 6, 5);

-- *** STRUCTURE:`tbl_entries_data_42` ***
DROP TABLE IF EXISTS`tbl_entries_data_42`;
CREATE TABLE`tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_42` ***
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (39, 10, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (40, 1, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (47, 8, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (43, 7, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (41, 5, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (34, 9, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (46, 19, NULL);

-- *** STRUCTURE:`tbl_entries_data_43` ***
DROP TABLE IF EXISTS`tbl_entries_data_43`;
CREATE TABLE`tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_43` ***

-- *** STRUCTURE:`tbl_entries_data_44` ***
DROP TABLE IF EXISTS`tbl_entries_data_44`;
CREATE TABLE`tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_44` ***

-- *** STRUCTURE:`tbl_entries_data_45` ***
DROP TABLE IF EXISTS`tbl_entries_data_45`;
CREATE TABLE`tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_45` ***

-- *** STRUCTURE:`tbl_entries_data_46` ***
DROP TABLE IF EXISTS`tbl_entries_data_46`;
CREATE TABLE`tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_46` ***

-- *** STRUCTURE:`tbl_entries_data_47` ***
DROP TABLE IF EXISTS`tbl_entries_data_47`;
CREATE TABLE`tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_47` ***

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 4, 'Telegraph is a small creative shop based in Dallas, TX with a passion for building gorgeous websites and memorable brands. We seek out starters, dreamers, and nonprofits because we want to be a part of your success story.\r\n\r\nWe join collective exploration, deliberate planning, elegant design, and industrious code to make your mark indelible.\r\n\r\nAdd a dash of curiosity and stir well.', '<p>Telegraph is a small creative shop based in Dallas, TX with a passion for building gorgeous websites and memorable brands. We seek out starters, dreamers, and nonprofits because we want to be a part of your success story.</p>\n\n<p>We join collective exploration, deliberate planning, elegant design, and industrious code to make your mark indelible.</p>\n\n<p>Add a dash of curiosity and stir well.</p>\n');

-- *** STRUCTURE:`tbl_entries_data_52` ***
DROP TABLE IF EXISTS`tbl_entries_data_52`;
CREATE TABLE`tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_52` ***
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `role_id`) VALUES (2, 11, 1);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `role_id`) VALUES (4, 12, 4);

-- *** STRUCTURE:`tbl_entries_data_53` ***
DROP TABLE IF EXISTS`tbl_entries_data_53`;
CREATE TABLE`tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_53` ***
INSERT INTO`tbl_entries_data_53` (`id`, `entry_id`, `value`) VALUES (2, 11, 'lindseyb@wearetelegraph.com');
INSERT INTO`tbl_entries_data_53` (`id`, `entry_id`, `value`) VALUES (4, 12, 'courtneyb@wearetelegraph.com');

-- *** STRUCTURE:`tbl_entries_data_54` ***
DROP TABLE IF EXISTS`tbl_entries_data_54`;
CREATE TABLE`tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`handle`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_54` ***
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `value`, `handle`) VALUES (2, 11, 'publicmember2121', 'publicmember2121');
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `value`, `handle`) VALUES (4, 12, 'portfolioAccess', 'portfolioaccess');

-- *** STRUCTURE:`tbl_entries_data_55` ***
DROP TABLE IF EXISTS`tbl_entries_data_55`;
CREATE TABLE`tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery-code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `reset` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recovery-code` (`recovery-code`),
  KEY `entry_id` (`entry_id`),
  KEY `length` (`length`),
  KEY `password` (`password`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_55` ***
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (2, 11, '95797e4885867909653d15780d68dd3fbc07d9e0', NULL, 16, 'good', 'no', NULL);
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (4, 12, '6e4f038af3b28384f43da4e416d8c94df9f09693', NULL, 15, 'good', 'no', NULL);

-- *** STRUCTURE:`tbl_entries_data_57` ***
DROP TABLE IF EXISTS`tbl_entries_data_57`;
CREATE TABLE`tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_57` ***
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 3, 'avignon-5212e9739a87e.jpg', 228381, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-08-19T22:58:43-05:00\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;}');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 18, 'square-600-4-5212eb226e928.jpg', 167806, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-08-19T23:05:54-05:00\";s:5:\"width\";i:600;s:6:\"height\";i:600;}');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 14, 'square-600-1-5212ec0874a3c.jpg', 109982, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-08-19T23:09:44-05:00\";s:5:\"width\";i:600;s:6:\"height\";i:600;}');

-- *** STRUCTURE:`tbl_entries_data_58` ***
DROP TABLE IF EXISTS`tbl_entries_data_58`;
CREATE TABLE`tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_58` ***
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `value`) VALUES (2, 2, 'no');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `value`) VALUES (3, 20, 'yes');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `value`) VALUES (4, 21, 'no');

-- *** STRUCTURE:`tbl_entries_data_59` ***
DROP TABLE IF EXISTS`tbl_entries_data_59`;
CREATE TABLE`tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_59` ***
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `value`) VALUES (2, 2, 'no');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `value`) VALUES (3, 20, 'no');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `value`) VALUES (4, 21, 'yes');

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_6` ***

-- *** STRUCTURE:`tbl_entries_data_60` ***
DROP TABLE IF EXISTS`tbl_entries_data_60`;
CREATE TABLE`tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_60` ***
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (2, 2, 'yes');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (3, 20, 'no');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (4, 21, 'no');

-- *** STRUCTURE:`tbl_entries_data_61` ***
DROP TABLE IF EXISTS`tbl_entries_data_61`;
CREATE TABLE`tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_61` ***
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 2, 'Jennie is a passionate leader following God’s call on her life to catalyze a generation of women to live what they believe. She currently has two studies, one book in publication and speaks nationally. Jennie is married to her best friend, Zac, and they have been blessed with 4 children, the youngest of whom was adopted from Rwanda.', '<p>Jennie is a passionate leader following God’s call on her life to catalyze a generation of women to live what they believe. She currently has two studies, one book in publication and speaks nationally. Jennie is married to her best friend, Zac, and they have been blessed with 4 children, the youngest of whom was adopted from Rwanda.</p>\n');
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 20, NULL, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 21, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_62` ***
DROP TABLE IF EXISTS`tbl_entries_data_62`;
CREATE TABLE`tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_62` ***

-- *** STRUCTURE:`tbl_entries_data_63` ***
DROP TABLE IF EXISTS`tbl_entries_data_63`;
CREATE TABLE`tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_63` ***
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 22, 'a-particularly-long-title-that-needs-a-lot-of-room', 'A PARTICULARLY LONG TITLE THAT NEEDS A LOT OF ROOM');

-- *** STRUCTURE:`tbl_entries_data_64` ***
DROP TABLE IF EXISTS`tbl_entries_data_64`;
CREATE TABLE`tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_64` ***
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 22, 'jennie-allen', 'Jennie Allen');

-- *** STRUCTURE:`tbl_entries_data_65` ***
DROP TABLE IF EXISTS`tbl_entries_data_65`;
CREATE TABLE`tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_65` ***
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 22, 'Fugiat delectus banh mi non biodiesel, 3 wolf moon magna cardigan 8-bit wayfarers kitsch. Williamsburg gluten-free id yr et, hashtag american apparel selfies Banksy sartorial. Twee Schlitz brunch, ethnic lomo blue bottle dreamcatcher photo booth excepteur Godard +1 craft beer blog quinoa organic. Letterpress tumblr deserunt polaroid. Commodo PBR cray, helvetica mumblecore ex lomo irony. Sartorial craft beer ethical adipisicing ugh. Next level sunt PBR, fanny pack vinyl beard keffiyeh Portland shoreditch Truffaut fixie single-origin coffee kale chips.\r\n\r\nEsse shabby chic master cleanse skateboard nostrud, Echo Park anim whatever occaecat church-key before they sold out reprehenderit non fixie cillum. Tote bag asymmetrical qui, Terry Richardson Cosby sweater Wes Anderson put a bird on it cred veniam cray pork belly. Narwhal sunt cupidatat, disrupt jean shorts Thundercats minim Portland irure. Truffaut consectetur ea, art party placeat non vero fashion axe. Culpa cillum jean shorts aliqua. Nisi flannel ut vero, anim art party twee mustache fashion axe semiotics Odd Future selfies pug typewriter. Umami non occaecat, fingerstache cred Shoreditch sriracha chillwave fanny pack authentic tattooed.\r\n\r\nFlannel gentrify laboris assumenda 3 wolf moon. Thundercats Marfa banjo, culpa butcher organic flexitarian. Lomo viral laborum esse, qui kale chips quinoa. Kogi odio tattooed culpa trust fund. Vegan accusamus master cleanse pug, forage gluten-free consectetur fixie enim Cosby sweater est raw denim dolore veniam. Asymmetrical PBR craft beer, hella deep v nisi tote bag Portland odio semiotics yr keytar aliquip four loko sint. Dolor master cleanse deep v, Austin deserunt brunch consectetur keytar.\r\n\r\nRaw denim delectus occupy, Bushwick semiotics church-key qui cardigan sint lomo est quinoa. Excepteur fingerstache occupy 8-bit VHS. Tumblr meggings kale chips Tonx, Thundercats magna cillum gentrify letterpress messenger bag. Nihil Helvetica irure Tumblr, artisan vinyl Bushwick post-ironic iPhone master cleanse hella pork belly. Lo-fi Odd Future proident, consectetur wayfarers chillwave pickled High Life irure deserunt PBR qui. IPhone food truck literally chillwave duis pop-up, nulla raw denim quinoa asymmetrical bespoke adipisicing Helvetica. Etsy before they sold out pork belly, viral biodiesel art party incididunt gluten-free keffiyeh ea kogi.\r\n\r\nBushwick you probably haven\'t heard of them pour-over proident salvia. Aute bicycle rights aliqua banjo American Apparel delectus. Hashtag ad polaroid organic, cray magna direct trade cornhole excepteur consectetur enim wolf. Pop-up Marfa nesciunt photo booth, squid authentic Vice. Tousled cardigan selfies banh mi retro, meggings viral blog wolf you probably haven\'t heard of them. Etsy laboris squid quinoa locavore, Banksy nisi aliqua you probably haven\'t heard of them next level pour-over biodiesel esse sustainable before they sold out. Irony sint anim, keffiyeh Marfa VHS next level selvage skateboard aute cillum direct trade fingerstache cred Carles.', '<p>Fugiat delectus banh mi non biodiesel, 3 wolf moon magna cardigan 8-bit wayfarers kitsch. Williamsburg gluten-free id yr et, hashtag american apparel selfies Banksy sartorial. Twee Schlitz brunch, ethnic lomo blue bottle dreamcatcher photo booth excepteur Godard +1 craft beer blog quinoa organic. Letterpress tumblr deserunt polaroid. Commodo PBR cray, helvetica mumblecore ex lomo irony. Sartorial craft beer ethical adipisicing ugh. Next level sunt PBR, fanny pack vinyl beard keffiyeh Portland shoreditch Truffaut fixie single-origin coffee kale chips.</p>\n\n<p>Esse shabby chic master cleanse skateboard nostrud, Echo Park anim whatever occaecat church-key before they sold out reprehenderit non fixie cillum. Tote bag asymmetrical qui, Terry Richardson Cosby sweater Wes Anderson put a bird on it cred veniam cray pork belly. Narwhal sunt cupidatat, disrupt jean shorts Thundercats minim Portland irure. Truffaut consectetur ea, art party placeat non vero fashion axe. Culpa cillum jean shorts aliqua. Nisi flannel ut vero, anim art party twee mustache fashion axe semiotics Odd Future selfies pug typewriter. Umami non occaecat, fingerstache cred Shoreditch sriracha chillwave fanny pack authentic tattooed.</p>\n\n<p>Flannel gentrify laboris assumenda 3 wolf moon. Thundercats Marfa banjo, culpa butcher organic flexitarian. Lomo viral laborum esse, qui kale chips quinoa. Kogi odio tattooed culpa trust fund. Vegan accusamus master cleanse pug, forage gluten-free consectetur fixie enim Cosby sweater est raw denim dolore veniam. Asymmetrical PBR craft beer, hella deep v nisi tote bag Portland odio semiotics yr keytar aliquip four loko sint. Dolor master cleanse deep v, Austin deserunt brunch consectetur keytar.</p>\n\n<p>Raw denim delectus occupy, Bushwick semiotics church-key qui cardigan sint lomo est quinoa. Excepteur fingerstache occupy 8-bit VHS. Tumblr meggings kale chips Tonx, Thundercats magna cillum gentrify letterpress messenger bag. Nihil Helvetica irure Tumblr, artisan vinyl Bushwick post-ironic iPhone master cleanse hella pork belly. Lo-fi Odd Future proident, consectetur wayfarers chillwave pickled High Life irure deserunt PBR qui. IPhone food truck literally chillwave duis pop-up, nulla raw denim quinoa asymmetrical bespoke adipisicing Helvetica. Etsy before they sold out pork belly, viral biodiesel art party incididunt gluten-free keffiyeh ea kogi.</p>\n\n<p>Bushwick you probably haven&#8217;t heard of them pour-over proident salvia. Aute bicycle rights aliqua banjo American Apparel delectus. Hashtag ad polaroid organic, cray magna direct trade cornhole excepteur consectetur enim wolf. Pop-up Marfa nesciunt photo booth, squid authentic Vice. Tousled cardigan selfies banh mi retro, meggings viral blog wolf you probably haven&#8217;t heard of them. Etsy laboris squid quinoa locavore, Banksy nisi aliqua you probably haven&#8217;t heard of them next level pour-over biodiesel esse sustainable before they sold out. Irony sint anim, keffiyeh Marfa VHS next level selvage skateboard aute cillum direct trade fingerstache cred Carles.</p>\n');

-- *** STRUCTURE:`tbl_entries_data_66` ***
DROP TABLE IF EXISTS`tbl_entries_data_66`;
CREATE TABLE`tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_66` ***
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 22, 'leadership', 'Leadership');
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 22, 'bespoke', 'Bespoke');

-- *** STRUCTURE:`tbl_entries_data_67` ***
DROP TABLE IF EXISTS`tbl_entries_data_67`;
CREATE TABLE`tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_67` ***

-- *** STRUCTURE:`tbl_entries_data_69` ***
DROP TABLE IF EXISTS`tbl_entries_data_69`;
CREATE TABLE`tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_69` ***
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `relation_id`) VALUES (2, 22, 21);

-- *** STRUCTURE:`tbl_entries_data_7` ***
DROP TABLE IF EXISTS`tbl_entries_data_7`;
CREATE TABLE`tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_7` ***
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `value`) VALUES (5, 4, NULL);

-- *** STRUCTURE:`tbl_entries_data_70` ***
DROP TABLE IF EXISTS`tbl_entries_data_70`;
CREATE TABLE`tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_70` ***
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `start`, `end`) VALUES (2, 22, '2013-09-14 14:35:41', '2013-09-14 14:35:41');

-- *** STRUCTURE:`tbl_entries_data_72` ***
DROP TABLE IF EXISTS`tbl_entries_data_72`;
CREATE TABLE`tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_72` ***
INSERT INTO`tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (2, 22, 'yes');

-- *** STRUCTURE:`tbl_entries_data_73` ***
DROP TABLE IF EXISTS`tbl_entries_data_73`;
CREATE TABLE`tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_73` ***
INSERT INTO`tbl_entries_data_73` (`id`, `entry_id`, `value`) VALUES (2, 22, NULL);

-- *** STRUCTURE:`tbl_entries_data_74` ***
DROP TABLE IF EXISTS`tbl_entries_data_74`;
CREATE TABLE`tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_74` ***

-- *** STRUCTURE:`tbl_entries_data_75` ***
DROP TABLE IF EXISTS`tbl_entries_data_75`;
CREATE TABLE`tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_75` ***

-- *** STRUCTURE:`tbl_entries_data_76` ***
DROP TABLE IF EXISTS`tbl_entries_data_76`;
CREATE TABLE`tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_76` ***

-- *** STRUCTURE:`tbl_entries_data_77` ***
DROP TABLE IF EXISTS`tbl_entries_data_77`;
CREATE TABLE`tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_77` ***
INSERT INTO`tbl_entries_data_77` (`id`, `entry_id`, `relation_id`) VALUES (1, 23, 21);

-- *** STRUCTURE:`tbl_entries_data_78` ***
DROP TABLE IF EXISTS`tbl_entries_data_78`;
CREATE TABLE`tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_78` ***

-- *** STRUCTURE:`tbl_entries_data_79` ***
DROP TABLE IF EXISTS`tbl_entries_data_79`;
CREATE TABLE`tbl_entries_data_79` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_79` ***

-- *** STRUCTURE:`tbl_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 4, 'ua-0000000-xx', 'UA-0000000-XX');

-- *** STRUCTURE:`tbl_entries_data_80` ***
DROP TABLE IF EXISTS`tbl_entries_data_80`;
CREATE TABLE`tbl_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_80` ***
INSERT INTO`tbl_entries_data_80` (`id`, `entry_id`, `value`) VALUES (1, 24, NULL);

-- *** STRUCTURE:`tbl_entries_data_81` ***
DROP TABLE IF EXISTS`tbl_entries_data_81`;
CREATE TABLE`tbl_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_81` ***
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `relation_id`) VALUES (1, 24, 21);
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `relation_id`) VALUES (2, 24, 2);
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `relation_id`) VALUES (3, 24, 20);

-- *** STRUCTURE:`tbl_entries_data_82` ***
DROP TABLE IF EXISTS`tbl_entries_data_82`;
CREATE TABLE`tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_82` ***
INSERT INTO`tbl_entries_data_82` (`id`, `entry_id`, `value`) VALUES (1, 24, NULL);

-- *** STRUCTURE:`tbl_entries_data_84` ***
DROP TABLE IF EXISTS`tbl_entries_data_84`;
CREATE TABLE`tbl_entries_data_84` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_84` ***

-- *** STRUCTURE:`tbl_entries_data_9` ***
DROP TABLE IF EXISTS`tbl_entries_data_9`;
CREATE TABLE`tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_9` ***
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 4, 'hand-coded-bad-a', 'hand-coded, bad-a');

-- *** DATA:`tbl_author_roles` ***
INSERT INTO`tbl_author_roles` (`id`, `name`, `custom_elements`) VALUES (2, 'Post Manager', '/extension/members/roles/\r\n/system/authors/');

-- *** DATA:`tbl_author_roles_authors` ***
INSERT INTO`tbl_author_roles_authors` (`id`, `id_role`, `id_author`) VALUES (1, 2, 2);

-- *** DATA:`tbl_author_roles_fields` ***

-- *** DATA:`tbl_author_roles_sections` ***
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (92, 2, 5, 0, 0, 0, 0, 0, 0, 'show:');
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (93, 2, 3, 0, 0, 0, 0, 0, 0, 'show:');
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (94, 2, 6, 0, 0, 0, 0, 0, 0, 'show:');
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (95, 2, 7, 0, 0, 0, 0, 0, 0, 'show:');
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (96, 2, 4, 0, 0, 0, 0, 0, 0, 'show:');
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (97, 2, 2, 1, 1, 1, 1, 0, 0, 'show:');
INSERT INTO`tbl_author_roles_sections` (`id`, `id_role`, `id_section`, `visible`, `create`, `edit`, `delete`, `own_entries`, `use_filter`, `filter_rule`) VALUES (98, 2, 1, 0, 0, 0, 0, 0, 0, 'show:');

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 2, 1, '2013-08-15 18:43:54', '2013-08-15 23:43:54', '2013-08-19 22:14:46', '2013-08-20 03:14:46');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 4, 1, '2013-08-15 18:51:25', '2013-08-15 23:51:25', '2013-08-27 14:22:12', '2013-08-27 19:22:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 3, 1, '2013-08-15 18:51:57', '2013-08-15 23:51:57', '2013-08-19 22:58:43', '2013-08-20 03:58:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 1, 1, '2013-08-15 19:12:54', '2013-08-16 00:12:54', '2013-08-15 22:17:27', '2013-08-16 03:17:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 2, 1, '2013-08-15 19:31:56', '2013-08-16 00:31:56', '2013-08-19 22:14:46', '2013-08-20 03:14:46');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 5, 1, '2013-08-15 19:33:28', '2013-08-16 00:33:28', '2013-08-15 19:33:28', '2013-08-16 00:33:28');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 2, 1, '2013-08-16 11:06:13', '2013-08-16 16:06:13', '2013-08-19 22:35:33', '2013-08-20 03:35:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 2, 1, '2013-08-16 12:27:49', '2013-08-16 17:27:49', '2013-08-20 14:11:06', '2013-08-20 19:11:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 2, 1, '2013-08-16 12:28:53', '2013-08-16 17:28:53', '2013-08-19 22:11:33', '2013-08-20 03:11:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 2, 1, '2013-08-16 14:12:05', '2013-08-16 19:12:05', '2013-08-19 22:14:35', '2013-08-20 03:14:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 7, 1, '2013-08-17 11:00:35', '2013-08-17 16:00:35', '2013-08-17 11:21:00', '2013-08-17 16:21:00');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 7, 1, '2013-08-17 11:24:25', '2013-08-17 16:24:25', '2013-08-17 11:24:35', '2013-08-17 16:24:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 3, 1, '2013-08-19 22:08:44', '2013-08-20 03:08:44', '2013-08-19 22:08:44', '2013-08-20 03:08:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (14, 3, 1, '2013-08-19 22:09:24', '2013-08-20 03:09:24', '2013-08-19 23:09:44', '2013-08-20 04:09:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (15, 3, 1, '2013-08-19 22:09:53', '2013-08-20 03:09:53', '2013-08-19 22:09:53', '2013-08-20 03:09:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 3, 1, '2013-08-19 22:10:13', '2013-08-20 03:10:13', '2013-08-19 22:10:13', '2013-08-20 03:10:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (17, 3, 1, '2013-08-19 22:10:34', '2013-08-20 03:10:34', '2013-08-19 22:10:34', '2013-08-20 03:10:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (18, 3, 1, '2013-08-19 22:11:32', '2013-08-20 03:11:32', '2013-08-19 23:05:54', '2013-08-20 04:05:54');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (19, 2, 1, '2013-08-20 14:08:45', '2013-08-20 19:08:45', '2013-08-20 14:09:02', '2013-08-20 19:09:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (20, 4, 1, '2013-08-27 14:22:59', '2013-08-27 19:22:59', '2013-08-27 14:22:59', '2013-08-27 19:22:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (21, 4, 1, '2013-08-27 14:23:55', '2013-08-27 19:23:55', '2013-08-27 14:23:55', '2013-08-27 19:23:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (22, 8, 1, '2013-08-27 14:33:30', '2013-08-27 19:33:30', '2013-08-27 14:35:41', '2013-08-27 19:35:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (23, 12, 1, '2013-08-27 14:41:48', '2013-08-27 19:41:48', '2013-08-27 14:41:48', '2013-08-27 19:41:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (24, 13, 1, '2013-08-27 14:48:20', '2013-08-27 19:48:20', '2013-08-27 14:48:20', '2013-08-27 19:48:20');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'admin_css_override', 'enabled', 1.4);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'xssfilter', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'debugdevkit', 'enabled', '1.2.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'export_ensemble', 'enabled', '2.0.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'jit_image_manipulation', 'enabled', 1.19);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'maintenance_mode', 'enabled', 1.7);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'markdown', 'enabled', 1.17);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'profiledevkit', 'enabled', 1.3);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'publishnotesfield', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'selectbox_link_field', 'enabled', 1.28);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'dont_drop', 'enabled', 1.4);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'html5_doctype', 'enabled', '1.3.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (34, 'image_index_preview', 'enabled', 1.4);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'limit_section_entries', 'enabled', '1.1.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'order_entries', 'enabled', '1.10.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'publish_tabs', 'enabled', '1.1.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'subsectionmanager', 'enabled', '3.5.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'tooltip', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'uniqueuploadfield', 'enabled', '1.8.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'addresslocationfield', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'datetime', 'enabled', '3.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'duplicate_section', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'markdown_editor', 'enabled', 1.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'duplicate_entry', 'enabled', 1.3);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (25, 'entry_nav', 'enabled', '1.0.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (26, 'publish_shortcuts', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (27, 'search_index', 'enabled', '0.9.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (28, 'section_schemas', 'enabled', 2.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (29, 'members', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (30, 'author_roles', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (31, 'html_panel', 'enabled', '1.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (33, 'unpublishedfilter', 'enabled', 1.4);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (35, 'oembed_field', 'enabled', 1.6);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (36, 'repeating_date_field', 'disabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (37, 'client_logo', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (38, 'field_metakeys', 'enabled', 1.2);

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (86, 1, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (159, 2, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (158, 2, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (98, 3, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (97, 3, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (104, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (109, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (121, 6, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (120, 6, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (119, 6, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (118, 6, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (117, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (139, 8, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (138, 8, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (144, 9, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (99, 11, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (107, 12, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (106, 12, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (105, 12, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (108, 34, '/backend/', 'InitaliseAdminPageHead', 'InitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (115, 14, '/blueprints/sections/', 'SectionPreCreate', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (114, 14, '/blueprints/sections/', 'AddSectionElements', 'dAddSectionElements');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (113, 14, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (112, 14, '/backend/', 'AppendPageAlert', 'dAppendPageAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (111, 14, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (137, 15, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (143, 16, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (154, 17, '/blueprints/datasources/', 'DatasourcePreDelete', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (153, 17, '/blueprints/datasources/', 'DatasourcePostEdit', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (152, 17, '/blueprints/datasources/', 'DatasourcePostCreate', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (151, 17, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (156, 18, '/backend/', 'InitaliseAdminPageHead', 'addScriptToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (95, 21, '/system/preferences/', 'AddCustomPreferenceFieldsets', '__addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (101, 22, '/backend/', 'AdminPagePreGenerate', '__action');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (124, 23, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (100, 24, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (103, 25, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (102, 25, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (141, 26, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (140, 26, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (149, 27, '/backend/', 'DashboardPanelRender', 'renderPanel');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (148, 27, '/frontend/', 'EventPostSaveFilter', 'indexEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (147, 27, '/publish/', 'EntryPostDelete', 'deleteEntryIndex');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (146, 27, '/publish/edit/', 'EntryPostEdit', 'indexEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (145, 27, '/publish/new/', 'EntryPostCreate', 'indexEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (132, 29, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (131, 29, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (130, 29, '/backend/', 'AdminPagePreGenerate', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (129, 29, '/frontend/', 'EventPostSaveFilter', 'processPostSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (128, 29, '/frontend/', 'EventPreSaveFilter', 'checkEventPermissions');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (127, 29, '/frontend/', 'FrontendProcessEvents', 'appendLoginStatusToEventXML');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (126, 29, '/frontend/', 'FrontendParamsResolve', 'addMemberDetailsToPageParams');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (125, 29, '/frontend/', 'FrontendPageResolved', 'checkFrontendPagePermissions');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (92, 30, '/backend/', 'AdminPagePreGenerate', 'checkCallback');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (91, 30, '/system/authors/', 'AddElementstoAuthorForm', 'addRolePicker');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (90, 30, '/system/authors/', 'AuthorPostEdit', 'saveAuthorRole');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (89, 30, '/system/authors/', 'AuthorPostCreate', 'saveAuthorRole');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (88, 30, '/system/authors/', 'AuthorPreDelete', 'deleteAuthorRole');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (87, 30, '/backend/', 'NavigationPreRender', 'extendNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (157, 33, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (93, 30, '/backend/', 'InitaliseAdminPageHead', 'makePreAdjustements');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (94, 30, '/system/authors/', 'AddDefaultAuthorAreas', 'modifyAreas');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (96, 21, '/system/preferences/', 'Save', '__savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (110, 5, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (116, 14, '/blueprints/sections/', 'SectionPreEdit', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (122, 6, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (123, 6, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (133, 29, '/blueprints/events/new/', 'AppendEventFilter', 'appendFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (134, 29, '/blueprints/events/edit/', 'AppendEventFilter', 'appendFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (135, 35, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (136, 35, '*', 'AppendContentType', 'appendContentType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (142, 26, '/system/preferences/', 'Save', 'save');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (150, 27, '/backend/', 'DashboardPanelTypes', 'dashboardPanelTypes');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (155, 17, '/frontend/', 'DataSourceEntriesBuilt', '__prepareSubsection');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (160, 2, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (161, 37, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (162, 37, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (163, 37, '/system/preferences/', 'Save', 'savePreferences');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Twitter', 'twitter', 'input', 1, 'no', 9, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Facebook', 'facebook', 'input', 1, 'no', 8, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Google +', 'google', 'input', 1, 'no', 10, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'About', 'about', 'publish_tabs', 1, 'no', 0, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'About', 'about-site', 'textarea', 1, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Instagram', 'instagram', 'input', 1, 'no', 7, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Meta &amp; Analytics', 'meta-and-analytics', 'publish_tabs', 1, 'no', 13, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Google Analytics ID', 'google-analytics-id', 'input', 1, 'no', 14, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Meta Keywords', 'meta-keywords', 'input', 1, 'no', 16, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Meta Description', 'meta-description', 'input', 1, 'no', 17, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Meta Author', 'meta-author', 'input', 1, 'no', 15, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'APIs', 'apis', 'publish_tabs', 1, 'no', 19, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Typekit ID', 'typekit-id', 'input', 1, 'no', 20, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'MapBox ID', 'mapbox-id', 'input', 1, 'no', 21, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Email (main)', 'email-main', 'input', 1, 'no', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Phone (main)', 'phone-main', 'input', 1, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Fax (main)', 'fax-main', 'input', 1, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Location', 'location', 'addresslocation', 1, 'no', 5, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Social', 'social', 'publish_tabs', 1, 'no', 6, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Pinterest', 'pinterest', 'input', 1, 'no', 11, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Flickr', 'flickr', 'input', 1, 'no', 12, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Header', 'header', 'input', 2, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Article', 'article', 'textarea', 2, 'no', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'People', 'people', 'subsectionmanager', 12, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Tags', 'tags', 'taglist', 2, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Sub-Header', 'sub-header', 'input', 2, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Title/Caption', 'title-caption', 'input', 3, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Image', 'image', 'uniqueupload', 3, 'no', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Name', 'name', 'input', 4, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Title/Position', 'title-position', 'input', 4, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Website', 'email-website', 'input', 4, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Profile Image', 'profile-image', 'uniqueupload', 4, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'What If? Description', 'what-if-description', 'input', 11, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Feature Image', 'feature-image', 'uniqueupload', 9, 'no', 0, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Published', 'publish', 'checkbox', 2, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Date ', 'date', 'datetime', 2, 'yes', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Bookmark/Favicon', 'bookmark', 'uniqueupload', 1, 'no', 18, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Feature Article', 'feature-article', 'selectbox_link', 5, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Search Posts', 'search-posts', 'search_index', 2, 'no', 6, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'First Name', 'first-name', 'input', 6, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Last Name', 'last-name', 'input', 6, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Email', 'email', 'input', 6, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Memo', 'memo', 'textarea', 6, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Responded To', 'responded-to', 'checkbox', 6, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Password', 'password', 'memberpassword', 7, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Username', 'username', 'memberusername', 7, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Email', 'email', 'memberemail', 7, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Role', 'role', 'memberrole', 7, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Leader', 'leader', 'checkbox', 4, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Advisor', 'advisor', 'checkbox', 4, 'no', 6, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Core Member', 'core-member', 'checkbox', 4, 'no', 7, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'About', 'about', 'textarea', 4, 'no', 8, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Email', 'email', 'input', 4, 'no', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Header', 'header', 'input', 8, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Author', 'Author', 'input', 8, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Article', 'article', 'textarea', 8, 'no', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Tags', 'tags', 'taglist', 8, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Banner Image', 'banner-image', 'uniqueupload', 8, 'no', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'People', 'people', 'subsectionmanager', 8, 'no', 5, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Date ', 'date', 'datetime', 8, 'yes', 6, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'Unleash Description', 'unleash-description', 'input', 10, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Published', 'publish', 'checkbox', 8, 'no', 7, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Search Posts', 'search-posts', 'search_index', 8, 'no', 8, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (78, 'Audio ', 'audio', 'uniqueupload', 12, 'no', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (79, 'Description', 'description', 'input', 13, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (80, 'Who We Are', 'who-we-are', 'publish_tabs', 13, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (81, 'People', 'people', 'subsectionmanager', 13, 'no', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (82, 'Values', 'values', 'publish_tabs', 13, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (84, 'Value', 'value', 'input', 13, 'no', 4, 'main', 'yes');

-- *** DATA:`tbl_members_roles` ***
INSERT INTO`tbl_members_roles` (`id`, `name`, `handle`) VALUES (1, 'Public', 'public');
INSERT INTO`tbl_members_roles` (`id`, `name`, `handle`) VALUES (2, 'Blog Admin', 'blog-admin');
INSERT INTO`tbl_members_roles` (`id`, `name`, `handle`) VALUES (3, 'Writer', 'writer');
INSERT INTO`tbl_members_roles` (`id`, `name`, `handle`) VALUES (4, 'Portfolio Access', 'portfolio-access');

-- *** DATA:`tbl_members_roles_event_permissions` ***
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (1, 2, 'save_inquiry_form', 'edit', 0);
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (2, 3, 'save_inquiry_form', 'edit', 0);
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (4, 4, 'save_inquiry_form', 'create', 0);
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (5, 4, 'save_inquiry_form', 'edit', 0);
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (6, 1, 'save_inquiry_form', 'create', 0);
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (7, 1, 'save_inquiry_form', 'edit', 0);

-- *** DATA:`tbl_members_roles_forbidden_pages` ***
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (1, 2, 1);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (2, 2, 2);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (3, 2, 4);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (4, 2, 5);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (5, 2, 6);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (6, 2, 7);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (8, 1, 5);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (9, 1, 7);
INSERT INTO`tbl_members_roles_forbidden_pages` (`id`, `role_id`, `page_id`) VALUES (10, 1, 9);

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Post', 'post', NULL, 'header', 'logged_in_author,navigation,posts,profile', NULL, 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Archive', 'archive', NULL, 'filter', 'filter_posts_by_date,logged_in_author,navigation,post_tags,posts_no_pagination,profile', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'Posts', 'posts', NULL, 'url-p', 'logged_in_author,navigation,posts,profile', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'Drafts', 'drafts', NULL, 'url-p', 'drafts,logged_in_author,navigation,profile', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'Search', 'search', NULL, 'url-keywords', 'logged_in_author,navigation,profile,search,search_suggestions,search_post_results', NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'Draft', 'draft', NULL, 'header', 'drafts,logged_in_author,navigation,profile', NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, NULL, 'Sign In', 'sign-in', NULL, NULL, 'logged_in_author,members,navigation,profile', 'members_activate_account,members_generate_recovery_code,members_regenerate_activation_code,members_reset_password', 8);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Private Portfolio', 'private-portfolio', NULL, NULL, 'drafts,logged_in_author,members,navigation,posts,profile', NULL, 9);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (5, 1, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (28, 5, 'admin');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (26, 7, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (13, 4, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (21, 8, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (22, 9, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (29, 5, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (27, 7, 'admin');

-- *** DATA:`tbl_publish_shortcuts` ***
INSERT INTO`tbl_publish_shortcuts` (`id`, `label`, `link`, `section_id`, `sort_order`) VALUES (11, 'View Drafts', '{$root}/drafts', 2, 0);
INSERT INTO`tbl_publish_shortcuts` (`id`, `label`, `link`, `section_id`, `sort_order`) VALUES (12, 'View Posts', '{$root}/posts', 2, 1);

-- *** DATA:`tbl_search_index` ***
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (39, 9, 2, 'Department of Eagles High Places Originally known as the Whitey on the Moon UK, Department of Eagles blossomed from the recording project of two college roommates into purveyors of ambitious yet intimate music inspired by Van Dyke Parks and Paul McCartney. Fred Nicolaus and Daniel Rossen met in 2000, when they were assigned as each ... Dark Indie-Rock Moody');
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (52, 8, 2, 'Sleigh Bells Mute Records Turns It Up Songwriter/producer Derek Miller and vocalist Alexis Krauss comprise Sleigh Bells, an experimental pop duo that began earning its first fans after a breakout performance at the 2009 CMJ Festival. The musicians formed the group in New York, where Miller (a Florida native and onetime member of hardcore act Poison ... Dark Indie-Rock Lo-Fi');
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (48, 7, 2, 'Phantogram Eyelid Movements Killers and landing seven songs in the popular medical TV drama Grey’s Anatomy. In 2007, Tegan sang backup on a song on new Sire labelmate Against Me!’s album New Wave, and the twins, who had by then moved far from the singer/songwriter mold and were more interested in exploring pop, punk, and indie rock, came out with The Con, produced by Christopher Walla of Death Cab for Cutie. Working with Walla went well, and Tegan and Sara also utilized his production skills on their next album, 2009’s Sainthood. 2009 also found the duo collaborating with Tiësto on the song “Feel It in My Bones” for his album Kaleidoscope and with comedian Margaret Cho on the track “Intervention” from her Cho Dependent release. Indie-Electric');
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (46, 5, 2, 'Junip Mute Records Turns It Up Gothenburg, Sweden-based indie rock outfit Junip was formed in late \'90s by singer/songwriter Jose Gonzalez. The trio, which consists of Gonzalez on guitar and vocals, drummer Elias Araya, and keyboard player Tobia Winterkorn, crafts dark, moody, indie folk in the vein of their founder. Junip released their debut 7\" in 2000 on their own Kakafoni imprint. Araya then spent nearly five years studying art in Norway and Finland, while Winterkorn worked as a teacher and Gonzalez launched a successful solo career. The trio regrouped for the Black Refuge EP in 2006 and began writing and recording in earnest after Gonzalez finished promoting his album In Our Nature in 2007. The full-length result, Fields, arrived in 2010 on Mute Records. For 2013\'s more polished and more experimental self-titled second album, the trio recorded in their practice space with help from co-producer Don Alsterberg. ~ James Christopher Monger Dark Indie-Folk Lo-Fi Moody');
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (45, 1, 2, 'Tegan & Sara \"Canadians Do It Better\" Folk-rock duo Tegan and Sara first burst onto the Canadian music scene in 1998, when they earned the highest score in history at Calgary\'s \"Garage Warz\" competition; their quick rise didn\'t stop, for their melodic acoustics and charming stage personas led to a slew of dates with Sarah McLachlan\'s Lilith Fair that same year and a record deal with Neil Young\'s Vapor Records in April 2000. Natives of Calgary, these twin sisters derived their music interests from their parents. Tegan and Sara began playing piano at age eight, and in their teens they were skanking around in their own punk bands. This Business of Art, which was produced by singer/songwriter Hawksley Workman, marked their debut in mid-2000, and a summer tour with Neil Young and the Pretenders followed in July. Two years later, Tegan and Sara released If It Was You, followed in 2004 by their commercial breakthrough, So Jealous. In 2005, the White Stripes released a popular cover of If It Was You\'s \"Walking with a Ghost.\" That same year saw the duo touring the U.S. with the Killers and landing seven songs in the popular medical TV drama Grey\'s Anatomy. In 2007, Tegan sang backup on a song on new Sire labelmate Against Me!\'s album New Wave, and the twins, who had by then moved far from the singer/songwriter mold and were more interested in exploring pop, punk, and indie rock, came out with The Con, produced by Christopher Walla of Death Cab for Cutie. Working with Walla went well, and Tegan and Sara also utilized his production skills on their next album, 2009\'s Sainthood. 2009 also found the duo collaborating with Tiësto on the song \"Feel It in My Bones\" for his album Kaleidoscope and with comedian Margaret Cho on the track \"Intervention\" from her Cho Dependent release. 2011\'s live CD/DVD Get Along was paired with three short behind-the-scenes films called States, India, and For the Most Part. On their seventh studio album, the duo turned to producer Greg Kurstin (Lily Allen, Kelly Clarkson, Ke$ha) for help in making an album that reflected the modern pop sound. The very slick, yet still emotionally powerful Heartthob was released in early 2013. ~ MacKenzie Wilson Indie-Rock Moody');
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (44, 10, 2, 'The National Britain Joins Forces Although formed during the post-punk revival of the late \'90s, the National took inspiration from a wider set of influences, including country-rock, Americana, indie rock, and Brit-pop. The lineup began taking shape in Ohio and officially cemented itself in New York, with baritone vocalist Matt Berninger joining forces with two ... Dark Indie-Rock Moody');
INSERT INTO`tbl_search_index` (`id`, `entry_id`, `section_id`, `data`) VALUES (51, 19, 2, 'Phosphorescent In Dallas Gothenburg, Sweden-based indie rock outfit Junip was formed in late \'90s by singer/songwriter Jose Gonzalez. The trio, which consists of Gonzalez on guitar and vocals, drummer Elias Araya, and keyboard player Tobia Winterkorn, crafts dark, moody, indie folk in the vein of their founder. Junip released their debut 7\" in 2000 on their own Kakafoni imprint. Araya then spent nearly five years studying art in Norway and Finland, while Winterkorn worked as a teacher and Gonzalez launched a successful solo career. The trio regrouped for the Black Refuge EP in 2006 and began writing and recording in earnest after Gonzalez finished promoting his album In Our Nature in 2007. The full-length result, Fields, arrived in 2010 on Mute Records. For 2013\'s more polished and more experimental self-titled second album, the trio recorded in their practice space with help from co-producer Don Alsterberg. ~ James Christopher Monger Dark Indie-Folk Lo-Fi Moody');

-- *** DATA:`tbl_search_index_entry_keywords` ***
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2065, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2064, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2063, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2062, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2061, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2060, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2059, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2058, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2057, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2056, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2055, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2054, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2053, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2052, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2051, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2050, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2049, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2048, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2047, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2046, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2045, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2044, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2043, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2042, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2041, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2040, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2039, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2038, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 2037, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 43, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 42, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 41, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 38, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 37, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 36, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 35, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 27, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 22, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 20, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 14, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 12, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 11, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (9, 7, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2733, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2732, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2731, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2730, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2729, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2728, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2727, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2726, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2725, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2724, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2723, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2722, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2721, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2720, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2719, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2718, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2717, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2716, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2715, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2714, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2713, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2712, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2711, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2710, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2709, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 2694, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 75, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 74, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 72, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 68, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 65, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 63, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 60, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 59, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 58, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 57, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 56, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 52, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 48, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 47, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 46, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 42, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 41, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 27, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (8, 7, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 2704, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 2703, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 2702, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 2701, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 2700, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 156, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 155, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 154, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 153, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 152, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 151, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 150, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 149, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 148, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 147, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 146, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 145, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 144, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 143, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 142, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 141, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 140, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 139, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 138, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 137, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 136, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 135, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 134, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 133, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 132, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 131, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 130, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 129, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 128, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 127, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 126, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 125, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 124, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 123, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 122, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 121, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 120, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 119, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 118, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 117, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 116, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 115, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 114, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 113, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 112, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 111, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 110, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 109, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 108, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 107, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 106, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 105, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 104, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 103, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 102, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 101, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 100, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 99, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 98, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 97, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 96, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 95, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 93, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 92, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 91, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 90, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 89, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 88, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 87, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 74, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 68, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 58, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 57, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 38, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 27, 8);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 11, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (7, 7, 9);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2694, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2693, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2692, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2691, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2690, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2689, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2688, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2687, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2686, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2685, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2684, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2683, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2682, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2681, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2680, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2679, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2678, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2677, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2676, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2675, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2674, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2673, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2672, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2671, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2670, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2669, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2668, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2667, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2666, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2665, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2664, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2663, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2662, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2661, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2660, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2659, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2658, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2657, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2656, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2655, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2654, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2653, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2652, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2651, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2650, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2649, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2648, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2647, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2646, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2645, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2644, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2643, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2642, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2641, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2640, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2639, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2638, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2637, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2636, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2635, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2634, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2633, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2632, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2631, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 2630, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 225, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 193, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 191, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 185, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 184, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 183, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 168, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 164, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 163, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 162, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 140, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 137, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 129, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 125, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 122, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 119, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 118, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 114, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 112, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 109, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 104, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 96, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 72, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 65, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 60, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 56, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 48, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 47, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 46, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 43, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 41, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 35, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 27, 8);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 12, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 11, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2629, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2628, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2627, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2626, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2625, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2624, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2623, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2622, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2621, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2620, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2619, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2618, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2617, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2616, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2615, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2614, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2613, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2612, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2611, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2610, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2609, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2608, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2607, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2606, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2605, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2604, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2603, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2602, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2601, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2600, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2599, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2598, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2597, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2596, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2595, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2594, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2593, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2592, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2591, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2590, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2589, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2588, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2587, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2586, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2585, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2584, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2583, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2582, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2581, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2580, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2579, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2578, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2577, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2576, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2575, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2574, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2573, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2572, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2571, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2570, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2569, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2568, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2567, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2566, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2565, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2564, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2563, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2562, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2561, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2560, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2559, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2558, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2557, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2556, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2555, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2554, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2553, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2552, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2551, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2550, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2549, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2548, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2547, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2546, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2545, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2544, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2543, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2542, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2541, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2540, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2539, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2538, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2537, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2536, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2535, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2534, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2533, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2532, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2531, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2530, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2529, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2528, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2527, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2526, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2525, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2524, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2523, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2522, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2521, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2520, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2519, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2518, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2517, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2516, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2515, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2514, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2513, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2512, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2511, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2510, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2509, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2508, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2507, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2506, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2505, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2504, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 2503, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 225, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 193, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 191, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 185, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 184, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 183, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 168, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 162, 5);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 156, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 155, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 154, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 153, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 152, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 151, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 150, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 149, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 148, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 147, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 146, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 145, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 144, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 143, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 142, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 141, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 140, 10);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 139, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 138, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 137, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 136, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 135, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 134, 6);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 133, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 132, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 131, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 130, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 129, 5);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 128, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 127, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 126, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 125, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 124, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 123, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 122, 10);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 121, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 120, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 119, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 118, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 117, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 116, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 115, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 114, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 113, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 112, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 111, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 110, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 109, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 108, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 107, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 106, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 105, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 104, 5);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 103, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 102, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 101, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 100, 5);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 99, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 98, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 97, 6);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 96, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 95, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 93, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 92, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 91, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 90, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 89, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 88, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 87, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 74, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 68, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 63, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 60, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 59, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 58, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 57, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 47, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 43, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 42, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 38, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 37, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 36, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 35, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 27, 18);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 22, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 20, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 14, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 11, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (1, 7, 33);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2502, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2501, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2500, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2499, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2498, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2497, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2496, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2495, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2494, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2493, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2492, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2491, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2490, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2489, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2488, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2487, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2486, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2485, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2484, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2483, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2482, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2481, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2480, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2479, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2478, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2477, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2476, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 2475, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 164, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 163, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 122, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 119, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 118, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 75, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 74, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 72, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 60, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 52, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 43, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 42, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 41, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 27, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 14, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 11, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (10, 7, 5);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (5, 7, 12);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2708, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2707, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2694, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2693, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2630, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2692, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2691, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2631, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2632, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2633, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2634, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 225, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2635, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2636, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2637, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2638, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2639, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2640, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2641, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2642, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2643, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2644, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2645, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2646, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2647, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2648, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2649, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2650, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2651, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2652, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2653, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2654, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2655, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2656, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2657, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2658, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2659, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2660, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2661, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2662, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2663, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2664, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2665, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 193, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2666, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 191, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2667, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2668, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2669, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2670, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2671, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 185, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 184, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 183, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2672, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2673, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2674, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2675, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2676, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2677, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2678, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2679, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2680, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2681, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2682, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2683, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 168, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2684, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2685, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2686, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 164, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 163, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 162, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2687, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2688, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2689, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 2690, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 140, 4);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 137, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 129, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 125, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 122, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 119, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 118, 3);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 114, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 112, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 109, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 104, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 96, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 72, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 65, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 60, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 56, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 47, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 46, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 43, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 41, 2);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 35, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 27, 8);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 12, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 11, 1);
INSERT INTO`tbl_search_index_entry_keywords` (`entry_id`, `keyword_id`, `frequency`) VALUES (19, 7, 12);

-- *** DATA:`tbl_search_index_keywords` ***
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2065, 'each');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2064, 'assigned');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2063, 'met');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2062, 'rossen');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2061, 'daniel');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2060, 'nicolaus');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (7, 'the');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2059, 'fred');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2058, 'mccartney');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2057, 'paul');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (11, 'from');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (12, 'recording');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2056, 'parks');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (14, 'two');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2055, 'dyke');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2054, 'van');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2053, 'inspired');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2052, 'intimate');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2051, 'ambitious');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (20, 'yet');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2050, 'purveyors');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (22, 'music');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2049, 'into');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2048, 'roommates');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2047, 'college');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2046, 'project');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (27, 'and');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2045, 'blossomed');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2044, 'moon');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2043, 'whitey');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2042, 'known');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2041, 'originally');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2040, 'places');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2039, 'high');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (35, 2000);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (36, 'when');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (37, 'they');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (38, 'were');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2038, 'eagles');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2037, 'department');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (41, 'dark');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (42, 'indie-rock');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (43, 'moody');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2730, 'member');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2729, 'onetime');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (46, 'mute');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (47, 'records');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (48, 'turns');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2728, 'native');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2727, 'florida');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2726, 'where');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (52, 'vocalist');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2725, 'group');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2724, 'musicians');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2723, 'festival');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (56, 'experimental');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (57, 'pop');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (58, 'duo');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (59, 'that');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (60, 'began');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2722, 'cmj');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2721, 'performance');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (63, 'first');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (65, 'after');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2720, 'breakout');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2719, 'fans');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (68, 2009);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2718, 'its');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2717, 'earning');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2716, 'comprise');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (72, 'formed');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2715, 'krauss');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (74, 'new');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (75, 'york');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2714, 'alexis');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2713, 'miller');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2712, 'derek');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2711, 'songwriter/producer');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2710, 'bells');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2709, 'sleigh');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2704, 'indie-electric');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2703, 'grey');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2702, 'movements');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (87, 'killers');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (88, 'landing');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (89, 'seven');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (90, 'songs');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (91, 'popular');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (92, 'medical');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (93, 'drama');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2701, 'eyelid');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (95, 'anatomy');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (96, 2007);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (97, 'tegan');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (98, 'sang');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (99, 'backup');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (100, 'song');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (101, 'sire');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (102, 'labelmate');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (103, 'against');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (104, 'album');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (105, 'wave');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (106, 'twins');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (107, 'who');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (108, 'had');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (109, 'then');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (110, 'moved');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (111, 'far');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (112, 'singer/songwriter');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (113, 'mold');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (114, 'more');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (115, 'interested');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (116, 'exploring');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (117, 'punk');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (118, 'indie');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (119, 'rock');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (120, 'came');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (121, 'out');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (122, 'with');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (123, 'con');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (124, 'produced');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (125, 'christopher');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (126, 'walla');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (127, 'death');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (128, 'cab');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (129, 'for');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (130, 'cutie');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (131, 'working');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (132, 'went');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (133, 'well');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (134, 'sara');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (135, 'also');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (136, 'utilized');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (137, 'his');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (138, 'production');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (139, 'skills');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (140, 'their');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (141, 'next');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (142, 'sainthood');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (143, 'found');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (144, 'collaborating');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (145, 'tiësto');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (146, 'feel');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (147, 'bones');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (148, 'kaleidoscope');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (149, 'comedian');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (150, 'margaret');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (151, 'cho');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (152, 'track');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (153, 'intervention');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (154, 'her');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (155, 'dependent');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (156, 'release');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2700, 'phantogram');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2690, 'alsterberg');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2689, 'don');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2688, 'co-producer');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2687, 'space');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (162, 'was');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (163, 'late');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (164, '90s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2686, 'practice');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2685, 'recorded');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2684, 'second');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (168, 'which');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2683, 'self-titled');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2682, 'polished');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2681, '2013\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2680, 2010);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2679, 'arrived');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2678, 'fields');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2677, 'result');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2676, 'full-length');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2675, 'nature');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2674, 'our');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2673, 'promoting');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2672, 'finished');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (183, 'released');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (184, 'debut');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (185, 'own');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2671, 'earnest');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2670, 'writing');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2669, 2006);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2668, 'refuge');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2667, 'black');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (191, 'years');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2666, 'regrouped');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (193, 'art');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2665, 'career');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2664, 'solo');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2663, 'successful');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2662, 'launched');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2661, 'teacher');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2660, 'worked');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2659, 'while');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2658, 'finland');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2657, 'norway');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2656, 'studying');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2655, 'five');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2654, 'nearly');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2653, 'spent');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2652, 'imprint');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2651, 'kakafoni');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2650, 'founder');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2649, 'vein');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2648, 'folk');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2647, 'crafts');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2646, 'winterkorn');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2645, 'tobia');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2644, 'player');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2643, 'keyboard');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2642, 'araya');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2641, 'elias');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2640, 'drummer');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2639, 'vocals');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2638, 'guitar');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2637, 'consists');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2636, 'trio');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2635, 'gonzalez');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (225, 'help');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2634, 'jose');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2633, 'outfit');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2632, 'sweden-based');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2631, 'gothenburg');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2624, 'powerful');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2623, 'emotionally');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2622, 'still');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2621, 'slick');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2620, 'very');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2619, 'sound');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2618, 'modern');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2617, 'reflected');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2616, 'making');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2615, 'ke$ha');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2614, 'clarkson');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2613, 'kelly');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2612, 'allen');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2611, 'lily');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2610, 'kurstin');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2609, 'greg');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2608, 'producer');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2607, 'turned');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2606, 'studio');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2605, 'seventh');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2604, 'part');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2603, 'most');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2602, 'india');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2601, 'states');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2600, 'called');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2599, 'films');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2598, 'behind-the-scenes');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2597, 'short');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2596, 'three');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2595, 'paired');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2594, 'along');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2593, 'get');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2592, 'cd/dvd');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2591, 'live');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2590, '2011\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2589, '2009\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2588, 'me!\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2587, 'grey\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2586, 'u.s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2585, 'touring');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2584, 'saw');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2583, 'ghost');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2582, 'walking');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2581, 'you\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2580, 'cover');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2579, 'stripes');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2578, 'white');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2577, 2005);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2576, 'jealous');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2575, 'breakthrough');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2574, 'commercial');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2573, 2004);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2572, 'you');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2571, 'later');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2570, 'july');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2569, 'followed');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2568, 'pretenders');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2567, 'young');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2566, 'tour');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2565, 'summer');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2564, 'mid-2000');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2563, 'marked');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2562, 'workman');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2561, 'hawksley');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2560, 'business');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2559, 'this');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2558, 'bands');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2557, 'around');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2556, 'skanking');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2555, 'teens');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2554, 'eight');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2553, 'age');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2552, 'piano');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2551, 'playing');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2550, 'parents');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2549, 'interests');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2548, 'derived');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2547, 'sisters');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2546, 'twin');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2545, 'these');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2544, 'calgary');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2543, 'natives');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2542, 'april');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2541, 'vapor');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2540, 'young\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2539, 'neil');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2538, 'deal');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2537, 'record');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2536, 'year');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2535, 'same');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2534, 'fair');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2533, 'lilith');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2532, 'mclachlan\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2531, 'sarah');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2530, 'dates');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2529, 'slew');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2528, 'led');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2527, 'personas');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2526, 'stage');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2525, 'charming');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2524, 'acoustics');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2523, 'melodic');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2522, 'stop');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2521, 'didn\'t');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2520, 'rise');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2519, 'quick');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2518, 'competition');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2517, 'warz');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2516, 'garage');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2515, 'calgary\'s');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2514, 'history');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2513, 'score');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2512, 'highest');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2511, 'earned');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2510, 1998);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2509, 'scene');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2508, 'canadian');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2507, 'onto');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2506, 'burst');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2505, 'folk-rock');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2504, 'better');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2503, 'canadians');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2475, 'national');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2476, 'britain');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2477, 'joins');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2478, 'forces');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2479, 'although');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2480, 'during');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2481, 'post-punk');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2482, 'revival');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2483, 'took');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2484, 'inspiration');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2485, 'wider');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2486, 'set');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2487, 'influences');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2488, 'including');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2489, 'country-rock');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2490, 'americana');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2491, 'brit-pop');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2492, 'lineup');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2493, 'taking');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2494, 'shape');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2495, 'ohio');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2496, 'officially');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2497, 'cemented');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2498, 'itself');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2625, 'heartthob');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2626, 'early');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2627, 2013);
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2731, 'hardcore');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2691, 'james');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2732, 'act');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2692, 'monger');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2630, 'junip');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2499, 'baritone');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2500, 'matt');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2628, 'mackenzie');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2501, 'berninger');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2629, 'wilson');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2502, 'joining');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2733, 'poison');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2693, 'indie-folk');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2694, 'lo-fi');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2707, 'phosphorescent');
INSERT INTO`tbl_search_index_keywords` (`id`, `keyword`) VALUES (2708, 'dallas');

-- *** DATA:`tbl_search_index_logs` ***
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (1, '2013-08-16 13:56:34', 'indie-electric', 'indie-electric', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (2, '2013-08-16 13:57:46', 'indie-electric', 'indie-electric', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (3, '2013-08-16 13:57:47', 'indie-electric', 'indie-electric', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (4, '2013-08-16 13:59:47', 'bells', 'bells', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (5, '2013-08-16 13:59:50', 'dark', 'dark', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (6, '2013-08-16 14:00:09', 'dark', 'dark', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (7, '2013-08-16 14:00:59', 'killers', 'killers', 'posts', 1, 2, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (8, '2013-08-16 14:01:12', 'eagles', 'eagles', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (9, '2013-08-16 14:01:27', 'cmj', 'cmj', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (10, '2013-08-16 14:03:05', 'cmj', 'cmj', 'posts', 1, 1, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (11, '2013-08-16 15:56:36', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (12, '2013-08-16 15:56:44', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (13, '2013-08-16 15:57:38', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (14, '2013-08-16 15:58:31', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (15, '2013-08-16 15:58:44', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (16, '2013-08-16 15:58:53', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (17, '2013-08-16 15:58:57', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (18, '2013-08-16 15:59:23', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (19, '2013-08-16 15:59:23', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');
INSERT INTO`tbl_search_index_logs` (`id`, `date`, `keywords`, `keywords_manipulated`, `sections`, `page`, `results`, `session_id`) VALUES (20, '2013-08-16 15:59:27', 'land', 'land', 'posts', 1, 3, 'sqpbs6i2jt9k2k35d2ocrin0v4');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (1, 'Profile', 'profile', 4, 'no', 1, 'Admin');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (3, 'Images', 'images', 2, 'no', 0, 'MGMT');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (2, 'Equip Stories', 'equip-stories', 1, 'no', 0, 'Equip');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (4, 'People', 'people', 3, 'no', 0, 'MGMT');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (5, 'Feature', 'feature', 5, 'no', 1, 'Posts');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (6, 'Inquiries', 'inquiries', 6, 'no', 0, 'Forms');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (7, 'Members', 'members', 7, 'no', 0, 'MGMT');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (8, 'Unleash Stories', 'unleash-stories', 1, 'no', 0, 'Unleash ');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (9, 'Feature Image', 'feature-image', 8, 'no', 1, 'Equip');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (10, 'Unleash Description', 'unleash-description', 9, 'no', 1, 'Unleash ');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (11, 'What If? Description', 'what-if-description', 9, 'no', 1, 'What If?');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (12, 'What If? Stories', 'what-if-stories', 10, 'no', 0, 'What If?');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `navigation_group`) VALUES (13, 'Who We Are', 'who-we-are', 11, 'no', 1, 'Who We Are');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (47, 13, 81, 4, 81, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (13, 2, 22, 5, 41, 'no');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (45, 12, 77, 4, 77, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (43, 8, 69, 4, 69, 'yes');

-- *** DATA:`tbl_tooltips` ***
INSERT INTO`tbl_tooltips` (`id`, `field_id`, `tooltip`) VALUES (1, 13, 'That string of letters/numbers before the \'.js\' in the first script tag.');
INSERT INTO`tbl_tooltips` (`id`, `field_id`, `tooltip`) VALUES (3, 69, 'Required Fields\n-------------\n    - Name\n    - Title/Position\n    - Profile Image  ');
INSERT INTO`tbl_tooltips` (`id`, `field_id`, `tooltip`) VALUES (4, 67, 'Dimensions\n----------\n1600px X 400px ');
INSERT INTO`tbl_tooltips` (`id`, `field_id`, `tooltip`) VALUES (5, 79, 'A brief description defining this section.');
