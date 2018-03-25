-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 25 Mar 2018, 18:48
-- Wersja serwera: 5.7.13
-- Wersja PHP: 7.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `amity_framework`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_bank`
--

CREATE TABLE `core_bank` (
  `id` int(11) NOT NULL,
  `account_number` varchar(10) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `cash` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `core_bank`
--

INSERT INTO `core_bank` (`id`, `account_number`, `profile_id`, `cash`, `created_at`, `update_at`) VALUES
(1, 'PL11174627', 3, 2000, '2018-03-08 14:49:29', '2018-03-25 17:24:51'),
(2, 'PL60918677', 3, 0, '2018-03-08 14:50:01', '2018-03-08 15:07:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_factions`
--

CREATE TABLE `core_factions` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `short_name` varchar(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `type` enum('company','gang','permanent') NOT NULL DEFAULT 'company',
  `bank` int(11) NOT NULL DEFAULT '0',
  `upkeep` int(11) DEFAULT NULL,
  `delete_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `core_factions`
--

INSERT INTO `core_factions` (`id`, `profile_id`, `short_name`, `full_name`, `type`, `bank`, `upkeep`, `delete_at`, `created_at`, `updated_at`) VALUES
(2, 3, 'John', 'Raven', 'company', 0, NULL, NULL, '2018-03-08 15:23:22', '2018-03-08 15:29:12'),
(7, 3, 'Ecie', 'Pecie', 'gang', 0, NULL, NULL, '2018-03-08 15:24:51', '2018-03-08 15:24:51'),
(8, 3, 'Ecie Pecie', 'Tesacasdasdasd', 'company', 0, NULL, NULL, '2018-03-18 18:39:25', '2018-03-18 18:39:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_garage`
--

CREATE TABLE `core_garage` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `faction_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) NOT NULL,
  `vin` varchar(20) NOT NULL,
  `plate` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `stealer_id` int(11) DEFAULT NULL,
  `hit` text NOT NULL,
  `access_level` int(11) DEFAULT NULL,
  `damage` float NOT NULL DEFAULT '0',
  `fuel` float NOT NULL DEFAULT '1',
  `color` varchar(31) NOT NULL DEFAULT '',
  `material` varchar(31) NOT NULL DEFAULT '',
  `rims` varchar(31) NOT NULL DEFAULT '',
  `windows` int(1) NOT NULL DEFAULT '1',
  `lights` int(1) NOT NULL DEFAULT '1',
  `position` text NOT NULL,
  `inventory` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `core_garage`
--

INSERT INTO `core_garage` (`id`, `profile_id`, `faction_id`, `vehicle_id`, `vin`, `plate`, `status`, `stealer_id`, `hit`, `access_level`, `damage`, `fuel`, `color`, `material`, `rims`, `windows`, `lights`, `position`, `inventory`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 1, 'AF45Z-5399-2843-3471', 'ZSEQX11', 1, NULL, '[]', NULL, 0, 0, '', '', '', 1, 2, '[]', '[]', '2018-03-06 13:27:08', '2018-03-25 17:57:02'),
(3, 3, NULL, 1, 'AF45Z-5869-7792-3592', 'ZSNXE4C', 0, NULL, '[1,1,1,0,0,0.741032,0,0.284574,1,0.786679,0.291752,0,0,0,0,0,0,0,0,0,0.0775372,0.0775372,0.0279634,0.0279634]', NULL, 0, 1, '', '', '', 1, 2, '[495.655,358.52,-0.10254]', '[]', '2018-03-06 14:11:38', '2018-03-13 13:46:47'),
(4, NULL, 8, 1, 'AF45Z-5869-7192-3592', 'ZSNXE1C', 0, NULL, '[1,1,1,0,0,0.741032,0,0.284574,1,0.786679,0.291752,0,0,0,0,0,0,0,0,0,0.0775372,0.0775372,0.0279634,0.0279634]', NULL, 0, 1, '', '', '', 1, 2, '[495.655,358.52,-0.10254]', '[]', '2018-03-06 14:11:38', '2018-03-20 15:31:14'),
(5, 3, 8, 1, 'AF45Z-5861-7192-3592', 'ZSNEE1C', 0, NULL, '[1,1,1,0,0,0.741032,0,0.284574,1,0.786679,0.291752,0,0,0,0,0,0,0,0,0,0.0775372,0.0775372,0.0279634,0.0279634]', 10, 0, 1, '', '', '', 1, 2, '[495.655,358.52,-0.10254]', '[]', '2018-03-06 14:11:38', '2018-03-20 15:57:09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_items`
--

CREATE TABLE `core_items` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `type` enum('item','magazine','weapon','backpack') NOT NULL DEFAULT 'item',
  `name` varchar(127) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_profiles`
--

CREATE TABLE `core_profiles` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `profile_uid` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `female` tinyint(1) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `items` text NOT NULL,
  `clothes` text NOT NULL,
  `weapons` text NOT NULL,
  `hunger` int(11) NOT NULL DEFAULT '0',
  `thirst` int(11) NOT NULL DEFAULT '0',
  `position` varchar(255) NOT NULL DEFAULT '[]',
  `connected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `core_profiles`
--

INSERT INTO `core_profiles` (`id`, `player_id`, `profile_uid`, `first_name`, `last_name`, `female`, `cash`, `items`, `clothes`, `weapons`, `hunger`, `thirst`, `position`, `connected`, `created_at`, `updated_at`) VALUES
(3, 1, 'AZJMNCEVY', 'John', 'Raven', 0, 1000, '[["ACE_fieldDressing","ACE_fieldDressing","ACE_morphine","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag"],["Rangefinder","16Rnd_9x21_Mag","16Rnd_9x21_Mag","SmokeShell","SmokeShellGreen","Chemlight_green","Chemlight_green","RH_30Rnd_556x45_M855A1","RH_30Rnd_556x45_M855A1"],["ACE_Clacker","ACE_Clacker","ACE_M26_Clacker","ACE_M26_Clacker","16Rnd_9x21_Mag","16Rnd_9x21_Mag","CUP_PipeBomb_M","CUP_PipeBomb_M","CUP_PipeBomb_M","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","RH_20Rnd_556x45_Mk318","ACE_PreloadedMissileDummy_Stinger_CUP"],["ItemMap","ItemCompass","Itemwatch","TFAR_anprc154_2","ItemGPS","CUP_NVG_HMNVS"]]', '["TRYK_U_B_BLKBLK_CombatUniform","TRYK_V_ArmorVest_Delta2","DRPG_PoliceBelt","TRYK_H_PASGT_BLK","G_Balaclava_blk"]', '[["RH_M4_ris_m",["RH_30Rnd_556x45_M855A1"],["RH_fa556","CUP_acc_Flashlight","optic_ACO_grn","bipod_02_F_blk"],24],["launch_RPG7_F",[],["","","",""],0],["hgun_P07_F",["16Rnd_9x21_Mag"],["muzzle_snds_L","","",""],17]]', 0, 0, '[4935.27,1981.54,0.1275]', 1, '2018-03-02 16:25:34', '2018-03-25 17:53:19'),
(4, 3, 'AZBCLBRJF', 'Jack', 'Davis', 0, 0, '[[],[],["SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed","SmokeShellRed"],["ItemMap","ItemCompass","TFAR_microdagr"]]', '["CG_EMS6","V_PlateCarrier2_blk","invisible_bergen","H_Hat_brown","G_Bandanna_aviator"]', '[[],[],[]]', 0, 0, '[2468.02,4363.59,0.161273]', 0, '2018-03-08 17:44:38', '2018-03-12 12:28:04'),
(5, 2, 'AZKSZZGDG', 'Karol', 'Zadymka', 0, 0, '[[],[],["CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M"],["ItemMap","ItemCompass","TFAR_microdagr","Rangefinder"]]', '["U_BasicBody_FS","","invisible_viperharness","Gorb_PlaidHat3","G_Bandanna_beast"]', '[["CUP_arifle_AKS_Gold",["CUP_30Rnd_762x39_AK47_M"],["","","CUP_optic_Kobra",""],30],[],[]]', 0, 0, '[5642.18,4365.58,0]', 0, '2018-03-08 17:44:44', '2018-03-12 12:28:04'),
(6, 4, 'AZXJNARRQ', 'Aleks', 'Herbatka', 0, 0, '[]', '[]', '[]', 0, 0, '[]', 0, '2018-03-08 17:46:15', '2018-03-08 17:46:15'),
(7, 4, 'AZFVWZFWA', '', '', 0, 0, '[["ACE_EarPlugs"],[],[],["ItemMap","ItemCompass","TFAR_microdagr","ACE_Yardage450"]]', '["silver_lake_fbi","","invisible_kitbag","","TRYK_headset_Glasses"]', '[[],[],[]]', 0, 0, '[3247.97,5223.14,2.54564]', 0, '2018-03-08 17:46:20', '2018-03-12 12:28:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_users`
--

CREATE TABLE `core_users` (
  `id` int(11) NOT NULL,
  `uid` varchar(40) NOT NULL,
  `subscriber` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `core_users`
--

INSERT INTO `core_users` (`id`, `uid`, `subscriber`, `created_at`, `updated_at`) VALUES
(1, '76561198015862132', 0, '2018-01-10 16:53:59', '2018-01-10 16:53:59'),
(2, '76561198006925322', 0, '2018-03-08 17:44:20', '2018-03-08 17:44:20'),
(3, '76561198105460465', 0, '2018-03-08 17:44:24', '2018-03-08 17:44:24'),
(4, '76561198107918085', 0, '2018-03-08 17:46:02', '2018-03-08 17:46:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_vehicles`
--

CREATE TABLE `core_vehicles` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `type` enum('car','ship','air','') NOT NULL DEFAULT 'car',
  `name` varchar(127) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `core_vehicles`
--

INSERT INTO `core_vehicles` (`id`, `class_name`, `type`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'pop_bmwm4', 'car', 'BMW 4', '', '2018-03-05 17:53:15', '2018-03-05 17:53:15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faction_members`
--

CREATE TABLE `faction_members` (
  `id` int(11) NOT NULL,
  `faction_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `access_level` int(11) NOT NULL DEFAULT '1',
  `salary` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `faction_members`
--

INSERT INTO `faction_members` (`id`, `faction_id`, `profile_id`, `access_level`, `salary`, `description`, `created_at`, `updated_at`) VALUES
(5, 2, 3, 1, NULL, '', '2018-03-08 15:25:52', '2018-03-08 15:25:52'),
(6, 7, 3, 1, NULL, '', '2018-03-17 17:40:47', '2018-03-17 17:40:47'),
(7, 8, 3, 10, 1000, 'Jest zajebisty', '2018-03-18 18:39:25', '2018-03-20 15:54:50');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `core_bank`
--
ALTER TABLE `core_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `core_factions`
--
ALTER TABLE `core_factions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short_name` (`short_name`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD KEY `owner_id` (`profile_id`);

--
-- Indexes for table `core_garage`
--
ALTER TABLE `core_garage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vin` (`vin`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `owner_id` (`profile_id`),
  ADD KEY `company_id` (`faction_id`),
  ADD KEY `current_id` (`stealer_id`);

--
-- Indexes for table `core_items`
--
ALTER TABLE `core_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `core_profiles`
--
ALTER TABLE `core_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`first_name`,`last_name`) USING BTREE,
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `core_users`
--
ALTER TABLE `core_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `core_vehicles`
--
ALTER TABLE `core_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `faction_members`
--
ALTER TABLE `faction_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`faction_id`,`profile_id`) USING BTREE,
  ADD KEY `faction_id` (`faction_id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `core_bank`
--
ALTER TABLE `core_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `core_factions`
--
ALTER TABLE `core_factions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `core_garage`
--
ALTER TABLE `core_garage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `core_items`
--
ALTER TABLE `core_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `core_profiles`
--
ALTER TABLE `core_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `core_users`
--
ALTER TABLE `core_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `core_vehicles`
--
ALTER TABLE `core_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `faction_members`
--
ALTER TABLE `faction_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `core_bank`
--
ALTER TABLE `core_bank`
  ADD CONSTRAINT `core_bank_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `core_factions`
--
ALTER TABLE `core_factions`
  ADD CONSTRAINT `core_factions_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `core_garage`
--
ALTER TABLE `core_garage`
  ADD CONSTRAINT `core_garage_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `core_vehicles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `core_garage_ibfk_2` FOREIGN KEY (`faction_id`) REFERENCES `core_factions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `core_garage_ibfk_3` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `core_garage_ibfk_4` FOREIGN KEY (`stealer_id`) REFERENCES `core_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `core_profiles`
--
ALTER TABLE `core_profiles`
  ADD CONSTRAINT `core_profiles_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `core_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `faction_members`
--
ALTER TABLE `faction_members`
  ADD CONSTRAINT `faction_members_ibfk_1` FOREIGN KEY (`faction_id`) REFERENCES `core_factions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faction_members_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
