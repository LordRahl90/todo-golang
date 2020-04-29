-- Required to start the app

DELETE FROM `wine_styles`;
DELETE FROM `styles`;
DELETE FROM `vintage_reviews`;
DELETE FROM `user_vintages`;
DELETE FROM `vintages`;
DELETE FROM `wines`;
DELETE FROM `wine_types`;
DELETE FROM `menu_scan_matches`;
DELETE FROM `menu_scans`;
DELETE FROM `wine_from_grapes`;
DELETE FROM `food_grapes`;
DELETE FROM `user_vintage_extras`;
DELETE FROM `user_cellar`;
DELETE FROM `wine_statistics`;
DELETE FROM `grapes`;
DELETE FROM `winemakers`;
DELETE FROM `user_corrections`;

DELETE FROM `activity_object_types`;
INSERT INTO `activity_object_types` (`id`, `name`)
VALUES
(1, 'user-vintage'),
(2, 'web-content'),
(3, 'user'),
(4, 'vintage'),
(5, 'menu-scan'),
(6, 'style'),
(7, 'toplist'),
(8, 'story');

DELETE FROM `activity_verb_types`;
INSERT INTO `activity_verb_types` (`id`, `name`)
VALUES
(1, 'reviewed'),
(2, 'posted'),
(3, 'followed'),
(4, 'joined'),
(5, 'shared'),
(6, 'scanned'),
(7, 'leveled-up'),
(8, 'upgraded'),
(9, 'recommended');

DELETE FROM `activity_target_types`;
INSERT INTO `activity_target_types` (`id`, `name`)
VALUES
(1, 'followers'),
(2, 'user'),
(3, 'users_for_country_and_state'),
(4, 'all');

DELETE FROM `activity_context_types`;
INSERT INTO `activity_context_types` (`id`, `name`)
VALUES
(1, 'milestone'),
(2, 'level');

DELETE FROM `languages`;
INSERT INTO `languages` (`id`, `name`, `name_english`, `locale`, `active`)
VALUES
('en', 'English', 'English', 'en_US', 1),
('da', 'Dansk', 'Danish', 'da_DK', 0),
('ru', 'Русский', 'Russian', 'ru_RU', 0),
('un', 'Unknown', 'Unknown', '', 0);

DELETE FROM `countries`;
DELETE FROM `country_states`;
DELETE FROM `location`;

INSERT INTO `countries` (`id`, `alpha_2`, `english_name`, `native_name`, `default_currency_id`, `seo_name`, `rough_utc_offset`, `default_language_id`)
VALUES
(36, 'AU', 'Australia', 'Australia', 'AUD', 'australia', 9, 'en'),
(124, 'CA', 'Canada', 'Canada', 'CAD', 'canada', -5, 'en'),
(208, 'DK', 'Denmark', 'Danmark', 'DKK', 'denmark', 0, 'da'),
(268, 'GE', 'Georgia', 'საქართველო', 'GEL', 'georgia', 4, 'ka'),
(520, 'NR', 'Nauru', 'Nauru', '', 'nauru', 11, 'en'),
(826, 'GB', 'United Kingdom', 'United Kingdom', 'GBP', 'united-kingdom', 0, 'en'),
(840, 'US', 'United States', 'United States', 'USD', 'united-states', 0, 'en'),
(276, 'DE', 'Germany', 'Deutschland', 'EUR', 'germany', 0, 'en'),
(528, 'NL', 'Netherlands', 'Nederland', 'EUR', 'netherlands', 1, 'nl'),
(804, 'UA', 'Ukraine', 'Україна', 'HRN', 'ukraine', 2, 'en'),
(75, 'FR', 'France', 'France', 'EUR', 'france', 2, 'en'),
(752,'SE', 'Sweden', 'Sverige', 'SEK','Sverige',1,'sv'),
(76, 'BR', 'Brazil', 'Brasil', 'BRL', 'brazil', -3, 'pt'),
(724,'ES', 'Spain', 'España', 'EUR','spain',1,'es'),
(380,'IT', 'Italy', 'Italia', 'EUR','italy',1,'it'),
(56,'BE', 'Belgium', 'België', 'EUR','belgium',1,'fr'),
(702,'SG', 'Singapore', 'Singapore', 'SGD','singapore',8,'en');

INSERT INTO `country_states` (`id`, `code`, `full_name`, `country_code`)
VALUES
(1, 'AA', 'The A-State', 'de'),
(2, 'CA', 'California', 'us'),
(3, 'AL', 'Alabama', 'us'),
(6, 'TX', 'Texas', 'us'),
(10, 'FL', 'Florida', 'us'),
(11, 'AK', 'Alaska', 'us'),
(13, 'GA', 'Georgia', 'us'),
(15, 'HI', 'Hawaii', 'us'),
(42, 'OK', 'Oklahoma', 'us'),
(43, 'OR', 'Oregon', 'us'),
(54, 'VA', 'Virginia', 'us'),
(21, 'KY', 'Kentucky', 'us'),
(86, 'MG', 'Minas Gerais', 'br'),
(99, 'SP', 'São Paulo', 'br'),
(96, 'RR', 'Roraima', 'br');

DELETE FROM `location_external_references`;
INSERT INTO `location_external_references` (`id`, `location_id`, `external_id`, `provider`)
VALUES
(1, 1, 'slkaaslmafwlefm', 1),
(2, 2, 'lsfhbnicuwevcacalknclasc', 1),
(3, 3, 'kdcnkjncakjcnakjscnakjtttt', 1),
(4, 4, 'jnsdcjnasjcnakjscnakjscaskja', 1);

INSERT INTO `location` (`id`, `country`, `user_id`, `name`, `lat`, `long`, `type`, `url`)
VALUES
(1, 'us', 1, '', 0.0, 0.0, 'location', ''),
(2, 'us', 1, '', 0.0, 0.0, 'location', ''),
(3, 'us', 1, '', 0.0, 0.0, 'onlineshop', ''),
(4, 'us', 1, '', 0.0, 0.0, 'location', '');

DELETE FROM `location_categories`;
INSERT INTO `location_categories` (`id`, `name`, `is_whitelisted`)
VALUES
(1, 'Home', 0),
(693, "Restaurant or Cafe", 1),
(804, "Supermarket or Grocery store", 1),
(916, "Winebar", 1),
(919, "Wineshop or Liquor Store", 1),
(601, "Other wine-selling place", 1);

DELETE FROM `currency_segmentations`;
DELETE FROM `currencies`;
INSERT INTO `currencies` (`id`, `name`, `exchange_rate`, `decimal_places`,
                          `decimal_point`, `thousands_point`, `symbol_left`, `symbol_right`)
VALUES
('EUR', 'Euros', '1', 2, 2, 2, '€', NULL),
('USD', 'US Dollars', '0.885971', 2, 2, 2, '$', NULL),
('GBP', 'British Pounds', '1.1719043315925', 2, 2, 2, '£', NULL),
('DKK','Danish Kroner', '0.13419019562874', 2, 2, 2, NULL, ' kr.'),
('HKD','Hong Kong Dollar', '0.109862', 2, 2, 2, '$', NULL),
('GEL', 'Georgia Lari', '0.30957855887522', 2, 2, 2, NULL, 'GEL'),
('BRL','Brazil Reais','0.22883187404193',2,'.',',','R$',''),
('SEK','Swedish kronar','0.0925921',2, 2, 2,NULL,' kr.'),
('SGD','Singapore Dollars','0.63351516222189', 2, '.', ',','$', NULL);

INSERT INTO `currency_segmentations` (`id`, `currency_code`, `level`, `threshold`)
VALUES
(6, 'EUR', 0, 7),
(7, 'EUR', 1, 15),
(8, 'EUR', 2, 30),
(9, 'EUR', 3, 60),
(10, 'EUR', 4, 100),
(11, 'EUR', 5, 500),
(12, 'USD', 0, 10),
(13, 'USD', 1, 20),
(14, 'USD', 2, 40),
(15, 'USD', 3, 80),
(16, 'USD', 4, 100),
(17, 'USD', 5, 500),
(36, 'DKK', 0, 50),
(37, 'DKK', 1, 100),
(38, 'DKK', 2, 200),
(39, 'DKK', 3, 400),
(40, 'DKK', 4, 500),
(41, 'DKK', 5, 2500),
(50, 'GBP', 0, 10),
(51, 'GBP', 1, 20),
(52, 'GBP', 2, 40),
(53, 'GBP', 3, 80),
(54, 'GBP', 4, 100),
(55, 'GBP', 5, 500),
(56, 'GEL', 0, 25),
(57, 'GEL', 1, 50),
(58, 'GEL', 2, 100),
(59, 'GEL', 3, 200),
(60, 'GEL', 4, 250),
(61, 'GEL', 5, 1000);


DELETE FROM `bottle_sizes`;
INSERT INTO `bottle_sizes` (`id`, `volume`, `name`)
VALUES
(1, 0.750, 'Bottle (0.75 l)'),
(2, 1.000, 'Large Bottle (1.0 l)'),
(3, 0.375, '1/2 Bottle (0.375 l)'),
(4, 1.500, 'Magnum Bottle (1.5 l)'),
(5, 0.175, 'Glass'),
(6, 0.250, 'Large Glass'),
(7, 1.500, '1.5 l Bag-in-box'),
(8, 3.000, '3.0 l Bag-in-box'),
(9, 5.000, '5.0 l Bag-in-box'),
(10, NULL, 'Other'),
(11, 3.000, 'Double Magnum (Jeroboam)'),
(12, 0.500, 'Jennie (0.5l)'),
(13, 6.000, 'Imperial (6.0l)'),
(14, 0.250, 'Miniature (<250ml)');

DELETE FROM `users`;
DELETE FROM `wineries`;

DELETE FROM `wine_types`;
INSERT INTO `wine_types` (`wine_type_id`, `wine_type_name`, `background_image`)
VALUES
(1, 'Red Wine', 't/jE9vUBKPTX2y69tYzKvnAw.jpg'),
(2, 'White Wine', NULL),
(3, 'Sparkling', NULL),
(4, 'Rosé Wine', NULL),
(7, 'Dessert Wine', NULL),
(24, 'Fortified Wine', NULL),
(25, 'Unknown Wine', NULL);

DELETE FROM `followers`;

-- Password is bcrypt("secret")
SELECT "$2y$10$nrJYQv4MusqzRZ2YCTB2cOecAYHo3gGAh5tnYYmxL.FJQ3wZqfmTu" INTO @secret_password;

INSERT INTO `users` (`id`, `email`, `created_at`, `profile_completed_at`,
                     `seo_name`, `country`, `state_id`, `website`, `visibility`, `auto_follow_friends`,
                     `is_age_verified`, `is_blacklisted`, `password`, `alias`, `language_code`, `profile_image`, `address_id`, `is_featured`)
VALUES
(1, 'the-user@example.com', NOW(), NOW(), 'the-user', 'us', 1, '', 1, 1, 1, '0', @secret_password, 'user_1_f user_1_l ', 'en', 'not_found_image.jpg', NULL, 1),
(2, 'test@vivinoapp.com', NOW(), NULL, 'kinda-user', 'us', 1, '', 1, 0, 0, '0', '', 'user_2_f user_2_l', 'da', NULL, 5, 1),
(3, 'visible_to_none@example.com', NOW(), NOW(), 'non_visible_user', 'us', 1, '', 0, 1, 1, '0', '', 'user_3_f user_3_l', 'ru', NULL, NULL, 0),
(4, 'dk_user@example.com', NOW(), NOW(), 'dk_user', 'dk', NULL, '', 0, 1, 1, '0', '', 'user_4_f user_4_l', NULL, NULL, NULL, 0),
(5, 'unique_user@example.com', NOW(), NOW(), 'unique-user', 'us', 1, '', 1, 1, 1, '0', '', 'user_5_f user_5_l', NULL, NULL, NULL, 0),
(6, 'blacklisted_user@example.com', NOW(), NOW(), 'blackisted_user', 'dk', NULL, '', 0, 1, 1, '1', '', 'user_6_f user_6_l', NULL, NULL, NULL, 0),
(7, 'authorized-user@example.com', NOW(), NOW(), 'authorized-user', 'dk', NULL, '', -1, 1, 1, '0', '', 'user_7_f user_7_l', NULL, NULL, NULL, 0),
(8, 'authorized_user_1@example.com', NOW(), NOW(), 'authorized_user_1', 'dk', NULL, '', -1, 1, 1, '0', '', 'user_8_f user_8_l', NULL, NULL, 4, 0),
(9, 'user_from_germany@example.com', NOW(), NOW(), 'germany_user', 'de', NULL, '', 1, 1, 1, '0', '', 'user_9_f user_9_l', NULL, NULL, NULL, 0),
(10, 'user_for_crud_update@example.com', NOW(), NOW(), 'crud_update', 'de', NULL, '', 1, 1, 1, '0', '', 'user_10_f user_10_l', NULL, NULL, 1, 0),
(11, 'user_for_completion_update@example.com', NOW(), NULL, 'completion_update', 'de', NULL, '', 1, 1, 1, '0', '', 'user_11_f user_11_l', NULL, NULL, NULL, 0),
(12, 'user_for_reviews_test@example.com', NOW(), NULL, 'reviews_guru', 'us', NULL, '', 1, 1, 1, '0', '', 'user_12_f user_12_l', NULL, NULL, NULL, 0),
(13, 'usa_user_with_missing_state@example.com', NOW(), NULL, 'country_us_state_null', 'us', NULL, '', 1, 1, 1, '0', '', 'user_13_f user_13_l', NULL, NULL, NULL, 0),
(14, 'someotheruser14@example.com', NOW(), NOW(), 'the users alias 14', 'de', NULL, '', 1, 1, 1, '0', '', 'user_14_f user_14_l', NULL, NULL, NULL, 0),
(15, 'someotheruser15@example.com', NOW(), NOW(), 'the users alias 15', 'de', NULL, '', 1, 1, 1, '0', '', 'user_15_f user_15_l', NULL, NULL, NULL, 0),
(16, 'someotheruser16@example.com', NOW(), NOW(), 'the users alias 16', 'de', NULL, '', 1, 1, 1, '0', '', 'user_16_f user_16_l', NULL, NULL, NULL, 0),
(17, 'transfertest1@example.com', NOW(), NOW(), 'transfer1', 'de', NULL, '', 1, 1, 1, '0', '', 'Transfer Cart1', NULL, NULL, NULL, 0),
(18, 'transfertest2@example.com', NOW(), NOW(), 'transfer2', 'de', NULL, '', 1, 1, 1, '0', '', 'Transfer Cart2', NULL, NULL, NULL, 0),
(19, 'transfertest3@example.com', NOW(), NOW(), 'transfer3', 'de', NULL, '', 1, 1, 1, '0', '', 'Transfer Cart3', NULL, NULL, NULL, 0),
(20, 'transfertest4@example.com', NOW(), NOW() + INTERVAL 1 DAY, 'transfer4', 'de', NULL, '', 1, 1, 1, '0', '', 'Transfer Cart4', NULL, NULL, NULL, 0),
(21, 'transfertest5@example.com', NOW(), NOW(), 'transfer5', 'de', NULL, '', 1, 1, 1, '0', '', 'Transfer Cart5', NULL, NULL, NULL, 0),
(22, 'dk_premium_user@example.com', NOW(), NOW(), 'dk_premium_user', 'dk', NULL, '', 0, 1, 1, '0', '', 'user_17_f user_17_l', NULL, NULL, NULL, 0),
(23, 'us_premium_user@example.com', NOW(), NOW(), 'us_premium_user', 'us', NULL, '', 0, 1, 1, '0', '', 'user_18_f user_18_l', NULL, NULL, NULL, 0),
(24, 'authorized_admin_ghost_user@example.com', NOW(), NOW(), 'authorized_admin_ghost_user', 'us', NULL, '', 0, 1, 1, '0',  @secret_password, 'user_18_f user_18_l', NULL, NULL, NULL, 0),
(25, 'unauthorized_admin_ghost_user@example.com', NOW(), NOW(), 'unauthorized_admin_ghost_user', 'us', NULL, '', 0, 1, 1, '0', @secret_password, 'user_18_f user_18_l', NULL, NULL, NULL, 0),
(26, 'registered_in_2017@example.com', '2017-01-01 12:00:00', NOW(), 'registered_in_2017', 'us', NULL, '', 0, 1, 1, '0', @secret_password, 'registered_in_2017', NULL, NULL, NULL, 0),
(27, 'to_be_removed_according_to_gdpr@example.com', NOW(), NOW(), 'to_be_removed_according_to_gdpr', 'dk', NULL, '', 0, 1, 1, '0', @secret_password, 'to_be_removed_according_to_gdpr', NULL, NULL, NULL, 0),
(28, 'wishlist_count@example.com', '2018-06-12 12:00:00', NOW(), 'wishlist_count', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'wishlist_count', NULL, NULL, NULL, 0),
(29, 'gb_user@example.com', '2017-01-01', NOW(), 'gb_user', 'gb', NULL, '', 1, 1, 1, '0', @secret_password, 'user_29_f user_29_l', NULL, NULL, NULL, 0),
(30, 'vip_user_1@example.com', '2018-01-01', NOW(), 'vip_user_1', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'vip1', NULL, NULL, NULL, 0),
(31, 'vip_user_2@example.com', '2018-01-01', NOW(), 'vip_user_2', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'vip2', NULL, NULL, NULL, 0),
(32, 'vip_user_3@example.com', '2018-01-01', NOW(), 'vip_user_3', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'vip3', NULL, NULL, NULL, 0),
(33, 'loser_user@example.com', '2018-01-01', NOW(), 'loser_user', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'loser', NULL, NULL, NULL, 0),
(34, 'shipping@example.com', '2018-01-01', NOW(), 'shipping_estimates', 'se', NULL, '', 1, 1, 1, '0', @secret_password, 'shipping_estimates', NULL, NULL, NULL,0),
(35, 'kerdatey@yevme.com', NOW(), NOW(), 'kerdatey', 'dk', 2, 'www.gg.gg/Paige_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(36, 'rirtojur@yevme.com', NOW(), NOW(), 'rirtojur', 'dk', 2, 'www.gg.gg/Valerie_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(37, 'cestulul@yevme.com', NOW(), NOW(), 'cestulul', 'dk', 2, 'www.gg.gg/Reese_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(38, 'harkamal@yevme.com', NOW(), NOW(), 'harkamal', 'dk', 2, 'www.gg.gg/Raegan_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(39, 'femlonal@yevme.com', NOW(), NOW(), 'femlonal', 'dk', 2, 'www.gg.gg/Kylee_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(40, 'solmefas@yevme.com', NOW(), NOW(), 'solmefas', 'dk', 2, 'www.gg.gg/Phoebe_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(41, 'zerdeder@yevme.com', NOW(), NOW(), 'zerdeder', 'dk', 2, 'www.aa.gg/June_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(42, 'hamlifas@yevme.com', NOW(), NOW(), 'hamlifas', 'dk', 2, 'www.aa.gg/Diana_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(43, 'lastigif@yevme.com', NOW(), NOW(), 'lastigif', 'dk', 2, 'www.aa.gg/Adrianna_photo17', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(44, 'mukalas@yevme.com', NOW(), NOW(), 'lastigif2', 'dk', 2, 'www.aa.gg/Adrianna_photo17', 1, 1, 1, '0', '', 'www.gg.gg/Adrianna_photo17', 'dk', NULL, NULL, 0),
(45, 'someone@somewhere.com', NOW(), NOW(), 'someonesomewhere', 'dk', 2, 'www.facebook.com/someone', 1, 1, 1, '0', '', '', 'dk', NULL, NULL, 0),
(46, 'brazil_user@testing.vivino.com', NOW(), NOW(), 'brazil_user', 'br', 86, '', 1, 1, 1, '0', '', 'psu5', 'dk', NULL, 7, 0),
(47, 'gdpr-export@example.com', "2019-11-07T12:20:59", NOW(), 'gdpr-export', 'dk', 2, '', 1, 1, 1, '0', '', '', 'en', 'not_found_image.jpg', NULL, 0),
(77, 'someone@somewhere2.com', NOW() - INTERVAL 101 DAY, NOW(), 'someonesomewhere2', 'dk', 2, 'www.facebook.com/someone2', 1, 1, 1, '0', '', '', 'dk', NULL, NULL, 0),

(101, 'spamuser_1@example.com', NOW(), NOW(), 'spam_user_1', 'dk', NULL, 'jennifer_1@lovls.com/porn_here', 1, 1, 1, '0', '', 'spam_user_1', NULL, NULL, NULL, 0),
(102, 'spamuser_2@example.com', NOW(), NOW(), 'spam_user_2', 'dk', NULL, 'jennifer_2@lovls.com/porn_here', 1, 1, 1, '0', '', 'spam_user_2', NULL, NULL, NULL, 0),
(103, 'spamuser_3@example.com', NOW(), NOW(), 'spam_user_3', 'dk', NULL, 'jennifer_3@lovls.com/porn_here', 1, 1, 1, '0', '', 'spam_user_3', NULL, NULL, NULL, 0),
(104, 'spamuser_4@example.com', NOW(), NOW(), 'spam_user_4', 'dk', NULL, 'jennifer_4@lovls.com/porn_here', 1, 1, 1, '0', '', 'spam_user_4', NULL, NULL, NULL, 0),

(201, 'spamuser_201@example.com', NOW(), NOW(), 'spam_user_201', 'dk', NULL, 'jennifer_201@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_201', NULL, NULL, NULL, 0),
(202, 'spamuser_202@example.com', NOW(), NOW(), 'spam_user_202', 'dk', NULL, 'jennifer_202@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_202', NULL, NULL, NULL, 0),
(203, 'spamuser_203@example.com', NOW(), NOW(), 'spam_user_203', 'dk', NULL, 'jennifer_203@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_203', NULL, NULL, NULL, 0),
(204, 'spamuser_204@example.com', NOW(), NOW(), 'spam_user_204', 'dk', NULL, 'jennifer_204@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_204', NULL, NULL, NULL, 0),
(205, 'spamuser_205@example.com', NOW(), NOW(), 'spam_user_205', 'dk', NULL, 'jennifer_205@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_205', NULL, NULL, NULL, 0),
(206, 'spamuser_206@example.com', NOW(), NOW(), 'spam_user_206', 'dk', NULL, 'jennifer_206@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_206', NULL, NULL, NULL, 0),
(207, 'spamuser_207@example.com', NOW(), NOW(), 'spam_user_207', 'dk', NULL, 'jennifer_207@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_207', NULL, NULL, NULL, 0),
(208, 'spamuser_208@example.com', NOW(), NOW(), 'spam_user_208', 'dk', NULL, 'jennifer_208@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_208', NULL, NULL, NULL, 0),
(209, 'spamuser_209@example.com', NOW(), NOW(), 'spam_user_209', 'dk', NULL, 'jennifer_209@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_209', NULL, NULL, NULL, 0),
(210, 'spamuser_210@example.com', NOW(), NOW(), 'spam_user_210', 'dk', NULL, 'jennifer_210@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_210', NULL, NULL, NULL, 0),
(211, 'spamuser_211@example.com', NOW(), NOW(), 'spam_user_211', 'dk', NULL, 'jennifer_211@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_211', NULL, NULL, NULL, 0),
(212, 'spamuser_212@example.com', NOW(), NOW(), 'spam_user_212', 'dk', NULL, 'jennifer_212@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_212', NULL, NULL, NULL, 0),
(213, 'spamuser_213@example.com', NOW(), NOW(), 'spam_user_213', 'dk', NULL, 'jennifer_213@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_213', NULL, NULL, NULL, 0),
(214, 'spamuser_214@example.com', NOW(), NOW(), 'spam_user_214', 'dk', NULL, 'jennifer_214@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_214', NULL, NULL, NULL, 0),
(215, 'spamuser_215@example.com', NOW(), NOW(), 'spam_user_215', 'dk', NULL, 'jennifer_215@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_215', NULL, NULL, NULL, 0),
(216, 'spamuser_216@example.com', NOW(), NOW(), 'spam_user_216', 'dk', NULL, 'jennifer_216@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_216', NULL, NULL, NULL, 0),
(217, 'spamuser_217@example.com', NOW(), NOW(), 'spam_user_217', 'dk', NULL, 'jennifer_217@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_217', NULL, NULL, NULL, 0),
(218, 'spamuser_218@example.com', NOW(), NOW(), 'spam_user_218', 'dk', NULL, 'jennifer_218@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_218', NULL, NULL, NULL, 0),
(219, 'spamuser_219@example.com', NOW(), NOW(), 'spam_user_219', 'dk', NULL, 'jennifer_219@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_219', NULL, NULL, NULL, 0),
(220, 'spamuser_220@example.com', NOW(), NOW(), 'spam_user_220', 'dk', NULL, 'jennifer_220@matchxn.com/', 1, 1, 1, '0', '', 'spam_user_220', NULL, NULL, NULL, 0),
(230, 'old_user@example.com', "2019-11-07T12:20:59", "2019-11-07T12:20:59", 'old_user_230', 'dk', NULL, '', 1, 1, 1, '0', '', 'old_user_230', NULL, NULL, NULL, 0),
(231, 'new_user@example.com', NOW(), NOW(), 'new_user_231', 'dk', NULL, '', 1, 1, 1, '0', '', 'new_user_231', NULL, NULL, NULL, 0),
(232, 'new_user232@example.com', NOW(), NOW(), 'new_user_232', 'dk', NULL, '', 1, 1, 1, '0', '', 'new_user_232', NULL, NULL, NULL, 0),
(30591, 'dave_kane@price_segment1.com', NOW(), NOW(), 'price_segment_user1', 'dk', 2, '', 1, 1, 1, '0', '', 'psu1', 'dk', NULL, NULL, 0),
(30592, 'dave_kane@price_segment2.com', NOW(), NOW(), 'price_segment_user2', 'dk', 2, '', 1, 1, 1, '0', '', 'psu2', 'dk', NULL, NULL, 0),
(30593, 'dave_kane@price_segment3.com', NOW(), NOW(), 'price_segment_user3', 'dk', 2, '', 1, 1, 1, '0', '', 'psu3', 'dk', NULL, NULL, 0),
(30594, 'dave_kane@price_segment4.com', NOW(), NOW(), 'price_segment_user4', 'dk', 2, '', 1, 1, 1, '0', '', 'psu4', 'dk', NULL, NULL, 0),
(30595, 'dave_kane@price_segment5.com', NOW(), NOW(), 'price_segment_user5', 'dk', 2, '', 1, 1, 1, '0', '', 'psu5', 'dk', NULL, NULL, 0),
(35558, 'dave_kane@wine_preferences.com', NOW(), NOW(), 'wine_preferrer', 'dk', 2, '', 1, 1, 1, '0', '', 'psu5', 'dk', NULL, NULL, 0),
(36390, 'dave_kane@price_preferences.com', NOW(), NOW(), 'price_preferrer', 'dk', 2, '', 1, 1, 1, '0', '', 'psu5', 'dk', NULL, NULL, 0),
(321491, 'boom_program@example.com', NOW(), NOW(), 'boom-program', 'us', 2, '', 1, 1, 1, '0', '', 'Boom Program', 'en', NULL, NULL, 0),
(21499177, 'super_user@example.com', '2018-01-01', NOW(), 'bobbly_tables', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'bobbly_tables', NULL, NULL, NULL,0),
(21499178, 'merge_orders_user@example.com', '2018-01-01', NOW(), 'merge-orders', 'us', NULL, '', 1, 1, 1, '0', @secret_password, 'merge-orders', NULL, NULL, NULL,0);

DELETE FROM `user_premium_subscriptions`;
INSERT INTO `user_premium_subscriptions` (`user_id`, `type`, `valid_until`, `created_at`, `updated_at`, `variation_id`)
VALUES
(22, 1, '2025-01-01', NOW(), NOW(), 3),
(23, 1, '2025-01-01', NOW(), NOW(), 2);

DELETE FROM `user_statistics`;
INSERT INTO `user_statistics` (`user_id`, `ratings_count`, `ratings_sum`, `reviews_count`,
                               `followers_count`, `followings_count`, `user_vintages_count`, `wishlist_count`)
VALUES
(1,5,15,0,5,5,0,0),
(2,0,0,0,0,0,0,0),
(3,0,0,0,0,0,0,0),
(4,0,0,0,0,0,0,0),
(5,5,15,1,1,1,0,0),
(6,0,0,0,0,0,0,0),
(7,0,0,0,0,0,0,0),
(8,0,0,0,0,0,0,0),
(9,0,0,0,0,0,0,0),
(10,0,0,0,0,0,0,0),
(11,0,0,0,0,0,0,0),
(12,0,0,0,0,0,0,0),
(28,0,0,0,0,0,0,2),
(29,0,0,0,0,0,1,1);

INSERT INTO `followers` (`fan_id`, `star_id`, `status`, `updated_at`)
VALUES
(1, 2, "pending", NOW()),
(1, 7, "approved", NOW()),
(1, 8, "approved", NOW()),
(1, 12, "approved", NOW()),
(2, 1, "approved", NOW()),
(2, 5, "approved", NOW()),
(2, 7, "pending", NOW()),
(3, 2, "approved", NOW()),
(3, 5, "approved", NOW()),
(3, 7, "pending", NOW()),
(5, 2, "pending", NOW()),
(7, 1, "pending", NOW()),
(8, 1, "ignored", NOW());

DELETE FROM `vintage_expert_reviews`;
DELETE FROM `expert_reviewers`;

INSERT INTO `expert_reviewers` (`id`, `name`, `initials`)
VALUES
(1, 'Dr. Sommelier', 'DS');

DELETE FROM `regions`;
INSERT INTO `regions` (`id`, `name`, `country`, `seo_url`, `children`, `parent_id`, `root_id`,
                       `name_en`, `class_id`, `background_image`, `review_status`, `description`)
VALUES
(1, 'Middle of Nowhere', 'us', 'middle_of_nowhere', '2,7', NULL, NULL, '', 0, 'p/00tix1j7svg6f.jpg', 0, 'Middle of Nowhere - Description'),
(2, 'Cool wine region from Denmark', 'dk', 'cool_region', NULL, 1, NULL, '', 0, 't/00ppp1j7svg2h.jpg', 2, 'Cool wine region from Denmark - Description'),
(7, 'Missing Islands', 'ua', 'missing_islans', '8', 2, NULL, '', 0, NULL, 0, NULL),
(8, 'TestFindPopularWineStylesByRegionID', 'ua', 'TestFindPopularWineStylesByRegionID', NULL, 7, NULL, '', 0, NULL, 0, NULL),
(24, 'California', 'us', 'california', '25,26,27,28,29,30,31,34,36,37,42,57,61,64,65,68,70,73,76,78,81,82,85,86,88,89,90,91,94,96,97,99,100,104,105,106,107,109,111,113,117,118,119,123,124,137,142,144,152,164,165,172,176,180,183,188,194,196,198,199,201,203,206,211,212,215,305,307,308,525,538,546,547,567,669,670,674,679,680,684,758,799,810,815,843,844,850,856,857,985,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1957,1958,2998,3266', NULL, NULL, '', 0, NULL, 0, NULL),
(25, 'Napa Valley', 'us', 'napa-valley', '37,42,73,85,88,89,90,91,96,97,105,106,107,111,1925,1957', 2998, NULL, '', NULL, 'p/BhynXD0ZR0iCEBET3dAn8g.jpg', 0, NULL),
(27, 'Mendocino County', 'us', 'mendocino-county', '109,117,180,188,843,856,1882,1888,1924,1938', 680, NULL, '', NULL, '', 0, NULL),
(113, 'High Valley', 'us', 'high-valley', '', 29, NULL, '', 15, NULL, 0, NULL),
(201, 'Central Coast','us','central-coast', '30,31,57,70,78,86,99,119,142,198,203,211,215,308,669,670,674,684,850,857,1893,1894,1895,1920,1921,1922,1933,1934,1937,1942,1944,1945,1948,1949,1950,1951,1958,3485', 24, NULL, '', NULL, NULL, 0, NULL),
(383, 'Bordeaux', 'fr', 'bordeaux', '384,386,393,399,417,423,427,432,436,440,451,452,456,457,471,497,509,555,572,644,715,719,738,827,828,2138,2139,2141,2142,2143,2144,2145,2146,2147,2148,2149,2182,2424,2425,2426,2445,2451,2454,2455,2459,2464,3102,3103,3104,3136,3140,3141,3144,3145,3244,3251,3254', NULL, NULL, '', 5, NULL, 0, NULL),
(680, 'North Coast', 'us', 'north-coast', '25,26,27,28,29,37,42,68,73,76,82,85,88,89,90,91,94,96,97,100,105,106,107,109,111,113,117,118,176,180,188,196,307,525,567,758,799,815,843,856,985,1882,1888,1890,1891,1896,1897,1924,1925,1930,1931,1932,1936,1938,1941,1946,1947,1955,1957,2998,4605', 24, NULL, '', NULL, 'p/t4dZZuyoQUWziox9a34VWw.jpg', 0, NULL),
(856, 'Mendocino', 'us', 'mendocino', NULL, 27, NULL, '', NULL, '', 0, NULL),
(2998, 'Napa County', 'us', 'napa-county', '25,37,42,73,85,88,89,90,91,96,97,105,106,107,111,1925,1957', 680, NULL, '', NULL, 'p/s8W_qDt0S6aPCZ01OQQFkw.jpg', 0, NULL),
(394, 'Toscana', 'it', 'tuscany', '673,683,893,962,1796,1797,1798,1799,1800,1801,1849,1850,1851,1852,1853,1854,2662,2663,2664,2665,2666,2667,2668,2669,2670,2671,2672,2673,2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688,2689,2690,2691,2692,2693,2914,2915,2916,2917,2999,3345,3349,3351,3356,3357,3358,3500,3501,4240', NULL, NULL, 'Tuscany', 3, 'p/BsvT2mEmRjiBOAyRdV-zIg.jpg', 0, NULL),
(689, 'Tasmania', 'au', 'tasmania', '690,717,898,914,1421,1423,4380,4383', NULL, NULL, '', 22, NULL, 0, NULL),
(3254, 'Blaye - Côtes de Bordeaux', 'fr', 'blaye-cotes-de-bordeaux', NULL, 2149, NULL, 'Côtes de Blaye', 5, NULL, 0, NULL),
(8946, 'DR', 'do', 'dr', '', NULL, NULL, '', 0, NULL, 0, NULL);

DELETE FROM `region_classes`;
INSERT INTO `region_classes` (`id`, `country_code`, `abbreviation`, `rank`, `description`)
VALUES
(1, 'it', 'DOCG', 1, 'Denominazione di Origine Controllata e Garantita'),
(2, 'it', 'DOC', 2, 'Denominazione di Origine Controllata'),
(3, 'it', 'IGT', 3, 'Indicazione Geographica Tipica');

INSERT INTO `styles` (`id`, `style_region_id`, `style_country_code`,
                      `seo_name`, `name`, `varietal_name`, `regional_name`, `background_image`,
                      `body`, `acidity`, `accessibility`, `ratings_count`, `wine_type_id`,
                      `created_at`, `updated_at`)
VALUES
(1, 1, 'us', 'fancy', 'American Fancy', 'Fancy', 'American', 't/jE9vUBKPTX2y69tYzKvnAw.jpg', 3, 3, 3, 123, 1, NOW(), NOW()),
(2, 1, 'us', 'shit', 'American Shit', 'Shit', 'American', NULL, 4, 3, 4, 321, 2, NOW(), NOW()),
(3, 1, 'us', 'gaucho', 'Southern American', 'Southern', 'American', NULL, 3, 2, 4, 100, 1, NOW(), NOW()),
(5, 8, 'us', '1TestFindPopularWineStylesByRegionID', 'American red 1', 'Southern', 'American', NULL, 4, 2, 4, 100, 1, NOW(), NOW()),
(6, 8, 'us', '2TestFindPopularWineStylesByRegionID', 'American red 2', 'Southern', 'American', NULL, 4, 2, 4, 100, 1, NOW(), NOW()),
(7, 8, 'us', '3TestFindPopularWineStylesByRegionID', 'American red 3', 'Southern', 'American', NULL, 4, 2, 4, 100, 1, NOW(), NOW()),
(8, 8, 'us', '4TestFindPopularWineStylesByRegionID', 'American red 4', 'Southern', 'American', NULL, 4, 2, 4, 100, 1, NOW(), NOW()),
(9, 8, 'us', '5TestFindPopularWineStylesByRegionID', 'American red 5', 'Southern', 'American', NULL, 4, 2, 4, 100, 1, NOW(), NOW()),
(10, 8, 'us', '6TestFindPopularWineStylesByRegionID', 'American red 6', 'Southern', 'American', NULL, 4, 2, 4, 100, 1, NOW(), NOW());

INSERT INTO `wineries` (`id`, `name`, `region_id`,
                        `seo_name`, `review_status`, `winemaker_id`, `logo_image`, `background_image`)
VALUES
(1, 'The Winery', 1, 'the-winery', 0, 0, '', '00tix1j7svg6f.jpg'),
(2, 'Second Winery', 1, 'second-winery', 0, 0, '', NULL),
(3, 'Third Winery', 1, 'third-winery', 0, 0, '', NULL),
(4, 'TestFindPopularWineStylesByWineryID', 2, 'TestFindPopularWineStylesByWineryID', 0, 0, '', NULL),
(5, 'The Winery', 1, 'the-winery 2', 0, 0, '', '00tix1j7svg6f.jpg'),
(6, 'Verified Winery', 1, 'verified-winery', 2, 0, '', NULL),
(649, 'Calcareous Vineyard', 1, 'calcareous-vineyard', 1, 0, '', NULL),
(1324, 'Château Ste. Michelle', 1, 'chateau-ste-michelle-winery', 0, 0, '', NULL),
(2291, 'Attilio Ghisolfi', 1, 'attilio-ghisolfi', 0, 0, '', NULL),
(212219, 'Casillero del Diablo', 1, 'casillero-del-diablo', 0, 0, '', NULL),
(785, 'El Paso Winery', 24, 'el-paso-winery', 0, 0, '', NULL),
(38456, 'Dutton', 24, 'dutton', 0, 0, '', NULL),
(32862, 'Château Clairac', 3254, 'clairac', 0, 0, '', NULL),
(33333, 'DK Second Winery', 1, 'dk-second-winery', 0, 0, '', NULL),
(219999, 'WineFactWinery', 1, 'wine-fact-winery', 0, NULL, '', NULL),
(230000, 'Survived winery for merge', 1, 'survived-winery-for-merge', 0, NULL, '', NULL),
(230001, 'Winery for merge', 1, 'winery-for-merge', 0, NULL, '', NULL),
(461239, 'Some other winery', 8946, 'some-other-winery', 2, 0, '', NULL);

INSERT INTO `winery_first_wines` (`winery_id`, `type_id`, `wine_id`)
VALUES
(3, 1, 4);

INSERT INTO `winery_first_wines` (`winery_id`, `type_id`, `wine_id`)
VALUES
(2, 1, 19);

INSERT INTO `wines`
(`id`,`winery_id`,`name`,`seo_name`,`region_id`,`type_id`,`description`, `specialists_notes`,`light_winery`,`light_country`,`light_region`, `vintage_mask`, `vintage_type`,`visible`)
VALUES
(1,1,'The Wine','the-wine',1,1,'The Wine description','Specialists notes','Light winery','dk','Region',NULL,1,1),
(2,1,'Not Wine','not-wine',1,1,'Not Wine description','Specialists notes','Not Wine winery','dk','Region',NULL,1,1),
(3,2,'Hot Wine','hot-wine',1,2,'Hot Wine description','Specialists notes','Hot Wine winery','dk','Region',NULL,1,1),
(4,3,'Barley Wine','barley-wine',1,1,'Barley Wine description','Specialists notes','Barley Wine winery','dk','Region',NULL,1,1),
(5,3,'So So Sparkling','so-so-sparkling',1,3,'Not a bad sparkling wine','Specialists notes','Barley Wine winery','dk','Region',NULL,0,1),
(6,NULL,'Light Wine','light-wine',1,3,'Some good light wine','Specialists notes','Light Wine winery','dk','Region',NULL,0,1),
(7,4,'TestFindPopularWineStylesByRegionID','testfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(8,4,'1TestFindPopularWineStylesByRegionID','one-testfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(9,4,'2estFindPopularWineStylesByRegionID','two-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,0),
(10,4,'3estFindPopularWineStylesByRegionID','three-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(11,4,'4estFindPopularWineStylesByRegionID','four-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(12,4,'5estFindPopularWineStylesByRegionID','five-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(13,4,'6estFindPopularWineStylesByRegionID','six-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(14,4,'7estFindPopularWineStylesByRegionID','seven-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(15,4,'8estFindPopularWineStylesByRegionID','eight-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(16,4,'9estFindPopularWineStylesByRegionID','nine-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(17,4,'10estFindPopularWineStylesByRegionID','ten-estfindpopularwinestylesbyregionid',8,3,'Some heavy wine','Specialists notes','Heavy Wine winery','dk','Region',NULL,0,1),
(18,NULL,'Light Wine','light-wine-middle-of-nowhere',1,3,'Some good light wine','Specialists notes','Light Wine winery','dk','Region',NULL,0,1),
(19,2,'Test Search Wine','test-search-wine',1,1,'Test Seaarch Wine description','Specialists notes','Test Search Wine winery','dk','Region',NULL,1,1),
(150,2,'Test highlight vintage','test-highlight-vintage',1,1,'Test highlight vintage','Specialists notes','Test highlight vintage','dk','Region',NULL,1,1),
(200,38456,'Test Vintage Seo Url Duplicates','test-vintage-seo-url-duplicates',24,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(201,38456,'Test Vintage Seo Url Duplicates','test-vintage-seo-url-duplicates-california',24,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(202,NULL,'Test Light Vintage Seo Url Duplicates','test-light-vintage-seo-url-duplicates',24,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(203,NULL,'Test Light Vintage Seo Url Duplicates','test-light-vintage-seo-url-duplicates',24,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1067,NULL,'Clos Des Litanies','clos-des-litanies',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1433,1324,'Cold Creek Syrah','cold-creek-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1434,1324,'Syrah','syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1437,1324,'Canoe Ridge Estate Chardonnay','canoe-ridge-estate-chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1438,1324,'Cold Creek Chardonnay','cold-creek-chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1439,1324,'Chardonnay','chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1440,1324,'Ethos Reserve Chardonnay','ethos-reserve-chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1445,1324,'Indian Wells Chardonnay','indian-wells-chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1446,1324,'Horse Heaven Vineyard Chenin Blanc','horse-heaven-vineyard-chenin-blanc',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1448,1324,'Pinot Gris','pinot-gris',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1450,1324,'Cold Creek Riesling','cold-creek-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1451,1324,'Dry Riesling','dry-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1453,1324,'Eroica Riesling','eroica-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1455,1324,'Ethos Reserve Late Harvest Riesling','ethos-reserve-late-harvest-riesling',1,7,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1457,1324,'Indian Wells Riesling','indian-wells-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1458,1324,'Sauvignon Blanc','sauvignon-blanc',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1460,1324,'Horse Heaven Vineyard Sauvignon Blanc','horse-heaven-vineyard-sauvignon-blanc',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(35558,NULL,'Non Preferred Wine','non-preferred-wine',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(35559,NULL,'Preferred Wine','preferred-wine',2,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(91265,785,'Riesling','riesling',24,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110341,1324,'Limited Release Mourvèdre','limited-release-mourvedre',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110343,1324,'Cabernet Sauvignon','cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110344,1324,'Riesling','riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110346,1324,'Muscat Canelli','muscat-canelli',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110353,1324,'Indian Wells Merlot','indian-wells-merlot',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110354,1324,'Limited Release Grenache','limited-release-grenache',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110355,1324,'Limited Release Viognier','limited-release-viognier',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110356,1324,'Harvest Select Sweet Riesling','harvest-select-sweet-riesling',1,7,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1110357,1324,'Limited Release Austral Red','limited-release-austral-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1122186,NULL,'Pinot Noir','pinot-noir',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1132669,1324,'Merlot','merlot',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1140703,1324,'Gewürztraminer','gewurztraminer',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1142712,1324,'Indian Wells Cabernet Sauvignon','indian-wells-cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1143531,1324,'Limited Release Waussie Riesling','limited-release-waussie-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1143625,1324,'Cold Creek Cabernet Sauvignon','cold-creek-cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1143892,1324,'Orphelin Red','orphelin-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1144342,1324,'Limited Release Oak Oval Gewürztraminer','limited-release-oak-oval-gewurztraminer',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1146820,1324,'Nellie\'s Garden Dry Rosé','nellie-s-garden-dry-rose',1,4,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1148025,1324,'Cold Creek Cabernet Franc','cold-creek-cabernet-franc',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1154719,1324,'Moscato Frizzante','moscato-frizzante',1,3,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1155864,1324,'Limited Release Malbec','limited-release-malbec',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1155865,1324,'Artist Series Red','artist-series-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1155873,1324,'Eroica Single Berry Select','eroica-single-berry-select',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1155874,1324,'Canoe Ridge Estate Cabernet Sauvignon','canoe-ridge-estate-cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1158266,38456,'Sonoma County Pinot Noir','sonoma-county-pinot-noir',24,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1160877,1324,'Ethos Reserve Cabernet Sauvignon','ethos-reserve-cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1163605,1324,'Marier Limited Release Sauvignon Blanc','marier-limited-release-sauvignon-blanc',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1167511,1324,'Johannisberg Riesling','johannisberg-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1168876,2291,'Barolo','barolo',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1185251,1324,'Ice Chenin Blanc','ice-chenin-blanc',1,7,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1189361,2291,'Vigna Lisi Barbera d\'Alba','vigna-lisi-barbera-d-alba',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1196227,2291,'Langhe Pinay','langhe-pinay',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1203368,2291,'Langhe Alta Bussia Rosso','langhe-alta-bussia-rosso',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1204001,2291,'Barolo Bricco Visette','barolo-bricco-visette',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1215633,2291,'Pinay Langhe Rosso','pinay-langhe-rosso',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1218401,2291,'Bricco Visette Barolo','bricco-visette-barolo',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1220088,1324,'Ethos Reserve Merlot','ethos-reserve-merlot',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1222169,2291,'Maggiora Barbera d\'Alba','maggiora-barbera-d-alba',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1230653,1324,'Eroica Ice Riesling','eroica-ice-riesling',1,7,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1232561,1324,'Canoe Ridge Estate Merlot','canoe-ridge-estate-merlot',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1265531,1324,'Indian Wells Red Blend','indian-wells-red-blend',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1266258,32862,'Blaye Côtes de Bordeaux','blaye-cotes-de-bordeaux',383,1,NULL,NULL,NULL,NULL,NULL,NULL,1,0),
(1308350,2291,'Barolo Reserva Fantini','barolo-reserva-fantini',1,25,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1368033,2291,'Nibbio Vino Rosso','nibbio-vino-rosso',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1486815,2291,'Moscato d\'Asti','moscato-d-asti',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1513275,1324,'Limited Release CSM Red','limited-release-csm-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1628060,1324,'Limited Release Astral White','limited-release-astral-white',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1656098,1324,'Late Harvest Chenin Blanc','late-harvest-chenin-blanc',1,7,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1658676,1324,'Limited Release Syrah Rosé','limited-release-syrah-rose',1,4,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1706711,1324,'Limited Release Boreal Red','limited-release-boreal-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1728190,1324,'Eroica Gold Riesling','eroica-gold-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1732463,1324,'Limited Release Midsummer\'s White','limited-release-midsummer-s-white',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1732465,1324,'Midsummer\'s White Limited Release ','midsummer-s-white-limited-release',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1733987,1324,'Mimi Chardonnay','mimi-chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1741898,2291,'Barolo Bussia','barolo-bussia',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1787064,1324,'Limited Release Druthers Cabernet Sauvignon','limited-release-druthers-cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1812217,1324,'Ethos Reserve Ken Griffey Jr. Cabernet Sauvignon','ethos-reserve-ken-griffey-jr-cabernet-sauvignon',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1858612,2291,'Langhe Nebbiolo','langhe-nebbiolo',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1881076,32862,'Blaye Côtes De Bordeaux','blaye-cotes-de-bordeaux-bordeaux',383,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1896489,1324,'Limited Release Gewürztraminer','limited-release-gewurztraminer',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1918537,1324,'Limited Release Stone Tree Vineyard Syrah','limited-release-stone-tree-vineyard-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1940686,1324,'Canoe Ridge Estate Syrah','canoe-ridge-estate-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1943088,1324,'Cold Creek Merlot','cold-creek-merlot',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1978693,1324,'Limited Release Petit Verdot','limited-release-petit-verdot',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1996646,1324,'Limited Release Chenin Blanc','limited-release-chenin-blanc',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2023313,1324,'Blush Riesling','blush-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2041193,2291,'Barolo Riserva Fantini','barolo-riserva-fantini',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2044190,1324,'Ethos Reserve Syrah','ethos-reserve-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2055415,1324,'Limited Release Unoaked Chardonnay','limited-release-unoaked-chardonnay',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2113484,2291,'Langhe Carlin Rosso','langhe-carlin-rosso',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2178738,1324,'Sémillon','semillon',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2196200,1324,'Saint M Riesling','saint-m-riesling',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2206540,1324,'Three-Oh Red','three-oh-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2340934,1324,'Reserve Riesling Ice White','reserve-riesling-ice-white',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2533900,1324,'Limited Release Cold Fiddle White','limited-release-cold-fiddle-white',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2545487,1324,'Cuvée Brut','cuvee-brut',1,3,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2549113,1324,'Limited Release Cold Creek Vineyard Red','limited-release-cold-creek-vineyard-red',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2571960,1324,'Limited Release Cold Creek Vineyard Cabernet Franc','limited-release-cold-creek-vineyard-cabernet-franc',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2578019,1324,'Cold Fiddle White','cold-fiddle-white',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2622301,2291,'Spumante Metodo Classico','spumante-metodo-classico',1,25,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2625626,1324,'50 Anniversary Brut','fifty-anniversary-brut',1,3,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2649131,1324,'Ethos Reserve Late Harvest Chenin Blanc','ethos-reserve-late-harvest-chenin-blanc',1,7,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2649159,1324,'Limited Release Cinsaut','limited-release-cinsaut',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2649174,1324,'Limited Release CSM White','limited-release-csm-white',1,2,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2658587,1324,'Limited Release Cold Creek Vineyard Syrah','limited-release-cold-creek-vineyard-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(2804991,2291,'Rose','rose',1,4,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(3015295,1324,'Reserve Syrah','reserve-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(3019350,1324,'Brut','brut',1,3,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(3142985,2291,'Piemonte Bricco Visette Monforte D\' Alba','piemonte-bricco-visette-monforte-d-alba',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(3924220,212219,'Devil\'s Collection Brut','devil-s-collection-brut',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(4275254,2291,'Dolcetto D\'Alba','dolcetto-d-alba',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(4382176,1324,'Meritage','meritage',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(4442870,2291,'Ciabot Minat Barolo Riserva','ciabot-minat-barolo-riserva',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(4467335,1324,'Cougar Vineyard Syrah','cougar-vineyard-syrah',1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),
(1299299, 219999, 'WineFactWine', 'winefactwine', 383, 1, NULL, NULL, NULL, NULL,NULL, NULL,1, 0),
(1299399, 1, 'WineImageWine', 'wineimagewine', 383, 1, NULL, NULL, NULL, NULL,NULL,NULL, 1,0),
(1300000, 230000, 'The Survived Wine for merge','the-wine-for-merge', 1, 1, 'WineForMerge','Specialists notes','Light winery','dk','Region',NULL,1,1),
(1300001, 230000, 'The Wine for merge', 'the-wine-for-merge1', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,0),
(1300002, 230000, 'The Another Wine for merge', 'the-wine-for-merge2', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,0),
(1300003, 230000, 'The Wine for validation test 1', 'the-wine-for-validation-test1', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300004, 230000, 'The Wine for validation test 2', 'the-wine-for-validation-test2', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,0),
(1300005, 230000, 'The Wine for validation test 3', 'the-wine-for-validation-test3', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,0),
(1300010, 230000, 'The Wine for merge 10', 'the-wine-for-merge-10', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300011, 230000, 'The Wine for merge 11', 'the-wine-for-merge-11', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300012, 230000, 'The Wine for merge 12', 'the-wine-for-merge-12', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300013, 230000, 'The Wine for merge 13', 'the-wine-for-merge-13', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300014, 230000, 'The Wine for merge 14', 'the-wine-for-merge-14', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300015, 230000, 'The Wine for merge 15', 'the-wine-for-merge-15', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300016, 230000, 'The Wine for merge 16', 'the-wine-for-merge-16', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300017, 230000, 'The Wine for merge 17', 'the-wine-for-merge-17', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300018, 230000, 'The Wine for merge 18', 'the-wine-for-merge-18', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300019, 230000, 'The Wine for merge 19', 'the-wine-for-merge-19', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300020, 230000, 'The Wine for merge fail 20', 'the-wine-for-merge-fail-20', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1300021, 230000, 'The Wine for merge 21', 'the-wine-for-merge-21', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,0),
(1300022, 230000, 'The Wine for merge 22', 'the-wine-for-merge-22', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 0),
(1400000, 230000, 'The Wine for vintage mask test 1', 'the-wine-for-vintage-mask-test1', 1, 1, NULL, NULL, NULL, NULL,NULL, "2019", 1, 0),
(1400001, 230000, 'The Wine for vintage mask test 2', 'the-wine-for-vintage-mask-test2', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,0),
(1400002, 230000, 'The Wine for non vintage mask test 3', 'the-wine-for-non-vintage-mask-test3', 1, 1, NULL, NULL, NULL, NULL,NULL, ">0",1, 0),
(1400003, 230000, 'Test find merged wine', 'find-merged-wine', 1, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1,1),
(1500000, 2, 'Test region updater wine', 'test-region-updater-wine', 8946, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 1),
(1500001, 2, 'Test region updater wine 1', 'test-region-updater-wine1', 8946, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 1),
(1500002, 2, 'Test region updater wine 2', 'test-region-updater-wine2', 8946, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 1),
(1500003, 2, 'Test region updater wine 3', 'test-region-updater-wine3', 8946, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 1),
(1500004, 461239, 'Test region updater wine 4', 'test-region-updater-wine4', 8946, 1, NULL, NULL, NULL, NULL,NULL, NULL, 1, 1);
UPDATE `wines` SET `review_status` = 1 WHERE `id` = 19;
INSERT INTO `wine_statistics` (`wine_id`, `vintages_count`, `ratings_count`, `ratings_sum`, `labels_count`)
VALUES
(1, 2, 30, 100.0, 120),
(2, 3, 32, 103.0, 20),
(3, 2, 0, 0.0, 40),
(4, 2, 0, 0.0, 0),
(5, 0, 1, 2.0, 0),
(6, 2, 1, 2.0, 1);

INSERT INTO `wine_styles` (`wine_id`, `style_id`)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 6),
(12, 6),
(13, 6),
(15, 7),
(16, 7),
(17, 8),
(35558, 1),
(35559, 2);

DELETE FROM `pld_requests`;
INSERT INTO `pld_requests` (`id`, `wine_id`, `status`)
VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 7),
(4, 4, 6),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 5);


DELETE FROM `pld_batches`;
INSERT INTO `pld_batches` (`id`, `created_at`)
VALUES
(1, '2017-03-27 00:00:00'),
(2, '2017-03-28 00:00:00'),
(3, '2017-03-29 00:00:00');

DELETE FROM `pld_batched_requests`;
INSERT INTO `pld_batched_requests` (`id`, `pld_request_id`, `pld_batch_id`, `source_image`, `processed_bottle_image`, `processed_label_image`)
VALUES
(1, 1, 1, "", "t/8uKQ7VGbQhivIcn52Im1CA_pb", "t/8uKQ7VGbQhivIcn52Im1CA_pl"),
(2, 2, 1, "", "t/8uKQ7VGbQhivIcn52Im1CA_pb", "t/8uKQ7VGbQhivIcn52Im1CA_pl"),
(3, 3, 1, "", "t/jjDJDfyCRI2rG-STAD65EA_pb", "t/jjDJDfyCRI2rG-STAD65EA_pl"),
(4, 4, 1, "", "t/s4e86_GjRA-iEq85RpvVcg_pb", "t/s4e86_GjRA-iEq85RpvVcg_pl"),
(5, 5, 2, "", "t/x1jEEU3DTCmybjkeG0sHlw_pb", "t/x1jEEU3DTCmybjkeG0sHlw_pl"),
(6, 6, 2, "", "t/VgWGHryqRcGiGf3rhon90A_pb", "t/VgWGHryqRcGiGf3rhon90A_pl"),
(7, 7, 3, "", "t/606UMEwoSnKUrlHndktOlw_pb", "t/606UMEwoSnKUrlHndktOlw_pl"),
(8, 8, 3, "", "t/gRMKD_18Tr-X8TYzWAn1PA_pb", "t/gRMKD_18Tr-X8TYzWAn1PA_pl"),
(9, 9, 3, "", "t/OTPzYaWBRPOHU31xZ5LQPg_pb", "t/OTPzYaWBRPOHU31xZ5LQPg_pl"),
(10, 10, 3, "", "t/qv9tRjaFSU2NwRDgZoBmRQ_pb", "t/qv9tRjaFSU2NwRDgZoBmRQ_pl"),
(11, 11, 1, "", "t/qv9tRjaFSU2NwRDgZoBmRQ_pb", "t/qv9tRjaFSU2NwRDgZoBmRQ_pl");

DELETE FROM `pld_request_events`;
INSERT INTO `pld_request_events` (`id`, `pld_request_id`, `type`, `user_id`, `note`, `metadata`, `created_at`)
VALUES
(1, 1, 0, 1, "Test", "{}", "2020-01-01");

DELETE FROM `wine_images`;
INSERT INTO `wine_images` (`id`, `wine_id`, `pld_request_id`, `year_start`, `year_end`, `type`, `name`, `visible`, `src_size`, `src_width`, `src_height`, `src_name`, `src_service`, `src_date`, `src_uploaded_at`, `created_at`)
VALUES
(1, 1, 1, NULL, NULL, 0, 't/8uKQ7VGbQhivIcn52Im1CA_pl', 0, 847735, 960, 1280, '92579_ALL_24H_WINE_ORGFN_PNG_0980273_label.png', NULL, '2017-03-27', '2017-04-07 18:09:39', '2017-05-02 09:53:40'),
(2, 1, 1, NULL, NULL, 1, 't/8uKQ7VGbQhivIcn52Im1CA_pb', 0, 2889519, 1331, 4800, '92579_ALL_24H_WINE_ORGFN_PNG_0980273.png', NULL, '2017-03-27', '2017-04-07 18:09:39', '2017-05-02 09:53:44'),
(3, 16, 2, NULL, NULL, 0, 't/yVXtkpCyR3G8rvpN5i41lA_pl', 1, 2055959, 960, 1280, '49424_ALL_24H_WINE_ORGFN_PNG_0980416_label.png', NULL, '2017-03-27', '2017-04-07 18:06:51', '2017-05-02 11:32:23'),
(4, 16, 2, NULL, NULL, 1, 't/yVXtkpCyR3G8rvpN5i41lA_pb', 1, 8590397, 1505, 4800, '49424_ALL_24H_WINE_ORGFN_PNG_0980416.png', NULL, '2017-03-27', '2017-04-07 18:06:51', '2017-05-02 11:32:27'),
(5, 3, 3, NULL, NULL, 0, 't/jjDJDfyCRI2rG-STAD65EA_pl', 1, 1158086, 960, 1280, '1381550_ALL_24H_WINE_ORGFN_PNG_0980429_label.png', NULL, '2017-03-27', '2017-04-07 16:08:20', '2017-05-02 11:33:34'),
(6, 3, 3, NULL, NULL, 1, 't/jjDJDfyCRI2rG-STAD65EA_pb', 1, 4130053, 1299, 4800, '1381550_ALL_24H_WINE_ORGFN_PNG_0980429.png', NULL, '2017-03-27', '2017-04-07 16:08:20', '2017-05-02 11:33:38'),
(7, 3, NULL, NULL, NULL, 0, 't/ha7eP1A7S0SECnpscvhdpw_pl', 0, 889966, 960, 1280, '1369753_ALL_24H_WINE_ORGFN_PNG_0980254_label.png', NULL, '2017-03-27', '2017-04-07 16:07:37', '2017-05-02 12:18:59'),
(8, 3, NULL, NULL, NULL, 1, 't/ha7eP1A7S0SECnpscvhdpw_pb', 0, 1651147, 1270, 4800, '1369753_ALL_24H_WINE_ORGFN_PNG_0980254.png', NULL, '2017-03-27', '2017-04-07 16:07:37', '2017-05-02 12:19:04'),
(13, 16, 4, NULL, NULL, 0, 't/KAW_xlzsRFS45yZjf6mNEQ_pl', 1, 1598572, 960, 1280, '2114480_ALL_24H_WINE_ORGFN_PNG_0980318_label.png', NULL, '2017-03-27', '2017-04-07 18:03:44', '2017-05-02 12:32:18'),
(14, 16, 4, NULL, NULL, 1, 't/KAW_xlzsRFS45yZjf6mNEQ_pb', 1, 7337086, 1567, 4800, '2114480_ALL_24H_WINE_ORGFN_PNG_0980318.png', NULL, '2017-03-27', '2017-04-07 18:03:44', '2017-05-02 12:32:23'),
(15, 5, NULL, NULL, NULL, 0, 't/s4e86_GjRA-iEq85RpvVcg_pl', 0, 2102133, 960, 1280, '1245_ALL_24H_WINE_ORGFN_PNG_0980406_label.png', NULL, '2017-03-28', '2017-04-07 16:07:41', '2017-05-02 12:33:58'),
(16, 5, NULL, NULL, NULL, 1, 't/s4e86_GjRA-iEq85RpvVcg_pb', 0, 6109181, 1270, 4800, '1245_ALL_24H_WINE_ORGFN_PNG_0980406.png', NULL, '2017-03-28', '2017-04-07 16:07:41', '2017-05-02 12:34:01'),
(17, 6, 5, NULL, NULL, 0, 't/x1jEEU3DTCmybjkeG0sHlw_pl', 1, 1536831, 960, 1280, '81864_ALL_24H_WINE_ORGFN_PNG_0980443_label.png', NULL, '2017-03-28', '2017-04-07 16:11:13', '2017-05-03 08:59:29'),
(18, 6, 5, NULL, NULL, 1, 't/x1jEEU3DTCmybjkeG0sHlw_pb', 1, 4165806, 1299, 4800, '81864_ALL_24H_WINE_ORGFN_PNG_0980443.png', NULL, '2017-03-28', '2017-04-07 16:11:13', '2017-05-03 08:59:31'),
(19, 6, NULL, NULL, NULL, 0, 't/ecNl_JA4TrWwrP3qgxAEbw_pl', 1, 1448857, 960, 1280, '20726_ALL_24H_WINE_ORGFN_PNG_0980417_label.png', NULL, '2017-03-28', '2017-04-07 16:10:46', '2017-05-03 09:23:36'),
(20, 6, NULL, NULL, NULL, 1, 't/ecNl_JA4TrWwrP3qgxAEbw_pb', 1, 4948302, 1470, 4800, '20726_ALL_24H_WINE_ORGFN_PNG_0980417.png', NULL, '2017-03-28', '2017-04-07 16:10:46', '2017-05-03 09:23:44'),
(21, 7, NULL, NULL, NULL, 0, 't/qRBzu3qBTbGHy7dt4Pgvjw_pl', 1, 1564438, 960, 1280, '1134730_ALL_24H_WINE_ORGFN_PNG_0980475_label.png', NULL, '2017-03-28', '2017-04-07 16:02:19', '2017-05-03 09:24:10'),
(22, 8, 6, NULL, NULL, 0, 't/VgWGHryqRcGiGf3rhon90A_pl', 1, 999411, 960, 1280, '1141815_ALL_24H_WINE_ORGFN_PNG_0980395_label.png', NULL, '2017-03-28', '2017-04-07 16:04:23', '2017-05-03 09:52:00'),
(23, 8, 6, NULL, NULL, 1, 't/VgWGHryqRcGiGf3rhon90A_pb', 1, 3033477, 1284, 4800, '1141815_ALL_24H_WINE_ORGFN_PNG_0980395.png', NULL, '2017-03-28', '2017-04-07 16:04:23', '2017-05-03 09:52:07'),
(24, 9, 7, NULL, NULL, 0, 't/606UMEwoSnKUrlHndktOlw_pl', 1, 888014, 960, 1280, '1128171_ALL_24H_WINE_ORGFN_PNG_0980329_label.png', NULL, '2017-03-28', '2017-04-07 16:01:12', '2017-05-03 10:14:41'),
(25, 9, 7, NULL, NULL, 1, 't/606UMEwoSnKUrlHndktOlw_pb', 1, 2662311, 1270, 4800, '1128171_ALL_24H_WINE_ORGFN_PNG_0980329.png', NULL, '2017-03-28', '2017-04-07 16:01:12', '2017-05-03 10:14:44'),
(26, 10, 8, NULL, NULL, 0, 't/gRMKD_18Tr-X8TYzWAn1PA_pl', 1, 1405085, 960, 1280, '1603722_ALL_24H_WINE_ORGFN_PNG_0980258_label.png', NULL, '2017-03-29', '2017-04-07 18:01:44', '2017-05-03 10:20:18'),
(27, 10, 8, NULL, NULL, 1, 't/gRMKD_18Tr-X8TYzWAn1PA_pb', 1, 4533037, 1270, 4800, '1603722_ALL_24H_WINE_ORGFN_PNG_0980258.png', NULL, '2017-03-29', '2017-04-07 18:01:44', '2017-05-03 10:20:21'),
(28, 11, 9, NULL, NULL, 0, 't/OTPzYaWBRPOHU31xZ5LQPg_pl', 1, 1648608, 960, 1280, '76786_ALL_24H_WINE_ORGFN_PNG_0980403_label.png', NULL, '2017-03-29', '2017-04-07 18:08:32', '2017-05-03 10:22:26'),
(29, 11, 9, NULL, NULL, 1, 't/OTPzYaWBRPOHU31xZ5LQPg_pb', 1, 5545515, 1270, 4800, '76786_ALL_24H_WINE_ORGFN_PNG_0980403.png', NULL, '2017-03-29', '2017-04-07 18:08:32', '2017-05-03 10:22:30'),
(30, 12, NULL, NULL, NULL, 0, 't/PXIlN7BmRquLcDB2s4u-LQ_pl', 0, 1701680, 960, 1280, '92460_ALL_24H_WINE_ORGFN_PNG_0980496_label.png', NULL, '2017-03-29', '2017-04-07 18:09:56', '2017-05-03 10:36:55'),
(31, 12, NULL, NULL, NULL, 1, 't/PXIlN7BmRquLcDB2s4u-LQ_pb', 0, 6563014, 1270, 4800, '92460_ALL_24H_WINE_ORGFN_PNG_0980496.png', NULL, '2017-03-29', '2017-04-07 18:09:56', '2017-05-03 10:36:59'),
(32, 13, 10, NULL, NULL, 0, 't/qv9tRjaFSU2NwRDgZoBmRQ_pl', 1, 1368116, 960, 1280, '10902_ALL_24H_WINE_ORGFN_PNG_0980507_label.png', NULL, '2017-03-29', '2017-04-07 16:00:39', '2017-05-03 10:39:25'),
(33, 13, 10, NULL, NULL, 1, 't/qv9tRjaFSU2NwRDgZoBmRQ_pb', 1, 3693876, 1272, 4800, '10902_ALL_24H_WINE_ORGFN_PNG_0980507.png', NULL, '2017-03-29', '2017-04-07 16:00:39', '2017-05-03 10:39:30');


INSERT INTO `vintages` (`id`, `wine_id`, `year`, `seo_name`, `image`, `drink_from`, `drink_until`, `ph`, `other_properties`)
VALUES
(1, 1, 2005, 'the-wine-2005', '', 0, 0, 12.3, '{"certified_biodynamic": false}'),
(2, 2, 2006, 'not-wine-2006', '', 0, 0, NULL, NULL),
(3, 3, 2007, 'hot-wine-2007', '', 0, 0, NULL, NULL),
(4, 4, 2008, 'barley-wine-2008', '', 0, 0, NULL, NULL),
(5, 4, 2009, 'barley-wine-2009', '', 0, 0, NULL, NULL),
(6, 3, 2009, 'hot-wine-2009', '', 0, 0, NULL, NULL),
(7, 6, 2009, 'light-wine-2009', '', 0, 0, NULL, NULL),
(8, 1, 2011, 'the-wine-2011', '', 0, 0, NULL, NULL),
(9, 6, 2008, 'light-wine-2008', '', 0, 0, NULL, NULL),
(100, 2, 0, 'the-wine1-8888', '', 0, 0, NULL, NULL),
(200, 9, 0, '2est-find-popluar-wine-styles-by-region-9999', '', 0, 0, NULL, NULL),
(201, 9, 2008, '2est-find-popluar-wine-styles-by-region-2008', '', 0, 0, NULL, NULL),
(3715211, 1741898, 2006, 'barolo-bussia-2006', '', 0, 0, NULL, NULL),
(4121885, 1741898, 2009, 'barolo-bussia-2009', '', 0, 0, NULL, NULL),
(61109535, 3924220, 2014, 'devils-brut-2014', '', 0, 0, NULL, NULL),
(110554, 91265, 2006, 'riesling-2006', '', 0, 0, NULL, NULL),
(4470664, 1158266, 2002, 'riesling-2002', '', 0, 0, NULL, NULL),
(4470665, 200, 2002, 'test-vintage-seo-url-duplicates-2002', '', 0, 0, NULL, NULL),
(4470666, 201, 2002, 'test-vintage-seo-url-duplicates-2002', '', 0, 0, NULL, NULL),
(4470667, 202, 2002, 'test-light-vintage-seo-url-duplicates-2002', '', 0, 0, NULL, NULL),
(4470668, 203, 2002, 'test-light-vintage-seo-url-duplicates-2002', '', 0, 0, NULL, NULL),
(2220999, 1299299, 2002, 'WineFactVintage', '', 0, 0, NULL, NULL),
(2221999, 1299299, 2003, 'WineFactVintage2', '', 0, 0, NULL, NULL),
(2222999, 1299299, 2004, 'WineFactVintage3', '', 0, 0, NULL, NULL),
(2223999, 1299299, 2005, 'WineFactVintage4', '', 0, 0, NULL, NULL),
(30591, 1299299, 2006, 'PriceSegmentVintage1', '', 0, 0, NULL, NULL),
(30592, 1299299, 2007, 'PriceSegmentVintage2', '', 0, 0, NULL, NULL),
(30593, 1299299, 2008, 'PriceSegmentVintage3', '', 0, 0, NULL, NULL),
(30594, 1299299, 2009, 'PriceSegmentVintage4', '', 0, 0, NULL, NULL),
(30595, 1299299, 2010, 'PriceSegmentVintage5', '', 0, 0, NULL, NULL),
(30596, 1299299, 2011, 'PriceSegmentVintage6', '', 0, 0, NULL, NULL),
(30597, 1299299, 2012, 'VintagesMerge1', '', 0, 0, NULL, NULL),
(30598, 1299299, 2013, 'VintagesMerge2', '', 0, 0, NULL, NULL),
(35558, 35558, 2019, 'Non-preferred-vintage', '', 0, 0, NULL, NULL),
(35559, 35559, 2019, 'Preferred-vintage', '', 0, 0, NULL, NULL),
(40000, 1300000, 2014, 'VintageForAPIMerge1', '', 0, 0, NULL, NULL),
(40001, 1300000, 2015, 'VintageForAPIMerge2', '', 0, 0, NULL, NULL),
(40002, 1300000, 2016, 'VintageForAPIMerge3', '', 0, 0, NULL, NULL),
(40003, 1300019, 2016, 'VintageForAPIMerge4', '', 0, 0, NULL, NULL),
(612233884, 1, 2016, 'VintageForFlags1', '', 0, 0, NULL, NULL);

UPDATE `vintages` SET description = 'The best vintage <3' WHERE id = 1;

INSERT INTO `merge_vintages` (`vintage_id`, `to_vintage_id`, `wine_id`, `merge_status`, `vintage_name`, `seo_url`, `vintage_image`)
VALUES
(10000,      2,  1000, 1, '2006',   'merged-vintage-2006', ''),
(10001, 110554,  1001, 1, '2006', 'el-laso-riesling-2006', '');

INSERT INTO `merge_wines` (`user_id`, `from_wine_id`, `to_wine_id`, `merge_state`, `merged_at`)
VALUES
(1, 1000,     2, 2, NOW()),
(1, 1001, 91265, 1, null),
(1, 1300021, 91265, 2, NOW()),
(1, 1300022, 91265, -1, null),
(1, 1300010, 1300011, 2, NOW()),
(1, 1300011, 1300012, 2, NOW()),
(1, 1300012, 1300013, 2, NOW()),
(1, 1300013, 1300014, 2, NOW()),
(1, 1300014, 1300015, 2, NOW()),
(1, 1300015, 1300016, 2, NOW()),
(1, 1300016, 1300017, 2, NOW()),
(1, 1300017, 1300018, 2, NOW()),
(1, 1300018, 1300019, 2, NOW());

INSERT INTO `merge_wineries`
(`id`, `from_winery_id`, `from_winery_seo_name`, `to_winery_id`, `to_winery_seo_name`, `status`, `merged_at`, `created_at`)
VALUES
(1, 154264,     'el-laso',   785, 'el-paso-winery', 1, NOW(), NOW()),
(2,  78181,'dutton-78181', 38456, 'dutton', 1, NOW(), NOW()),
(3,  10001,'winery-10001', 10002, 'winery-10002', 1, NOW(), NOW()),
(4,  10002,'winery-10002', 10003, 'winery-10003', 1, NOW(), NOW()),
(5,  10003,'winery-10003', 10004, 'winery-10004', 1, NOW(), NOW()),
(6,  10004,'winery-10004', 10005, 'winery-10005', 1, NOW(), NOW()),
(7,  10005,'winery-10005', 10006, 'winery-10006', 1, NOW(), NOW()),
(8,  10006,'winery-10006', 10007, 'winery-10007', 1, NOW(), NOW()),
(9,  10007,'winery-10007', 10008, 'winery-10008', 1, NOW(), NOW()),
(10, 10008,'winery-10008', 10009, 'winery-10009', 1, NOW(), NOW()),
(11, 10011,'winery-10011', 10012, 'winery-10012', 1, NOW(), NOW()),
(12, 10012,'winery-10012', 10013, 'winery-10013', 1, NOW(), NOW()),
(13, 10013,'winery-10013', 10014, 'winery-10014', 1, NOW(), NOW()),
(14, 10014,'winery-10014', 10011, 'winery-10011', 1, NOW(), NOW());

INSERT INTO `vintage_expert_reviews` (`expert_reviewer_id`, `vintage_id`,
                                      `points`, `rated_at`)
VALUES
(1, 1, 90, NOW()),
(1, 2, 90, NOW()),
(1, 3, 90, NOW()),
(1, 4, 90, NOW());

DELETE FROM `vintage_grapes`;
INSERT INTO `vintage_grapes` (`vintage_id`, `grape_id`, `percentage`)
VALUES
(1, 1, NULL);

# DELETE FROM `best_wine_labels`;
INSERT INTO `best_wine_labels` (`wine_id`, `file_name`)
VALUES
(1652, 'labels/1652.jpg'),
(3048767, 'labels/3048767.jpg');

DELETE FROM `best_vintage_labels`;
INSERT INTO `best_vintage_labels` (`vintage_id`, `file_name`, `wine_image`)
VALUES
(1, 'labels/pic.jpg', NULL),
(50, 'labels/pic2.jpg', 'p/a_pic2_pl');

DELETE FROM `vintage_prices_global`;
INSERT INTO `vintage_prices_global` (`vintage_id`, `median_value`, `currency`,
                                     `recalculate`)
VALUES
(1, 100, 'USD', 0);

DELETE FROM `vintage_prices_local`;
INSERT INTO `vintage_prices_local` (`vintage_id`, `country_code`, `median_value`, `currency`)
VALUES
(30591, 'dk', 50, 'DKK'),
(30592, 'dk', 100, 'DKK'),
(30593, 'dk', 150, 'DKK'),
(30594, 'de', 10, 'EUR'),
(30595, 'de', 20, 'EUR'),
(30596, 'de', 30, 'EUR');

DELETE FROM `activities`;
INSERT INTO `activities` (`id`, `subject_id`, `verb_type_id`, `object_id`,
                          `object_type_id`, `target_type_id`, `weight`, `occurred_at`, `created_at`)
VALUES
(1, 1, 1, 1, 1, 1, 0, NOW(), NOW()),
(2, 3, 1, 1, 1, 1, 0, NOW(), NOW()),
(99, 16, 1, 10, 1, 1, 0, NOW(), NOW()),
(100, 2, 1, 1, 1, 1, 0, NOW(), NOW()),
(101, NULL, 9, 1, 6, 1, 0, NOW(), NOW()),
(102, NULL, 9, 1, 7, 1, 0, NOW(), NOW()),
(103, NULL, 9, 100, 3, 1, 0, NOW(), NOW()),
(104, NULL, 9, 104, 7, 1, 0, NOW(), NOW());

DELETE FROM `activity_comments`;
INSERT INTO `activity_comments`
(id,activity_id,user_id,text,language_code,created_at)
VALUES
(114,99,14,"comment from user 14","en",NOW()),
(115,99,15,"comment from user 15","en",NOW()),
(116,99,47,"comment from user 47","en", "2019-11-07 12:21:00");

INSERT INTO `vintage_reviews` (`id`, `user_id`, `vintage_id`, `activity_id`,
                               `rating`, `points`, `review`)
VALUES
(1, 1, 1, 1, 4.5, 100, 'Okay'),
(2, 2, 5, 100, 4.0, 50, 'Somewhat decent'),
(3, 3, 2, NULL, 5.0, 95, 'Yay'),
(4, 2, 1, NULL, 5.0, 95, 'Yay'),
(5, 1, 100, NULL, 4.0, 90, 'Yay..!'),
(8, 5, 1, NULL, 4.5, 95, 'Yay...'),
(7, 12, 4, 1, 4.1, 90, 'Yay...'),
(9, 12, 5, 1, 4.1, 90, 'Nah...'),
(10, 16, 5, 99, 4.1, 90, 'Nah again...'),
(11, 5, 1, NULL, 4.5, 92, 'Yay again...'),
(12, 30593, 30591, NULL, 1.0, 90, ''),
(13, 30593, 30592, NULL, 4.5, 90, ''),
(15, 30593, 30593, NULL, 3.0, 92, ''),
(16, 30593, 30593, NULL, 3.0, 92, ''),
(17, 30593, 30593, NULL, 3.0, 92, ''),
(18, 30593, 30593, NULL, 3.0, 92, ''),
(19, 30593, 30593, NULL, 3.0, 92, ''),
(20, 35558, 35558, NULL, 3.5, 92, ''),
(21, 35558, 35558, NULL, 3.5, 92, ''),
(22, 35558, 35558, NULL, 3.5, 92, ''),
(23, 35558, 35558, NULL, 3.5, 92, ''),
(24, 35558, 35558, NULL, 3.5, 92, ''),
(25, 35558, 35559, NULL, 4.0, 92, ''),
(26, 35558, 35559, NULL, 4.0, 92, ''),
(27, 35558, 35559, NULL, 4.0, 92, ''),
(28, 35558, 35559, NULL, 4.0, 92, ''),
(29, 35558, 35559, NULL, 4.0, 92, '');

DELETE FROM `user_vintages`;
INSERT INTO `user_vintages` (`id`, `user_id`, `vintage_id`,
                             `vintage_review_id`,`location_id`, `updated_at`, `label_id`, `user_vintage_price_id`)
VALUES
(1, 1, 1, 1, 1, NOW(), NULL, 101),
(2, 1, 2, 2, 2, NOW(), NULL, NULL),
(3, 3, 3, 3, 3, NOW(), NULL, NULL),
(4, 1, 3, NULL, 3, NOW(), NULL, NULL),
(5, 1, 4, NULL, NULL, NOW(), NULL, NULL),
(6, 1, 4, NULL, NULL, NOW(), NULL, NULL),
(7, 1, 9, NULL, NULL, NOW(), NULL, NULL),
(8, 12, 4, 7, NULL, NOW(), 104, NULL),
(9, 12, 5, 9, NULL, NOW(), 104, NULL),
(10, 1, 201,  NULL, NULL, NOW(), 215134145, NULL),
(11, 1, NULL, NULL, NULL, NOW(), 215134147, NULL),
(12, 1, NULL, NULL, NULL, NOW(), 215134148, NULL),
(13, 1, NULL, NULL, NULL, NOW(), 215134149, NULL),
(14, 1, NULL, NULL, NULL, NOW(), 215134150, NULL),
(15, 1, NULL, NULL, NULL, NOW(), 207813220, NULL),
(16, 28, 100, NULL, NULL, NOW(), NULL, NULL),
(17, 28, 200, NULL, NULL, NOW(), NULL, NULL),
(18, 29, 1, NULL, NULL, NOW(), NULL, NULL),
(19, 1, 100, 5, NULL, NOW(), NULL, 102),
(21, 29, 2, NULL, NULL, NOW(), NULL, NULL),
(22, 29, 2, NULL, NULL, NOW(), NULL, NULL),
(23, 29, 2, NULL, NULL, NOW(), NULL, NULL),
(24, 29, 2, NULL, NULL, NOW(), NULL, NULL),
(25, 29, 2, NULL, NULL, NOW(), NULL, NULL),
(26, 29, 3, NULL, NULL, NOW(), NULL, NULL),
(27, 47, 4, NULL, NULL, NOW(), NULL, 103),
(28, 35558, 35558, 20, NULL, NOW(), NULL, NULL),
(29, 35558, 35558, 21, NULL, NOW(), NULL, NULL),
(30, 35558, 35558, 22, NULL, NOW(), NULL, NULL),
(31, 35558, 35558, 23, NULL, NOW(), NULL, NULL),
(32, 35558, 35558, 24, NULL, NOW(), NULL, NULL),
(33, 35558, 35559, 25, NULL, NOW(), NULL, NULL),
(34, 35558, 35559, 26, NULL, NOW(), NULL, NULL),
(35, 35558, 35559, 27, NULL, NOW(), NULL, NULL),
(36, 35558, 35559, 28, NULL, NOW(), NULL, NULL),
(37, 35558, 35559, 29, NULL, NOW(), NULL, NULL);

DELETE FROM `food_category`;
INSERT INTO `food_category` (`foodId`, `foodName`, `background_image`)
VALUES
(1, 'Meat', 't/jE9vUBKPTX2y69tYzKvnAw.jpg'),
(2, 'Cheese', NULL);

DELETE FROM `menu_scans`;
INSERT INTO `menu_scans` (`id`, `user_id`, `status`, `created_at`)
VALUES
(1, 1, 0, NOW()), -- Created
(2, 1, 1, NOW()), -- Polling
(3, 1, 2, NOW()), -- Completed
(4, 47, 2, "2019-11-07T12:21:00");

DELETE FROM `menu_scan_matches`;
INSERT INTO `menu_scan_matches` (`id`, `menu_scan_id`, `line`, `text`,
                                 `vintage_id`, `user_text`, `user_vintage_id`, `bounding_area`)
VALUES
(1, 3, 0, 'The Match', 0, 'The Match', 1, '');

DELETE FROM `roles`;
INSERT INTO `roles` (`role_id`, `role_name`, `role_description`)
VALUES
(17, 'Admin', 'Administrator'),
(23, 'Winery Manager', 'Winery Manager'),
(31, 'Merchant Manager', 'Merchant Manager'),
(35, 'Order Manager', ''),
(36, 'Winery Admin', 'Winery Admin'),
(32, 'Retail Admin', 'Retail Admin'),
(37, 'Content Manager', 'Content Manager'),
(38, 'Promo Sales CM', 'Promo Sales CM'),
(39, 'Employee', 'Employee'),
(42, 'Ghost', 'Ghost'),
(50, 'CX Admin', 'CX Admin'),
(51, 'CX Tier One', 'CX Tier One'),
(52, 'CX Tier Two', 'CX Tier Two'),
(53, 'PL Sourcing', 'Perfect Label Sourcing role. Can process requests and add perfect labels for review'),
(54, 'PL Reviewer', 'Perfect Label Reviewer. Can validate sourced labels'),
(55, 'PL Lead', 'Perfect Label Lead. Source/Reviewer team lead, can give final approval of a sourced label and override tasks made by sourcing and reviewing roles'),
(57, 'PL Requester', 'Perfect Label Requester. Can create perfect label discovery request');


DELETE FROM `roles_to_users`;
INSERT INTO `roles_to_users` (`roles_to_users_id`, `user_id`, `role_id`)
VALUES
(1, 1, 17),
(2, 1, 23),
(3, 1, 31),
(4, 3, 36),
(5, 7, 35),
(6, 24, 17), -- authorized admin + ghost
(7, 24, 42), -- authorized admin + ghost
(8, 25, 17), -- unauthorized admin + ghost
(9, 25, 42), -- unauthorized admin + ghost
(10, 21499177, 17); -- bobby_tables is admin here as well

DELETE FROM `winery2users`;
INSERT INTO `winery2users` (`id`, `winery_id`, `user_id`)
VALUES
(1, 1, 1),
(2, 100, 1);

DELETE FROM `price_click_tracks`;
INSERT INTO `price_click_tracks` (`id`, `price_id`, `price_amount`,
                                  `vintage_id`, `merchant_id`, `user_id`, `created_at`,
                                  `clicked_at`)
VALUES
(1, 1, 20, 1, 3, 1, NOW() - INTERVAL 10 DAY, NOW() - INTERVAL 10 DAY),
(2, 2, 40, 1, 1, 1, NOW() - INTERVAL 2 DAY, NOW() - INTERVAL 2 DAY),
(3, 2, 25, 1, 1, 1, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(4, 3, 25, 2, 1, 1, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(5, 161, 25, 2, 5, 36390, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(6, 162, 25, 2, 5, 36390, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(7, 163, 25, 2, 5, 36390, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(8, 164, 25, 2, 5, 36390, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(9, 165, 25, 2, 5, 36390, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY),
(10, 166, 25, 2, 5, 36390, NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY);

DELETE FROM `guesser_vintage_rules`;
INSERT INTO `guesser_vintage_rules` (`from_vintage_id`, `initial_to_vintage_id`, `final_to_vintage_id`,
                                     `total_correction_percentage`, `vintage_correction_percentage`)
VALUES
(3, 2, 6, 27, 67);

DELETE FROM `label_scans`;
INSERT INTO `label_scans` (`id`, `user_id`, `vintage_id`,`status`, `image`, `uploaded_at`, `updated_at`)
VALUES
(100,1,1,1,'IMAGE_URL',NOW(),NOW()),
(101,1,1,1,'',NOW(),NOW()),
(102,1,4,1,'',NOW(),NOW()),
(103,1,4121885,2,'',NOW(),NOW()),
(104,1,4,1,'IMAGE_URL',NOW(),NOW()),
(111,1,4,1,'IMAGE_URL',NOW(),NOW()),
(187550937,1,61109535,2,'',NOW(),NOW()),
(189802103,1,61109535,2,'',NOW(),NOW()),
(192365506,1,8,2,'',NOW(),NOW()),
(194608124,1,61109535,2,'',NOW(),NOW()),
(196488917,1,8,2,'',NOW(),NOW()),
(197722473,1,8,2,'',NOW(),NOW()),
(198258031,1,8,2,'',NOW(),NOW()),
(200934461,1,8,2,'',NOW(),NOW()),
(201167713,1,8,2,'',NOW(),NOW()),
(202003080,1,61109535,2,'',NOW(),NOW()),
(202784804,1,61109535,2,'',NOW(),NOW()),
(204943976,1,61109535,2,'',NOW(),NOW()),
(205255346,1,61109535,2,'',NOW(),NOW()),
(207443831,1,61109535,2,'',NOW(),NOW()),
(207443832,1,61109535,2,'',NOW(),NOW()),
(207813220,1,61109535,2,'',NOW(),NOW()),
(209243460,1,61109535,2,'',NOW(),NOW()),
(212087512,1,61109535,2,'',NOW(),NOW()),
(215134131,1,8,2,'',NOW(),NOW()),
(215134132,1,61109535,2,'',NOW(),NOW()),
(215134133,1,8,2,'',NOW(),NOW()),
(215134134,1,8,2,'',NOW(),NOW()),
(215134135,1,8,2,'',NOW(),NOW()),
(215134136,1,8,2,'',NOW(),NOW()),
(215134137,1,8,2,'',NOW(),NOW()),
(215134138,1,8,2,'',NOW(),NOW()),
(215134139,1,8,2,'',NOW(),NOW()),
(215134140,1,8,2,'',NOW(),NOW()),
(215134141,1,8,2,'',NOW(),NOW()),
(215134142,1,8,2,'',NOW(),NOW()),
(215134143,1,100,2,'',NOW(),NOW()),
(215134144,1,101,2,'',NOW(),NOW()),
(215134145,1,101,2,'',NOW(),NOW()),
(215134146,1,101,2,'',NOW(),NOW()),
(215134147,1,8,2,'',NOW(),NOW()),
(215134148,1,8,2,'',NOW(),NOW()),
(215134149,1,8,2,'',NOW(),NOW()),
(215134150,1,8,2,'',NOW(),NOW()),
(215134151,30594,30591,2,'',NOW(),NOW()),
(215134152,30594,30592,2,'',NOW(),NOW()),
(215134153,30594,30593,2,'',NOW(),NOW()),
(215134154,47,30593,2,'',"2019-11-07T12:21:00",NOW()),
(215134155,9,2020,2,'',NOW(),NOW());

DELETE FROM `label_scan_ratings`;
INSERT INTO `label_scan_ratings` (`label_scan_id`, `tier_rating`)
VALUES
(187550937,1);

DELETE FROM `label_scan_matches`;
INSERT INTO `label_scan_matches` (`label_scan_id`, `auto_match_status`,
                                  `tier_match_status`, `tier_vintage_id`, `user_vintage_id`, `created_at`, `updated_at`)
VALUES
(100,1,1,NULL,NULL,NOW(),NOW()),
(101,1,1,NULL,NULL,NOW(),NOW()),
(102,1,1,NULL,NULL,NOW(),NOW()),
(111,1,4,NULL,NULL,NOW(),NOW()),
(187550937,1,4,NULL,NULL,NOW(),NOW()),
(189802103,1,4,NULL,NULL,NOW(),NOW()),
(192365506,1,4,NULL,NULL,NOW(),NOW()),
(194608124,1,4,NULL,NULL,NOW(),NOW()),
(196488917,1,4,NULL,NULL,NOW(),NOW()),
(197722473,1,4,NULL,NULL,NOW(),NOW()),
(198258031,1,4,NULL,NULL,NOW(),NOW()),
(200934461,1,4,NULL,NULL,NOW(),NOW()),
(201167713,1,4,NULL,NULL,NOW(),NOW()),
(202003080,1,4,NULL,9,NOW(),NOW()),
(202784804,1,4,NULL,NULL,NOW(),NOW()),
(204943976,1,4,NULL,NULL,NOW(),NOW()),
(205255346,1,4,NULL,NULL,NOW(),NOW()),
(207443831,1,4,NULL,NULL,NOW(),NOW()),
(207443832,1,4,NULL,NULL,NOW(),NOW()),
(207813220,1,1,NULL,NULL,NOW(),NOW()),
(209243460,1,4,NULL,NULL,NOW(),NOW()),
(212087512,1,1,NULL,NULL,NOW(),NOW()),
(215134132,1,1,NULL,NULL,NOW(),NOW()),
(215134133,1,1,NULL,NULL,NOW(),NOW()),
(215134134,1,1,NULL,NULL,NOW(),NOW()),
(215134135,1,1,NULL,NULL,NOW(),NOW()),
(215134136,1,1,NULL,NULL,NOW(),NOW()),
(215134137,1,1,NULL,NULL,NOW(),NOW()),
(215134138,1,1,NULL,NULL,NOW(),NOW()),
(215134139,1,1,NULL,NULL,NOW(),NOW()),
(215134140,1,1,NULL,NULL,NOW(),NOW()),
(215134141,1,1,NULL,NULL,NOW(),NOW()),
(215134142,1,1,NULL,NULL,NOW(),NOW()),
(215134143,1,1,NULL,NULL,NOW(),NOW()),
(215134144,1,1,NULL,NULL,NOW(),NOW()),
(215134145,0,0,NULL,201,NOW(),NOW()),
(215134146,1,1,NULL,NULL,NOW(),NOW()),
(215134147,1,1,NULL,NULL,NOW(),NOW()),
(215134148,1,1,NULL,NULL,NOW(),NOW()),
(215134149,1,1,NULL,NULL,NOW(),NOW()),
(215134150,1,1,NULL,NULL,NOW(),NOW());

INSERT INTO `imr_label_scans` (`vintage_id`, `label_scan_id`)
VALUES
(61109535, 202003080),
(61109535, 202784804),
(61109535, 204943976),
(61109535, 205255346),
(61109535, 207443831),
(61109535, 207813220);

INSERT INTO `imr_ltu_label_scans` (`vintage_id`, `label_scan_id`, `target_id`, `sync_time_msec`, `created_at`, `updated_at`)
VALUES
(61109535, 202003080, 'lU1OyYPtQTu4IZuFueYRHQ.jpg', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 202784804, 'RQXc6EaBSZGhfYVajTJmoA.jpg', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 204943976, 'N02vdgx9TIijVEgo5U31UQ.jpg', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 205255346, 'vO_QNOCaQp2ck-EyshwE5g.jpg', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 207443831, 'RVeSRDQCTBaYhtmv0QWlng.jpg', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 207813220, 'uifm_DLVTB2FO3qGil4eWw.jpg', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55');

INSERT INTO `imr_vuforia_label_scans` (`vintage_id`, `label_scan_id`, `target_id`, `transaction_id`, `sync_time_msec`, `created_at`, `updated_at`)
VALUES
(61109535, 202003080, 'lU1OyYPtQTu4IZuFueYRHQ.jpg', '', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 202784804, 'RQXc6EaBSZGhfYVajTJmoA.jpg', '', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 204943976, 'N02vdgx9TIijVEgo5U31UQ.jpg', '', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 205255346, 'vO_QNOCaQp2ck-EyshwE5g.jpg', '', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 207443831, 'RVeSRDQCTBaYhtmv0QWlng.jpg', '', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55'),
(61109535, 207813220, 'uifm_DLVTB2FO3qGil4eWw.jpg', '', 100, '2016-07-18 22:37:55', '2016-07-18 22:37:55');

DELETE FROM `tier_queue_label_scans`;
INSERT INTO `tier_queue_label_scans` (`label_scan_id`, `tier_user_id`, `is_tier2`, `is_priority`, `image`, `created_at`, `updated_at`, `locked_until`, `reason`)
VALUES
(202003080, 1, 0, 0, 'lU1OyYPtQTu4IZuFueYRHQ.jpg', '2016-09-18 20:37:55', '2016-09-18 20:37:55', DATE_ADD( UTC_TIMESTAMP(), INTERVAL 10 MINUTE ), 'TEST' ),
(204943976, NULL, 0, 0, 'N02vdgx9TIijVEgo5U31UQ.jpg', '2017-02-18 23:37:55', '2017-02-18 23:37:55', NULL, 'TEST'),
(205255346, 2, 0, 0, 'vO_QNOCaQp2ck-EyshwE5g.jpg', '2016-09-18 21:37:55', '2016-09-18 21:37:55', DATE_ADD( UTC_TIMESTAMP(), INTERVAL 10 MINUTE ), 'TEST' ),
(207813220, NULL, 0, 1, 'uifm_DLVTB2FO3qGil4eWw.jpg', '2017-03-18 22:37:55', '2017-03-18 22:37:55', NULL, 'TEST'),
(202784804, 3, 1, 1, 'RQXc6EaBSZGhfYVajTJmoA.jpg', '2017-02-20 22:37:55', '2017-02-20 22:37:55', UTC_TIMESTAMP(), 'TEST'),
(209243460, NULL, 0, 0, '209243460.jpg', '2017-02-18 22:37:55', '2017-02-18 22:37:55', NULL, 'TEST'),
(215134131, NULL, 0, 0, '215134131.jpg', '2017-01-18 22:37:55', '2017-01-18 22:37:55', NULL, 'TEST'),
(215134133, NULL, 0, 0, '215134133.jpg', '2017-01-18 22:37:56', '2017-01-18 22:37:56', NULL, 'TEST'),
(215134134, NULL, 0, 0, '215134134.jpg', '2017-01-18 22:37:56', '2017-01-18 22:37:56', NULL, 'TEST'),
(215134135, NULL, 0, 0, '215134135.jpg', '2017-01-18 22:37:56', '2017-01-18 22:37:56', NULL, 'TEST'),
(215134136, NULL, 0, 0, '215134136.jpg', '2017-01-18 22:37:56', '2017-01-18 22:37:56', NULL, 'TEST'),
(215134143, NULL, 0, 0, '215134143.jpg', '2017-01-18 22:37:56', '2017-01-18 22:37:56', NULL, 'TEST'),
(215134144, NULL, 0, 0, '215134144.jpg', '2017-01-18 22:37:56', '2017-01-18 22:37:56', NULL, 'TEST'),
(215134145, NULL, 1, 0, '215134145.jpg', '2017-01-18 21:37:56', '2017-01-18 21:37:56', NULL, 'TEST'),
(215134146, NULL, 1, 0, '215134146.jpg', '2017-01-18 21:37:56', '2017-01-18 21:37:56', NULL, 'TEST'),
(215134147, NULL, 1, 0, '215134147.jpg', '2017-01-18 21:37:56', '2017-01-18 21:37:56', NULL, 'TEST'),
(215134148, NULL, 1, 0, '215134148.jpg', '2017-01-18 21:37:56', '2017-01-18 21:37:56', NULL, 'TEST'),
(215134149, NULL, 1, 0, '215134149.jpg', '2017-01-18 21:37:56', '2017-01-18 21:37:56', NULL, 'TEST'),
(215134150, NULL, 1, 0, '215134150.jpg', '2017-01-18 21:37:56', '2017-01-18 21:37:56', NULL, 'TEST');

DELETE FROM `label_scan_ratings`;
INSERT INTO `label_scan_ratings` (`label_scan_id`, `vintage_id`, `tier_rating`)
VALUES
(100, 1, 4),
(102, 1, 4),
(187550937, 61109535, 4),
(189802103, 61109535, 4),
(192365506, 8, 3),
(194608124, 61109535, 4),
(196488917, 8, 3),
(197722473, 8, 3),
(198258031, 8, 3),
(200934461, 8, 2),
(201167713, 8, 3),
(202003080, 61109535, 2),
(202784804, 61109535, 2),
(204943976, 61109535, 3),
(205255346, 61109535, 3),
(207443831, 61109535, 4),
(207813220, 61109535, 3),
(209243460, 61109535, 3),
(212087512, 61109535, 4),
(215134132, 61109535, 3),
(215134143, 100, 1);

INSERT INTO `label_scan_details` (`label_scan_id`, `image_sha1`)
VALUES
(187550937, '19aa04c5828de1077938882ded8c99dd979f4f01'),
(189802103, 'e14fd419f6c9953665e29f29854981608fe63cfa'),
(192365506, '68b0ac17e098c710f3f3fdebce9ec5da8c28ffba'),
(194608124, '58dea0feb0d64377fce206c7a952b0462e6fd1d0'),
(196488917, '79452676697811f8ce3c24ff06c3cbb91e4243cb'),
(197722473, 'ab7b0b3e34b74d9ed9f22d38875edf003b0b89eb'),
(198258031, 'b778124a46b2faa0886490702844d46c646eea55'),
(200934461, 'ce6ef9801fe7c766291f08b2a0727e1b16ffb7fd'),
(201167713, '26a5da99fb4b2af1f232ac25ad8aa5b63f78c05f'),
(202003080, '7ab904ecd31e77f42a0f29decd49b1f8108e8cb9'),
(202784804, 'd24f612cf71092a212b61c242e7dc3cb7e714066'),
(204943976, '70b9205b10014f4f30a5167d76fa318f9f7e084e'),
(205255346, 'a9d42e0ac4942da3ee05a46ba3c978464da62b12'),
(207443831, 'b3a7993d4d40b0bfc9dfa423f91bc66a94d6d5e0'),
(207443832, 'b3a7993d4d40207443832sef5gf4c66a94d6d5e0'),
(207813220, '6beb65ec60c86b42f8d001cd40b1bacc3b7494a1'),
(209243460, '4e0e849c7923edff14829d26b043f59ff66f80d1'),
(212087512, 'bc43a65c623e5de2a852c3c99b0a23e207c953b8'),
(215134132, 'fb26b9c7f4a1014308bd401b2c708158a873cca7'),
(215134133, 'fb26b9c7f4a1014308bd401b2c7081A215134133'),
(215134134, 'fb26b9c7f4a1014308bd401b2c7081A215134134'),
(215134135, 'fb26b9c7f4a1014308bd401b2c7081A215134135'),
(215134136, 'fb26b9c7f4a1014308bd401b2c7081A215134136'),
(215134137, 'fb26b9c7f4a1014308bd401b2c7081A215134137'),
(215134138, 'fb26b9c7f4a1014308bd401b2c7081A215134138'),
(215134139, 'fb26b9c7f4a1014308bd401b2c7081A215134139'),
(215134140, 'fb26b9c7f4a1014308bd401b2c7081A215134140'),
(215134141, 'fb26b9c7f4a1014308bd401b2c7081A215134141'),
(215134142, 'fb26b9c7f4a1014308bd401b2c7081A215134142'),
(215134143, 'fb26b9c7f4a1014308bd401b2c7081A215134143'),
(215134144, 'fb26b9c7f4a1014308bd401b2c7081A215134144'),
(215134145, 'fb26b9c7f4a1014308bd401b2c7081A215134145'),
(215134147, 'fb26b9c7f4a1014308bd401b2c7081A215134147'),
(215134148, 'fb26b9c7f4a1014308bd401b2c7081A215134148'),
(215134149, 'fb26b9c7f4a1014308bd401b2c7081A215134149'),
(215134150, 'fb26b9c7f4a1014308bd401b2c7081A215134150'),
(215134154, 'fb26b9c7f4a1014308bd401b2c7081A215134150');

INSERT INTO `user_corrections`  (`id`, `from_vintage_id`, `to_vintage_id`, `user_id`, `label_id`, `type`)
VALUES
(1, 61109535, 9, 1, 215134145, 'create_wine' ),
(2, 9,        200, 1, 215134145, 'create_wine' ),
(3, 200,      201, 1, 215134145, 'change_vintage'),
(4, 110554,     9, 1, 215134146, 'create_wine' );

INSERT INTO `wine_from_grapes` (`wine_id`, `wine_grape_id`)
VALUES
(1, 1),
(1, 2),
(5, 2),
(35558, 1),
(35559, 2);

INSERT INTO `food_grapes` (`wine_grape_id`, `foodId`)
VALUES
(1, 1),
(2, 2),
(92, 1);

INSERT INTO `style_food` (`style_id`, `food_id`)
VALUES
(1, 1),
(2, 1),
(3, 2);

INSERT INTO `user_vintage_extras` (`id`, `user_id`, `vintage_id`, `drink_from`, `drink_to`,
                                   `wishlisted_at`)
VALUES
(1, 1, 1, 2015, 2016, NULL),
(2, 28, 100, 2015, 2016, NOW()),
(3, 28, 200, 2015, 2016, NOW()),
(4, 29, 3, 2015, 2016, '2019-8-22 12:14:17');

INSERT INTO `user_cellar` (`user_vintage_extras_id`, `type`, `count`, `date`, `comment`)
VALUES
(1, "add", 2, '2017-12-22 10:57:18', "added some wine"),
(1, "consume", 1, '2017-12-27 10:57:18', NULL);

DELETE FROM `addresses`;
INSERT INTO `addresses` (`id`, `user_id`, `name`, `street_1`, `street_2`, `city`, `zip`, `state`, `country`, `external_id`)
VALUES
(1, 1, 'Daryl', '1 Home Address 1', '1 Street 2', '1 City', '1 Zip', 'AL', 'us', ''),
(2, 1, '', '2 Billing Address 1', '2 Street 2', '2 City', '2 Zip', NULL, 'dk', ''),
(3, 1, '', '3 Shipping Address 1', NULL, '3 City', '3 Zip', 'CA', 'us', ''),
(4, 8, '', '4 Some address id', 'Naukova 2B', 'Lviv', '79000', NULL, 'ua', ''),
(5, 1, '', 'some valid strret', NULL, 'Los Angeles', '9992', 'CA', 'us', ''),
(6, 34, '', 'Umeågatan', NULL, 'Stockholm', '184 20', NULL, 'se', ''),
(7, 46, 'Paul', 'Street', NULL, 'Salvador', '39999', NULL, 'br', '');

INSERT INTO `user_net_promoter_scores` (`user_id`, `shared`, `score`, `comment`,
                                        `ask_again_at` , `created_at` , `updated_at`)
VALUES
(1, 1, 10, "Some comment about Vivino", '2017-12-22 10:57:18', '2017-12-22 10:57:18', '2017-12-22 10:57:18'),
(2, 1, 3, "Good", '2017-12-22 10:57:18', '2017-12-22 10:57:18', '2017-12-22 10:57:18'),
(3, 0, NULL, NULL, '2017-12-22 10:57:18', '2017-12-22 10:57:18', '2017-12-22 10:57:18');

INSERT INTO `wine_user_corrections` (`id`, `wine_name`, `winery`, `wine_type_id`, `vintage`,
                                     `country`, `region`, `origin_wine_type_id`, `vintage_id`, `user_id`, `comment`,
                                     `origin_wine_name`, `origin_winery`, `origin_vintage`, `origin_grapes`,
                                     `origin_country`, `origin_region`, `type`)
VALUES
(1, "Corrected Wine Name", "Corrected Winery Name", 1, "2016", "ua",
 "Some Region", 2, 1, 1, '', '', '', '', '', '', '', 0);

INSERT INTO `personal_notes` (`user_vintage_id`, `comment`, `date`)
VALUES
(1, "Some Note", NOW());

INSERT INTO `wine_user_corrections_grapes` (`id`, `wine_user_corrections_id`, `wine_grape_id`)
VALUES
(1, 1, 1),
(2, 1, 2);

INSERT INTO `big_commerce_shop_codes` (`id`, `code`, `country_code`)
VALUES
(1, "dk-shop", "dk");

DELETE FROM `top_list_items`;
DELETE FROM `top_list_regions`;
DELETE FROM `top_list_styles`;
DELETE FROM `top_lists`;

INSERT INTO `top_lists` (`id`, `name`, `type`, `seo_name`, `author_id`, `wines_count`, `image`,
                         `visibility`, `created_at`, `updated_at`)
VALUES
(1, "low_dk_0", 1, "best-wines-right-now", 1, 50, "toplist_chart_cheap.png", 3, NOW(), NOW()),
(2, "low_us_0", 1, "best-wines-under-20-right-now-united-states", NULL, 50, "toplist_chart_cheap.png", 3, NOW(), NOW()),
(3, "low_us_2", 1, "best-wines-under-20-right-now-california", 1, 50, "toplist_chart_cheap.png", 3, NOW(), NOW()),
(112, "high_dk_0", 2, "best-wines-right-now2", 1, 50, "toplist_chart_cheap.png", 3, NOW(), NOW()),
(113, "style_country_49_nl_0", 2, "top-25-burgundy-chablis-wines-netherlands", 1, 50, "toplist_chart_expensive.png", 3, NOW(), NOW()),
(1662, "style_global_1", 3, "top-25-spanish-albarino-wines-right-now-global", NULL, 50, "toplist_chart_expensive.png", 3, NOW(), NOW()),
(2074974, "bestsellers_us_6", 4, "top-selling-wines-california-right-now",NULL , 10, "list_img_bestsellers.jpg", 3, NOW(), NOW()),
(2074754, "discounts_low_us_1", 5, "sale-price-under-20-alabama", NULL, 50, "list_img_tall_priceAgent.png", 3, NOW(), NOW()),
(163, "wine_style_awards_2016_argentinian-bonarda", 6, "wine_style_awards_2016_argentinian-bonarda", NULL, 10, "WSA-2016-argentinian-bonarda.png", 3, NOW(),NOW()),
(114, "bbq_dk", 2, "top-10-barbecue-wines", NULL, 10, "toplist_bbq.png", 1, NOW(),NOW()),
(263, "vc_great_wines_easy_to_buy_dk", 2, "50_great_wines_easy_to_buy_dk", NULL, 19, "toplist_chart_range2.png", 2, NOW(),NOW()),
(115, "style_country_50_de_0", 2, "top-25-burgundy-chablis-wines-germany", 1, 50, "toplist_chart_expensive.png", 3, NOW(), NOW()),
(104, "global toplist", 1, "global_top_list", 1, 50, "toplist_chart.png", 3, NOW(), NOW());

INSERT INTO `top_list_items` (`id`, `top_list_id`, `rank`, `previous_rank`, `wine_id`,
                              `most_rated_vintage_id`)
VALUES
(1, 2, 1, 1, 1, 1),
(2, 3, 1, 3, 4, 1),
(3, 1, 1, 1, 1, 1),
(4, 112, 3, 1, 1, 1),
(5, 163, 1, 2, 2, 100),
(6, 163, 2, 1, 6, 9),
(7, 163, 3, 4, 1, 8),
(8, 163, 4, 3, 6, 7),
(9, 163, 5, 6, 3, 6),
(10, 163, 6, 5, 4, 5),
(11, 163, 7, 8, 4, 4),
(12, 163, 8, 7, 3, 3),
(13, 163, 9, 10, 2, 2),
(14, 163, 10, 10, 1, 1);

INSERT INTO `top_list_regions` (`id`, `top_list_id`, `country_code`, `state_id`)
VALUES
(1, 2, "us", NULL),
(2, 2, "us", 2),
(3, 1, "dk", NULL),
(5, 112, "dk", NULL),
(6, 114, "dk", NULL),
(7, 263, "dk", NULL),
(8, 113, "us", 6),
(9, 3, "us", 1);

INSERT INTO `top_list_styles` (`id`, `top_list_id`, `style_id`, `country_code`, `state_id`)
VALUES
(1, 1, 1, "dk", NULL),
(2, 113, 1, "nl", NULL),
(3, 114, 2, "dk", NULL),
(4, 163, 3, "dk", NULL);

DELETE FROM `options`;
INSERT INTO `options` (`id`, `key`, `value`)
VALUES
(1, "global_vintage_count", "1234567");

DELETE FROM `user_vintage_prices`;
INSERT INTO `user_vintage_prices` (`id`, `vintage_id`, `price`, `currency_code`, `location_id`, `quantity`,
                                   `valid_until`, `review_status`, `created_at`, `bottle_size_id`)
VALUES
(100, 1, 100, "USD", 1, 2, NULL, 1, NOW(), 1),
(101, 1, 100, "DKK", 1, 1, NULL, 1, NOW(), 1),
(102, 1, 100, "USD", 1, 1, NULL, 1, NOW(), 1),
(103, 4, 100, "USD", 1, 1, NULL, 1, NOW(), 1);

DELETE FROM `activity_likes`;
INSERT INTO `activity_likes` (`id`, `activity_id`, `user_id`, `created_at`)
VALUES
(1, 1, 1, NOW()),
(3, 1, 2, NOW()),
(4, 1, 47, "2019-11-07T12:21:00");

DELETE FROM `activity_stories`;
INSERT INTO `activity_stories` (`id`, `user_id`, `image`, `text`, `language_code`, `created_at`, `updated_at`)
VALUES
(1, 47, '', 'this is my story', 'en', "2019-11-07T12:21:00",  NOW());

DELETE FROM `taste_events`;
INSERT INTO `taste_events`
(`id`,`user_vintage_id`,`vintage_id`,`weight_parameters`,`weight`,`source_type`,`created_at`,`updated_at`)
VALUES
('2','2','2','{"axis_1":0,"axis_2":127,"axis_3":-127,"followers_level":0,"ratings_level":1,"style_level":1,"featured":false}','2','2', NOW(), NOW()),
('3','3','3','{"axis_1":0,"axis_2":127,"axis_3":-127,"followers_level":0,"ratings_level":1,"style_level":1,"featured":false}','2','2', NOW(), NOW()),
('4',null,'3','{"axis_1":0,"axis_2":127,"axis_3":-127,"baseline":true}','20','1', NOW(), NOW());

INSERT INTO `grapes`
(`id`, `name`, `seo_url`, `region_id`, `wines_count`)
VALUES
(1, "Test grape", "test-grape", NULL, 0),
(2, "Testing grape", "testing-grape", NULL, 1),
(3, "Testing grape new", "testing-grape-new", NULL, 1),
(91, "Cabernet Franc", "cabernet-franc", NULL, 5),
(92, "Testing grape food", "testing-grape-food", 24, 0),
(10, 'Merlot', 'merlot', 383, 317302),
(45, 'Rondinella', 'rondinella', NULL, 11427);

INSERT INTO `region_statistics`
(`region_id`, `grapes`, `best_rated_winery`, `largest_winery`, `featured_wineries`, `wines_count`, `wineries_count`)
VALUES
(1, "1,2", 1, 1, "1,2", 10, 5),
(2, "1", 1, 3, "1,2", 80, 17);

DELETE FROM `ocr_winery_exceptions`;
INSERT INTO `ocr_winery_exceptions`
(`winery_id`, `disable_ocr_wine`)
VALUES
(1469, 1),
(733, 1),
(363, 1),
(297, 1),
(171, 1),
(1180, 1),
(5010, 1),
(1716, 1),
(1964, 1),
(1354, 1);

DELETE FROM `user_latest`;
INSERT INTO `user_latest`
(`user_id`, `active_at`)
VALUES
(1, NOW()),
(2, NOW());

INSERT INTO `user_latest`
(`user_id`, `active_at`, `uwpp_price_click_track_count`)
VALUES
(36390, NOW(), 0);

DELETE FROM `appVersions`;
INSERT INTO `appVersions`
(`id`, `version`, `datetime`)
VALUES
(1, "1.0", NOW()),
(2, "8.16", NOW()),
(3, "8.17", '2017-01-01 12:00:00'),
(4, "8.19", NOW());

DELETE FROM `appPlatforms`;
INSERT INTO `appPlatforms`
(`id`, `platform`, `datetime`)
VALUES
(1, "ios", NOW()),
(2, "android", NOW());

DELETE FROM `badges`;
INSERT INTO `badges`
(`id`, `name`, `active`, `image`, `grey_image`, `small_image`, `added_date`)
VALUES
(2, "Scanned less 5 labels", 1, "", "", "", NOW()),
(3, "Wine talker", 1, "", "", "", NOW()),
(5, "No smartphone", 1, "", "", "", NOW()),
(6, "App user", 1, "", "", "", NOW()),
(7, "Wine Explorer", 1, "", "", "", NOW()),
(8, "Wine Scanner", 1, "", "", "", NOW()),
(9, "Heavy Scanner", 1, "", "", "", NOW()),
(12, "Wine Adventurer", 1, "", "", "", NOW()),
(13, "Italy", 1, "", "", "", NOW()),
(17, "France", 1, "", "", "", NOW()),
(19, "USA", 1, "", "", "", NOW()),
(21, "Australia", 1, "", "", "", NOW()),
(28, "Syrah/Shiraz Lover", 1, "", "", "", NOW()),
(29, "Chardonnay Lover", 1, "", "", "", NOW()),
(31, "Newbie badge", 1, "", "", "", NOW()),
(42, "Denmark", 1, "", "", "", NOW()),
(46, "Water Wagon", 1, "", "", "", NOW());


DELETE FROM `user_external_authentications`;
INSERT INTO `user_external_authentications` (`user_id`, `type`, `external_id`,
                                             `external_username`, `external_first_name`, `external_last_name`, `gender`,
                                             `locale`, `created_at`)
VALUES
(1, 'mock', '12345', 'username_here', 'Vivino', 'Viv', 'male', 'us', NOW()),
(2, 'facebook', '123', 'Facebook username', 'Facebook Name', 'Facebook Last Name', 'male', 'us', NOW()),
(2, 'twitter', '1233', 'Twitter username', 'Twitter Name', 'Twitter Last Name', 'male', 'us', NOW()),
(2, 'google', '12333', 'Gmail username', 'Gmail Name', 'Gmail Last Name', 'male', 'us', NOW()),
(2, 'mock', '22222', '', '', '', '', '', NOW()),
(4, 'mock', '44444', '', '', '', '', '', NOW()),
(5, 'mock', '55555', '', '', '', '', '', NOW()),
(7, 'mock', '77777', '', '', '', '', '', NOW()),
(7, 'facebook', '1', 'Facebook username', 'Facebook Name', 'Facebook Last Name', 'male', 'us', NOW()),
(7, 'twitter', '2', 'Twitter username', 'Twitter Name', 'Twitter Last Name', 'male', 'us', NOW()),
(7, 'google', '3', 'Gmail username', 'Gmail Name', 'Gmail Last Name', 'male', 'us', NOW()),
(47, 'mock', '88888', 'gdpr export', '', '', '', '', NOW());

DELETE FROM `country_statistics`;
INSERT INTO `country_statistics`
(`country_code`,
 `largest_region`,
 `featured_wineries`,
 `most_used_grapes`,
 `regions_count`,
 `users_count`,
 `wines_count`,
 `wineries_count`)
VALUES
('dk',0,'','',0,0,0,0),
('ua',0,'','',0,12510000,0,0),
('au',0,'','',0,12510000,0,0);

DELETE FROM `activities_generated`;
INSERT INTO `activities_generated` (`activity_id`, `verb_type_id`, `object_type_id`, `country`,
                                    `state_id`, `created_at`)
VALUES
(101, 9, 6, NULL, NULL, NOW()),
(102, 9, 7, "us", 6, NOW()),
(103, 9, 3, NULL, NULL, NOW()),
(104, 9, 7, NULL, NULL, NOW());

DELETE FROM `users_tracking`;
INSERT INTO `users_tracking` (`user_id`, `app_version_id`, `app_platform_id`, `updated_at`)
VALUES
(1, 1, 1, NOW()),
(2, 2, 2, NOW()),
(27, 2, 2, NOW()),
(47, 2, 2, "2019-11-07T12:21:00");

DELETE FROM `related_styles`;
INSERT INTO `related_styles`
(`style_id`,
 `related_style_id`)
VALUES
(1,2),
(1,3);

DELETE FROM `style_grapes`;
INSERT INTO `style_grapes`
(`style_id`,
 `grape_id`)
VALUES
(1,1);

DELETE FROM `user_activity`;
INSERT INTO `user_activity`
(`month`, `user_id`)
VALUES
(201701, 1),
(2019, 7);

DELETE FROM `user_logins`;
INSERT INTO `user_logins`
(`date`, `user_id`)
VALUES
(NOW(), 1),
(CURRENT_DATE - INTERVAL 14 DAY, 34);

DELETE FROM `vintage_statistics`;
INSERT INTO `vintage_statistics` (`vintage_id`, `ratings_sum`, `ratings_count`, `reviews_count`, `labels_count`)
VALUES
(1, 414.1, 101, 1, 10),
(2, 344.0, 80, 0, 20),
(3, 450.0, 100, 0, 0),
(4, 14000.0, 4000, 0, 0),
(5, 135.0, 30, 0, 0),
(6, 9.0, 2, 0, 0),
(7, 9.0, 2, 0, 0),
(8, 9.0, 2, 0, 0),
(9, 9.0, 2, 0, 0),
(100, 4, 1, 0, 0),
(3715211, 344.0, 80, 0, 0),
(4121885, 112.5, 25, 0, 0),
(61109535, 125.8, 34, 0, 0),
(110554, 82.0, 20, 0, 0),
(4470664, 82.0, 20, 0, 0),
(4470665, 0, 0, 0, 0),
(4470666, 0, 0, 0, 0),
(4470667, 0, 0, 0, 0),
(4470668, 0, 0, 0, 0);

DELETE FROM `winery_statistics`;
INSERT INTO `winery_statistics` (`winery_id`, `wines_count`, `labels_count`, `ratings_sum`, `ratings_count`)
VALUES
(1, 2, 3, 0, 0),
(2, 2, 3, 10, 3),
(3, 0, 0, 0, 0),
(4, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(1324, 0, 0, 65478, 17231),
(2291, 0, 0, 1218, 312),
(212219, 0, 0, 168791, 48226),
(785, 0, 0, 168791, 48226),
(38456, 0, 0, 168791, 48226),
(32862, 0, 0, 302, 94),
(33333, 0, 0, 0, 0);

DELETE FROM `client_tracking_events`;
INSERT INTO `client_tracking_events`
(`id`, `name`, `mixpanel`, `google_analytics`, `amazon_analytics`, `bugsense`, `test_flight`, `mat`, `updated_at`, `craeted_at`)
VALUES
(1,	'App - Launch',	1,	1,	1,	1,	1,	0,	'2014-02-27 16:20:17',	'2014-02-27 16:15:38'),
(2,	'Start Screen - Screen - Show',	1,	1,	1,	1,	1,	0,	'2014-02-27 16:20:17',	'2014-02-27 16:15:38');

DELETE FROM `style_median_prices`;
INSERT INTO `style_median_prices`
(`id`, `style_id`, `ratings_average`, `country_code`, `currency_code`, `prices_median`, `sampled_prices_median`, `sampled_prices_count`)
VALUES
(1, 1, 4.3, 'dk', 'DKK', 25, 30, 40),
(2, 1, 3.0, 'dk', 'DKK', 10, 15, 20);

DELETE FROM `user_mobile_devices`;
INSERT INTO `user_mobile_devices`
(`id`,`user_id`,`uuid`,`name`,`os_version`,`profile`,`push_token`,`aws_endpoint_arn`,`created_at`)
VALUES
(1,1,'1111-2222-3333-4444','iOS','','','user1_pushtoken','user1_aws_endpoint_arn',NOW()),
(2,2,'2222-2222-3333-4444','Android','','','user2_pushtoken','user2_aws_endpoint_arn',NOW()),
(3,4,'4444-2222-3333-4444','Android','','','user4_pushtoken','user4_aws_endpoint_arn',NOW()),
(4,14,'1414-2222-3333-4444','iOS','','','user14_pushtoken','user14_aws_endpoint_arn',NOW()),
(5,15,'1515-2222-3333-4444','Android','','','user15_pushtoken','user15_aws_endpoint_arn',NOW()),
(6,16,'1616-2222-3333-4444','iOS','','','user16_pushtoken','user16_aws_endpoint_arn',NOW()),
(7,47,'1616-2222-3333-4444','iOS','','','user16_pushtoken','user16_aws_endpoint_arn',"2019-11-07T12:21:00");

DELETE FROM `user_notification_groups`;
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES (1, 'activity', 1, 10);
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES (2, 'social_highlights', 1, 20);
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES (3, 'marketing', 1, 30);
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES (4, 'news', 1, 40);
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES (5, 'feedback', 1, 50);
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES ('7', 'order_alerts', '1', '70');
INSERT INTO user_notification_groups (id, name, enabled, sort_key) VALUES (20, 'disabled_group', 0, 0);

# Keep existing
INSERT INTO user_notification_types (id, name, user_notification_group_id, enabled, sort_key, default_device, default_email, has_email, has_device, device_on_pushtoken, visible_private, vc_only, deals_only) VALUES (50, 'disabled_setting', 3, 0, 40, 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO user_notification_types (id, name, user_notification_group_id, enabled, sort_key, default_device, default_email, has_email, has_device, device_on_pushtoken, visible_private, vc_only, deals_only) VALUES (60, 'email_only', 3, 1, 40, 0, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO user_notification_types (id, name, user_notification_group_id, enabled, sort_key, default_device, default_email, has_email, has_device, device_on_pushtoken, visible_private, vc_only, deals_only) VALUES (70, 'disabled_setting_group', 20, 1, 40, 0, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO user_notification_types (id, name, user_notification_group_id, enabled, sort_key, default_device, default_email, has_email, has_device, device_on_pushtoken, visible_private, vc_only, deals_only, premium_only) VALUES (80, 'premium_only', 3, 1, 50, 0, 1, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO user_notification_types (id, name, user_notification_group_id, enabled, sort_key, default_device, default_email, has_email, has_device, device_on_pushtoken, visible_private, vc_only, deals_only, premium_only) VALUES (90, 'visible_private', 3, 1, 60, 0, 1, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO user_notification_types (id, name, user_notification_group_id, enabled, sort_key, default_device, default_email, has_email, has_device, device_on_pushtoken, visible_private, vc_only, deals_only, premium_only) VALUES	(16, 'order_shipping_alerts', '7', '1', '10', '1', '0', '0', '1', '1', '1', '1', '0', '0');

DELETE FROM `user_notification_settings`;
INSERT INTO `user_notification_settings` (user_id,user_notification_type_id,deliver_email,deliver_device,created_at)
VALUES
(1,1,0,1,'2018-04-04 12:00:00'),
(1,2,0,1,NOW()),
(1,3,0,1,NOW()),
(1,4,0,1,NOW()),
(1,5,0,1,NOW()),
(1,6,0,1,NOW()),
(1,11,0,1,NOW()),
(1,12,0,1,NOW()),
(14,1,0,1,NOW()),
(14,2,0,1,NOW()),
(14,3,0,1,NOW()),
(14,4,0,1,NOW()),
(14,5,0,1,NOW()),
(14,6,0,1,NOW()),
(14,11,0,1,NOW()),
(14,12,0,1,NOW()),
(15,1,0,1,NOW()),
(15,2,0,1,NOW()),
(15,3,0,1,NOW()),
(15,4,0,1,NOW()),
(15,5,0,1,NOW()),
(15,6,0,1,NOW()),
(15,11,0,1,NOW()),
(15,12,0,1,NOW()),
(16,1,0,1,NOW()),
(16,2,0,1,NOW()),
(16,3,0,1,NOW()),
(16,4,0,1,NOW()),
(16,5,0,1,NOW()),
(16,6,0,1,NOW()),
(16,11,0,1,NOW()),
(16,12,0,1,NOW()),
(16,8,1,0,NOW()),
(1243,1,1,1,'2018-04-04 12:00:00');

DELETE FROM `featured_users`;
INSERT INTO `featured_users` (`id`, `user_id`, `lang_tag`, `created_at`) VALUES
(1, 1, 'en', '2016-08-01 00:00:00'),
(2, 2, 'en', '2016-08-01 00:00:00');

INSERT INTO vintage_seo_names_legacy
SELECT NULL,
       wineries.seo_name winery_seo_name,
       vintages.seo_name vintage_seo_name,
       vintages.id vintage_id
FROM vintages
         JOIN wines    ON vintages.wine_id = wines.id
         LEFT OUTER JOIN wineries ON wines.winery_id = wineries.id;

ALTER TABLE `vintages` DROP COLUMN `seo_name`;

INSERT INTO vintage_seo_names_legacy
SELECT NULL,
       wineries.seo_name winery_seo_name,
       merge_vintages.seo_url vintage_seo_name,
       vintages.id vintage_id
FROM merge_vintages
         JOIN vintages ON merge_vintages.to_vintage_id = vintages.id
         JOIN wines    ON vintages.wine_id = wines.id
         LEFT OUTER JOIN wineries ON wines.winery_id = wineries.id;

DELETE FROM `user_badges`;
INSERT INTO `user_badges` (`id`, `user_id`, `badge_id`) VALUES
(1,1,31),
(2,2,31),
(3,30593,6),
(4,30593,7),
(5,30593,8),
(6,30593,9);

DELETE FROM `wine_flavor_snapshots`;
INSERT INTO `wine_flavor_snapshots` (`wine_id`, `snapshot`, `created_at`, `updated_at`) VALUES
(1, X'7B22626C61636B5F6672756974223A7B22636F756E74223A362C2273636F7265223A3630307D2C2264726965645F6672756974223A7B22636F756E74223A302C2273636F7265223A307D2C227265645F6672756974223A7B22636F756E74223A342C2273636F7265223A3530307D2C2274726F706963616C5F6672756974223A7B22636F756E74223A302C2273636F7265223A307D2C22747265655F6672756974223A7B22636F756E74223A302C2273636F7265223A307D2C226369747275735F6672756974223A7B22636F756E74223A302C2273636F7265223A307D2C22737069636573223A7B22636F756E74223A322C2273636F7265223A32327D2C22666C6F72616C223A7B22636F756E74223A302C2273636F7265223A307D2C227665676574616C223A7B22636F756E74223A302C2273636F7265223A307D2C226561727468223A7B22636F756E74223A362C2273636F7265223A3533387D2C226D6963726F62696F223A7B22636F756E74223A302C2273636F7265223A307D2C226E6F6E5F6F616B223A7B22636F756E74223A352C2273636F7265223A38377D2C226F616B223A7B22636F756E74223A382C2273636F7265223A313335337D2C2272657669657773223A31312C226B6579776F726473223A7B2262616B696E675F7370696365223A312C22626C61636B5F6672756974223A312C22626C61636B6265727279223A332C226365646172223A332C22636865727279223A332C226369676172223A312C2263696761725F626F78223A312C226372616E6265727279223A312C226461726B5F6672756974223A312C22656172746879223A322C2267616D65223A312C226C656174686572223A322C226E75746D6567223A312C226F616B223A352C22706C756D223A312C22726173706265727279223A312C22746F626163636F223A322C2276616E696C6C61223A317D7D', '2018-08-22 21:10:08', '2018-08-22 21:10:08');

INSERT INTO `wine_sweetnesses` (`id`, `name`, `aliases`)
VALUES
(1, 'Brut Nature', 'brut nature'),
(2, 'Extra Brut', 'extra brut'),
(3, 'Brut', 'brut'),
(4, 'Extra Dry', 'extra dry,extra sec,extra seco'),
(5, 'Dry', 'dry,seco,sec,droog,secco,asciutto,trocken'),
(6, 'Semi-Dry', 'medium dry,off-dry,off dry,halfdroog,semi-dry,semi dry,demi-sec,demi sec,semi-seco,semi seco,halbtrocken,abboccato,meio seco,adamado,semiseco'),
(7, 'Semi-Sweet', 'medium,medium sweet,semi-sweet,semi sweet,halfzoet,lieblich,amabile,meio doce,semidulce'),
(8, 'Sweet', 'sweet,doux,dulce,doce,süß,zoet');

INSERT INTO `winemakers` (`winemaker_id`, `winemaker_name`)
VALUES
(999, 'WineFactWinemaker');

DELETE FROM `retail_price_critic_reviews`;
INSERT INTO `retail_price_critic_reviews`
(`retail_price_id`,`wine_critic_review_id`,`use`,`pull_quote`,`tasting_note`,`created_at`)
VALUES
(132, 1, 1, "pull_quote", "tasting_note", NOW());

INSERT INTO `competitions` (`name`, `rank`, `display_level`)
VALUES
('Decanter World Wine Awards', 1, 1),
('Concours Général Agricole', 2, 1);

INSERT INTO `wine_critics`
(`id`,`name`,`logo`, `initials`, `rank`)
VALUES
(1, "Integration Test Critic Name", "t/somename.jpg", '', 0);

INSERT INTO `vintage_critic_reviews`
(`id`, `wine_critic_id`, `vintage_id`, `score`, `score_normalized`, `reviewed_at`, `score_is_range`,
 `updated_at`, `created_at`)
VALUES
(1, 1, 1, 99, 99, "2018-03-05", 0, NOW(), NOW());

INSERT INTO `user_premium_subscription_variations`
(`id`, `trial_period`, `minimum_order_amount`, `shipping_policy_id`, `country`, `state_id`, `created_at`)
VALUES
(1, 30, 0.00, null,'us',2, '2018-01-02'),
(2, 30, 0.00, null,'us',null, '2018-01-03'),
(3, 30, 0.00, null,'dk',null, '2018-01-03');

DELETE FROM `tracking_offers_purchases`;
INSERT INTO `tracking_offers_purchases`
(`id`, `MD5`, `user_id`, `currency_code`, `amounts_sum`, `units_sum`, `received_at`)
VALUES
(1, 'BoH3K-f5_dxN9RiHWik1Ag', 30592, "DKK", 50, 1, NOW());

DELETE FROM `tracking_offers_purchase_items`;
INSERT INTO `tracking_offers_purchase_items`
(`purchase_id`, `SKU`, `unit_count`, `unit_price`, `amount`)
VALUES
(1, '1', 1, 70, 0),
(1, '2', 1, 110, 0);

INSERT INTO `user_offer_email_ignores`(user_id, last_delivered_at, last_engagement_at)
VALUES(29, '2017-01-01','2018-12-01');

INSERT INTO `country_postcodes` (`country_code`, `post_code`, `city`, `state_code`)
VALUES
("dk", "1433", "København K", NULL),
("us", "601", "Adjuntas", "PR");

INSERT INTO `adventure_version_requirements` (id, adventure_id, platform, minimum) VALUES
(1, 1, NULL, '8.16');

DELETE FROM `signal_types`;
INSERT INTO `signal_types` (`id`, `name`, `active`, `value_description`, `purpose_description`, `metadata_format`, `configuration`)
VALUES
(1, "wc_wine_type", 0, "wines.wines.id", "indicates the wine type of the wine is incorrect", "type_id", ""),
(2, "uwp_wine_type", 1, "wines.wine_types.id", "indicates a user\'s frequency for a particular wine type", "ratio", '{"wine_preference_object_type": "wine_type", "liked": 3}'),
(3, "uwp_wine_types", 1, "users.id", "indicates a user\'s frequency for all wine types", "wine_type_1_ratio, wine_type_2_ratio, wine_type_3_ratio, wine_type_4_ratio, wine_type_7_ratio, wine_type_24_ratio, wine_type_25_ratio", '{"wine_preference_object_type": "wine_type", "liked": 3}'),
(4, "uwp_grape_type_pos", 1, "wines.grapes.id", "indicates a user\'s interest in a particular single varietal grape", "", '{"wine_preference_object_type": "grape", "liked": 2}'),
(5, "uwp_grape_type_neg", 1, "wines.grapes.id", "indicates a user\'s disinterest in a particular single varietal grape", "", '{"wine_preference_object_type": "grape", "liked": 1}'),
(6, "uwp_regional_style_pos", 1, "wines.styles.id", "indicates a user\'s interest in a particular regional wine style", "", '{"wine_preference_object_type": "style", "liked": 2}'),
(7, "uwp_regional_style_neg", 1, "wines.styles.id", "indicates a user\'s disinterest in a particular regional wine style", "", '{"wine_preference_object_type": "style", "liked": 1}'),
(8, "uwp_wine_region_pos", 1, "wines.regions.id", "indicates a user\'s interest for a particular wine region", "", '{"wine_preference_object_type": "region", "liked": 2}'),
(9, "uwp_wine_region_neg", 1, "wines.regions.id", "indicates a user\'s disinterest for a particular wine region", "", '{"wine_preference_object_type": "region", "liked": 1}'),
(10, "uwp_wine_pos", 1, "wines.wines.id", "indicates a user\'s interest for a particular wine", "price_id", '{"wine_preference_object_type": "wine", "liked": 2}'),
(11, "uwp_wine_neg", 1, "wines.wines.id", "indicates a user\'s disinterest for a particular wine", "", '{"wine_preference_object_type": "wine", "liked": 1}'),
(12, "uwp_wine_price", 1, "users.id", "indicates a user\'s disinterest for a particular wine", "currency_code, lower_limit, upper_limit", "");

DELETE FROM `uwp_object_types`;
INSERT INTO `uwp_object_types` (`name`, `details_format`)
VALUES
("grape", ""),
("region", ""),
("wine_type", "ratio");

DELETE FROM `signals`;
INSERT INTO `signals` (`id`, `type_id`, `sender`, `value`, `metadata`)
VALUES
(1, 10, 36390, 1055, '{"price_id": 155}'),
(2, 10, 36390, 1056, '{"price_id": 156}'),
(3, 10, 36390, 1057, '{"price_id": 157}'),
(4, 10, 36390, 1058, '{"price_id": 158}'),
(5, 10, 36390, 1059, '{"price_id": 159}'),
(6, 10, 36390, 1060, '{"price_id": 160}');

INSERT INTO `wine_clubs` (`id`, `name`, `image`, `configs`, `active`, `updated_at`, `created_at`) VALUES
(1, 'Dummy club', 'some_dummy_image.jpg', _binary '[{ \"locations\": [{ \"country_code\": \"us\", \"state_id\": 6 }], \"options\": [{ \"bottles_per_wine\": 1, \"bottle_count\": 4, \"price\": 29.99, \"currency_code\": \"USD\" }, { \"bottles_per_wine\": 1, \"bottle_count\": 4, \"price\": 49.99, \"currency_code\": \"USD\" }] }, { \"locations\": [{ \"country_code\": \"us\", \"state_id\": 12 }, { \"country_code\": \"fr\" }, { \"country_code\": \"es\" }], \"options\": [{ \"bottles_per_wine\": 1, \"bottle_count\": 4, \"price\": 24.99, \"currency_code\": \"EUR\" }, { \"bottles_per_wine\": 1, \"bottle_count\": 4, \"price\": 44.99, \"currency_code\": \"EUR\" }] }]', 1, NOW(), NOW());

INSERT INTO `organic_certifications` (`code`, `name`)
VALUES
("AL-BIO-171", "A CERT European Organization for Certification S.A.");

UPDATE `vintages` SET  organic_certification_id = 1 WHERE id = 1;

