-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Lis 2017, 14:43
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bibioteka`
--
CREATE DATABASE IF NOT EXISTS `bibioteka` DEFAULT CHARACTER SET utf32 COLLATE utf32_polish_ci;
USE `bibioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `imie` text COLLATE utf32_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autora`, `imie`, `nazwisko`) VALUES
(1, 'Henry', 'Sienkiewicz'),
(2, 'Adam', 'Mickiewicz'),
(3, 'Celvi', 'Lewis'),
(4, 'John', 'Tollken'),
(5, 'Carlo', 'collodi'),
(6, 'Joanne', 'Rowling'),
(7, 'Rick', 'Riordan'),
(8, 'Robert', 'Clouse'),
(9, 'Mariusz', 'smonko'),
(10, 'Philip ', 'Pullman'),
(11, 'Alfred', 'Bauma'),
(12, 'Marcela', 'Pullmanaasd'),
(13, 'Thor', 'OdinSon'),
(14, 'Paula', 'Hawkins');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunek`
--

CREATE TABLE `gatunek` (
  `id.gatunek` int(11) NOT NULL,
  `gatunek` text COLLATE utf32_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `gatunek`
--

INSERT INTO `gatunek` (`id.gatunek`, `gatunek`) VALUES
(1, 'Westren'),
(2, 'Komedia'),
(3, 'Horror'),
(4, 'Fantstyczne'),
(5, 'Akcji'),
(6, 'Historyczne'),
(7, 'Bajka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` text COLLATE utf32_polish_ci NOT NULL,
  `autor` int(11) DEFAULT NULL,
  `id_osoba` int(11) NOT NULL,
  `data_wyp` date NOT NULL,
  `ilosc_ksiazek` int(11) NOT NULL,
  `gatunek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `autor`, `id_osoba`, `data_wyp`, `ilosc_ksiazek`, `gatunek`) VALUES
(1, 'Ogniem i Mieczem', 1, 4, '2017-10-02', 1, 6),
(2, 'Pan Tadeusz', 2, 1, '2017-10-10', 1, 6),
(3, 'Narnia', 3, 2, '2017-10-09', 1, 4),
(4, 'Hobbit', 4, 3, '2017-10-06', 1, 4),
(5, 'Pinokio', 5, 5, '2017-10-07', 1, 3),
(6, 'Harry Potter', 6, 6, '2017-09-20', 1, 4),
(7, 'Percy Jackson', 7, 7, '2017-09-06', 1, 4),
(8, 'Wejscie Kaszanki', 8, 8, '2017-08-09', 1, 7),
(9, 'Dwa Palce w kaszance', 9, 9, '2017-09-14', 1, 4),
(10, 'Oz', 10, 10, '2017-10-01', 1, 4),
(11, 'Zloty kompas', 11, 11, '2017-10-08', 1, 4),
(12, 'Sekret, którego nie zdradzę', 12, 12, '2017-10-06', 1, 2),
(13, 'Mitologia nordycka', 13, 13, '2017-09-12', 1, 4),
(14, 'Zapisane w wodzie ', 14, 14, '2017-10-04', 1, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoba`
--

CREATE TABLE `osoba` (
  `id_osoby` int(11) NOT NULL,
  `imie` text COLLATE utf32_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf32_polish_ci NOT NULL,
  `pesel` int(11) NOT NULL,
  `telefon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Zrzut danych tabeli `osoba`
--

INSERT INTO `osoba` (`id_osoby`, `imie`, `nazwisko`, `pesel`, `telefon`) VALUES
(1, 'Michal', 'Waldoch', 21411423, 123411242),
(2, 'Andrzej', 'Pedal', 231412412, 123214124),
(3, 'Jacek', 'Cieleslaw', 31241424, 123124124),
(4, 'Ewa', 'Kobierowska', 124124124, 1241245214),
(5, 'Kamil', 'Wardenga', 35267214, 162684356),
(6, 'Roman', 'Mallek', 72376341, 1241241244),
(7, 'Krystian', 'Skiba', 412412412, 12421441),
(8, 'Marian', 'Kiepcki', 41242151, 2131214515),
(9, 'Radek', 'Grosz', 12515561, 12947506),
(10, 'marek', 'slonma', 51531351, 161513516),
(11, 'zgredek', 'kredka', 15156126, 142125161),
(12, 'Janusz', 'Kropp', 20321498, 214018124),
(13, 'Adrian', 'Rumacz', 1515613, 1552351),
(14, 'Mirek', 'SWanea', 12511616, 147412124);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indexes for table `gatunek`
--
ALTER TABLE `gatunek`
  ADD PRIMARY KEY (`id.gatunek`);

--
-- Indexes for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`);

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id_osoby`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT dla tabeli `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Zrzut danych tabeli `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"direct","snap_to_grid":"off","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Zrzut danych tabeli `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'waleniuuuu', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struktura tabeli @TABLE@","latex_structure_continued_caption":"Struktura tabeli @TABLE@ (kontynuacja)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"ZawartoÅ›Ä‡ tabeli @TABLE@","latex_data_continued_caption":"ZawartoÅ›Ä‡ tabeli @TABLE@ (kontynuacja)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(2, 'root', 'server', 'waleniuuuuuu', '{"quick_or_custom":"quick","what":"sql","db_select[]":["bibioteka","phpmyadmin","radix","salon","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struktura tabeli @TABLE@","latex_structure_continued_caption":"Struktura tabeli @TABLE@ (kontynuacja)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"ZawartoÅ›Ä‡ tabeli @TABLE@","latex_data_continued_caption":"ZawartoÅ›Ä‡ tabeli @TABLE@ (kontynuacja)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"bibioteka","table":"osoba"},{"db":"bibioteka","table":"ksiazki"},{"db":"bibioteka","table":"gatunek"},{"db":"bibioteka","table":"autor"},{"db":"salon","table":"marian"},{"db":"radix","table":"melex"},{"db":"radix","table":"imie"},{"db":"Radix","table":"Imie"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Zrzut danych tabeli `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('bibioteka', 'ksiazki', 'autor', 'bibioteka', 'autor', 'id_autora'),
('bibioteka', 'ksiazki', 'gatunek', 'bibioteka', 'gatunek', 'id.gatunek'),
('bibioteka', 'ksiazki', 'id_osoba', 'bibioteka', 'osoba', 'id_osoby');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Zrzut danych tabeli `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bibioteka', 'osoba', '{"sorted_col":"`osoba`.`id_osoby`  ASC"}', '2017-11-03 13:09:40');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-10-13 12:41:21', '{"lang":"pl","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Baza danych: `radix`
--
CREATE DATABASE IF NOT EXISTS `radix` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `radix`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imie`
--

CREATE TABLE `imie` (
  `Beata` int(11) NOT NULL,
  `Jan` int(11) NOT NULL,
  `Andrzej` int(11) NOT NULL,
  `Zia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `melex`
--

CREATE TABLE `melex` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `melex`
--

INSERT INTO `melex` (`id`, `imie`, `nazwisko`, `email`) VALUES
(1, 'fdd', 'sd', 'sd'),
(2, 'zxc', 'zxcvbvz', 'xzcvzdbv'),
(3, 'dsg', 'fghjdfgh', 'dfhh'),
(4, 'sdf', 'dsd', 'sfg'),
(5, '', '', ''),
(6, 'macian', 'cddd', '2a@wp.pl'),
(7, '21', '222', '1'),
(8, 'Marian', 'dupa', 'lol@wp.pl'),
(9, '', '', ''),
(10, 'dsas', 'aadsa', 'dsa@wp.pl'),
(11, '', '', ''),
(12, 'Lolololol', 'Lolololol', 'Lololol@wp.pl'),
(13, '', '', ''),
(14, 'radek', 'mallek', 'rtadsy@wp.pl'),
(15, 'bartek', 'stolcmen', 'saydgt@wp.pkl'),
(16, 'jacek', 'kreft', 'jacek@dsa.pl'),
(17, 'das', 'gds', 'gfds'),
(18, 'radwe', 'dsad', 'sadjk'),
(19, 'radwe', 'dsad', 'sadjk');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `melex`
--
ALTER TABLE `melex`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `melex`
--
ALTER TABLE `melex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;--
-- Baza danych: `salon`
--
CREATE DATABASE IF NOT EXISTS `salon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `salon`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `marian`
--

CREATE TABLE `marian` (
  `id` int(11) NOT NULL,
  `Imie` varchar(30) NOT NULL,
  `Nazwisko` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `marian`
--

INSERT INTO `marian` (`id`, `Imie`, `Nazwisko`, `Email`) VALUES
(10, 'dd', 'dd', 'gsgs@.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `marian`
--
ALTER TABLE `marian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `marian`
--
ALTER TABLE `marian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
