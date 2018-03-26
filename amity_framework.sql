-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 26 Mar 2018, 18:04
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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `core_variables`
--

CREATE TABLE `core_variables` (
  `id` int(10) NOT NULL,
  `faction_id` int(10) DEFAULT NULL,
  `profile_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `garage_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` enum('STRING','SCALAR','CODE','ARRAY') NOT NULL DEFAULT 'STRING',
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `server` tinyint(1) NOT NULL DEFAULT '0',
  `start_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faction_assigned_modules`
--

CREATE TABLE `faction_assigned_modules` (
  `id` int(11) NOT NULL,
  `faction_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faction_modules`
--

CREATE TABLE `faction_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `variable` varchar(255) NOT NULL,
  `type` enum('company','gang','permanent') NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `core_variables`
--
ALTER TABLE `core_variables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faction_id` (`faction_id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `garage_id` (`garage_id`);

--
-- Indexes for table `core_vehicles`
--
ALTER TABLE `core_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `faction_assigned_modules`
--
ALTER TABLE `faction_assigned_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faction_id` (`faction_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `faction_members`
--
ALTER TABLE `faction_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`faction_id`,`profile_id`) USING BTREE,
  ADD KEY `faction_id` (`faction_id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `faction_modules`
--
ALTER TABLE `faction_modules`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT dla tabeli `core_variables`
--
ALTER TABLE `core_variables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `core_vehicles`
--
ALTER TABLE `core_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `faction_assigned_modules`
--
ALTER TABLE `faction_assigned_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `faction_members`
--
ALTER TABLE `faction_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `faction_modules`
--
ALTER TABLE `faction_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Ograniczenia dla tabeli `core_variables`
--
ALTER TABLE `core_variables`
  ADD CONSTRAINT `core_variables_ibfk_1` FOREIGN KEY (`faction_id`) REFERENCES `core_factions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `core_variables_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `core_variables_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `core_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `core_variables_ibfk_4` FOREIGN KEY (`garage_id`) REFERENCES `core_garage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `faction_assigned_modules`
--
ALTER TABLE `faction_assigned_modules`
  ADD CONSTRAINT `faction_assigned_modules_ibfk_1` FOREIGN KEY (`faction_id`) REFERENCES `core_factions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faction_assigned_modules_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `faction_modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `faction_members`
--
ALTER TABLE `faction_members`
  ADD CONSTRAINT `faction_members_ibfk_1` FOREIGN KEY (`faction_id`) REFERENCES `core_factions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faction_members_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
