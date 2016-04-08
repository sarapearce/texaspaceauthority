CREATE TABLE `wp_bcyw_formmaker_backup` (  `backup_id` int(11) NOT NULL AUTO_INCREMENT,  `cur` int(1) NOT NULL,  `id` int(11) NOT NULL,  `title` varchar(127) NOT NULL,  `mail` varchar(128) NOT NULL,  `form_front` longtext NOT NULL,  `theme` int(11) NOT NULL,  `javascript` text NOT NULL,  `submit_text` longtext NOT NULL,  `url` varchar(200) NOT NULL,  `submit_text_type` tinyint(4) NOT NULL,  `script_mail` text NOT NULL,  `script_mail_user` text NOT NULL,  `counter` int(11) NOT NULL,  `published` int(11) NOT NULL DEFAULT '1',  `label_order` text NOT NULL,  `label_order_current` text NOT NULL,  `article_id` varchar(500) NOT NULL,  `pagination` varchar(128) NOT NULL,  `show_title` varchar(128) NOT NULL,  `show_numbers` varchar(128) NOT NULL,  `public_key` varchar(50) NOT NULL,  `private_key` varchar(50) NOT NULL,  `recaptcha_theme` varchar(20) NOT NULL,  `paypal_mode` int(2) NOT NULL,  `checkout_mode` varchar(20) NOT NULL,  `paypal_email` varchar(50) NOT NULL,  `payment_currency` varchar(20) NOT NULL,  `tax` float NOT NULL,  `form_fields` longtext NOT NULL,  `savedb` tinyint(4) NOT NULL DEFAULT '1',  `sendemail` tinyint(4) NOT NULL DEFAULT '1',  `requiredmark` varchar(20) NOT NULL DEFAULT '*',  `from_mail` varchar(128) NOT NULL,  `from_name` varchar(128) NOT NULL,  `reply_to` varchar(128) NOT NULL,  `send_to` varchar(128) NOT NULL,  `autogen_layout` tinyint(4) NOT NULL DEFAULT '1',  `custom_front` longtext NOT NULL,  `mail_from_user` varchar(128) NOT NULL,  `mail_from_name_user` varchar(128) NOT NULL,  `reply_to_user` varchar(128) NOT NULL,  `condition` text NOT NULL,  `mail_cc` varchar(128) NOT NULL,  `mail_cc_user` varchar(128) NOT NULL,  `mail_bcc` varchar(128) NOT NULL,  `mail_bcc_user` varchar(128) NOT NULL,  `mail_subject` varchar(128) NOT NULL,  `mail_subject_user` varchar(128) NOT NULL,  `mail_mode` tinyint(4) NOT NULL DEFAULT '1',  `mail_mode_user` tinyint(4) NOT NULL DEFAULT '1',  `mail_attachment` tinyint(4) NOT NULL DEFAULT '1',  `mail_attachment_user` tinyint(4) NOT NULL DEFAULT '1',  `user_id_wd` varchar(220) NOT NULL,  `sortable` int(11) NOT NULL,  `frontend_submit_fields` text NOT NULL,  `frontend_submit_stat_fields` text NOT NULL,  `mail_emptyfields` tinyint(4) NOT NULL DEFAULT '0',  `mail_verify` tinyint(4) NOT NULL DEFAULT '0',  `mail_verify_expiretime` float NOT NULL,  `mail_verification_post_id` int(11) NOT NULL,  `save_uploads` tinyint(4) NOT NULL DEFAULT '1',  PRIMARY KEY (`backup_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `wp_bcyw_formmaker_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bcyw_formmaker_backup` ENABLE KEYS */;