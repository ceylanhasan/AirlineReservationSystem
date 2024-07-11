-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 08:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airline_id`, `name`, `country`, `created_at`, `updated_at`) VALUES
(1, 'България Ер', 'България', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(2, 'Wizz Air', 'Унгария', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(3, 'Ryanair', 'Ирландия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(4, 'EasyJet', 'Обединеното кралство', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(5, 'Турски Авиолинии (Turkish Airlines)', 'Турция', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(6, 'Hamburg International', 'Германия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(7, 'Air France', 'Франция', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(8, 'Pegasus Airlines', 'Турция', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(9, 'Lufthansa', 'Германия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(10, 'British Airways', 'Обединеното кралство', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(11, 'Austrian Airlines', 'Австрия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(12, 'Swiss International Air Lines', 'Швейцария', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(13, 'KLM', 'Нидерландия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(14, 'Emirates', 'ОАЕ', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(15, 'Qatar Airways', 'Катар', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(16, 'Aeroflot', 'Русия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(17, 'Scandinavian Airlines', 'Швеция', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(18, 'Alitalia', 'Италия', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(19, 'Iberia', 'Испания', '2024-06-29 12:10:25', '2024-06-29 12:10:25'),
(20, 'Finnair', 'Финландия', '2024-06-29 12:10:25', '2024-06-29 12:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `airplane_types`
--

CREATE TABLE `airplane_types` (
  `airplane_type_id` int(11) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL,
  `max_speed` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airplane_types`
--

INSERT INTO `airplane_types` (`airplane_type_id`, `manufacturer`, `model`, `capacity`, `max_speed`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Boeing', '737', 150, 876.5, 'Short to medium-range narrow-body airliner.', '2024-06-29 11:58:35', '2024-06-29 11:58:35'),
(2, 'Airbus', 'A320', 180, 913.2, 'Short to medium-range narrow-body airliner.', '2024-06-29 11:58:35', '2024-06-29 11:58:35'),
(3, 'Bombardier', 'CRJ700', 78, 800, 'Regional jet for short-haul flights.', '2024-06-29 11:58:35', '2024-06-29 11:58:35'),
(4, 'Embraer', 'E190', 114, 890.5, 'Regional jet for medium-haul flights.', '2024-06-29 11:58:35', '2024-06-29 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `airport_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`airport_id`, `name`, `city`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Sofia Airport', 'София', 'България', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(2, 'London Heathrow Airport', 'Лондон', 'Обединеното кралство', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(3, 'Paris Charles de Gaulle Airport', 'Париж', 'Франция', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(4, 'Frankfurt Airport', 'Франкфурт', 'Германия', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(5, 'Istanbul Airport', 'Истанбул', 'Турция', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(6, 'Amsterdam Airport Schiphol', 'Амстердам', 'Нидерландия', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(7, 'Dubai International Airport', 'Дубай', 'Обединените арабски емирства', '2024-06-29 12:11:35', '2024-06-29 12:11:35'),
(8, 'Los Angeles International Airport', 'Лос Анджелис', 'САЩ', '2024-06-29 12:11:35', '2024-06-29 12:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `seat_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `hire_date` date NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `position`, `hire_date`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'Иван', 'Иванов', 'Пилот на гражданската авиация', '2020-05-15', 5000.00, '2024-06-29 12:22:55', '2024-06-29 12:22:55'),
(2, 'Мария', 'Петрова', 'Стюардеса', '2021-01-10', 3000.00, '2024-06-29 12:22:55', '2024-06-29 12:22:55'),
(3, 'Петър', 'Георгиев', 'Техник и регулатор', '2019-11-20', 4000.00, '2024-06-29 12:22:55', '2024-06-29 12:22:55'),
(4, 'Анна', 'Стоянова', 'Мениджър на авиокомпаниите', '2018-07-05', 7000.00, '2024-06-29 12:22:55', '2024-06-29 12:22:55'),
(5, 'Георги', 'Николов', 'ИТ специалист', '2022-03-18', 5500.00, '2024-06-29 12:22:55', '2024-06-29 12:22:55'),
(6, 'Елена', 'Иванова', 'Командир на самолета', '2019-08-20', 6000.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(7, 'Димитър', 'Петров', 'Регистрационен агент', '2020-02-10', 2500.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(8, 'Стефка', 'Георгиева', 'Агент за придружаване', '2021-04-15', 2800.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(9, 'Николай', 'Стоянов', 'Специалист в паспортен контрол', '2020-11-30', 3200.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(10, 'Ивайло', 'Николов', 'Специалист на самолета', '2018-12-12', 4200.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(11, 'Марин', 'Петков', 'Сигнал и инженер с ниско напрежение', '2017-06-25', 3800.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(12, 'Андрей', 'Георгиев', 'Мениджър по поддръжката', '2016-09-08', 6800.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(13, 'Виктория', 'Иванова', 'митничар', '2023-01-05', 3000.00, '2024-06-29 12:23:14', '2024-06-29 12:23:14'),
(14, 'Борислав', 'Петков', 'Ръководител полети', '2015-02-19', 8000.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(15, 'Светлана', 'Костадинова', 'Административен асистент', '2021-08-25', 2700.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(16, 'Александър', 'Михайлов', 'Техник по радиосвързите', '2019-04-10', 4500.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(17, 'Катерина', 'Димитрова', 'Специалист по маркетинг', '2022-06-15', 3600.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(18, 'Михаил', 'Атанасов', 'Пилот-инструктор', '2017-11-30', 7500.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(19, 'Валентина', 'Маринова', 'Агент за безопасност', '2020-03-20', 3400.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(20, 'Десислава', 'Иванова', 'Мениджър човешки ресурси', '2018-10-01', 6200.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(21, 'Стефан', 'Петров', 'Служител по техническа поддръжка', '2021-12-05', 2900.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(22, 'Емилия', 'Тодорова', 'Координатор на полети', '2019-09-18', 4200.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(23, 'Любомир', 'Кирилов', 'Технически специалист', '2020-05-10', 3100.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(24, 'Васил', 'Василев', 'Специалист по логистика', '2018-03-15', 4800.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00'),
(25, 'Калина', 'Георгиева', 'Счетоводител', '2017-07-22', 5200.00, '2024-07-11 08:00:00', '2024-07-11 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employeesusers`
--

CREATE TABLE `employeesusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeesusers`
--

INSERT INTO `employeesusers` (`user_id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', '999', '2024-07-09 13:28:17', '2024-07-09 13:28:17'),
(2, 'vladislav', '999', '2024-07-09 13:28:17', '2024-07-09 13:28:17'),
(3, 'sivlia', '999', '2024-07-09 13:28:17', '2024-07-09 13:28:17'),
(4, 'ivan', '999', '2024-07-09 13:28:17', '2024-07-09 13:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `airline` varchar(100) NOT NULL,
  `flight_number` varchar(20) NOT NULL,
  `departure_airport` varchar(100) NOT NULL,
  `arrival_airport` varchar(100) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime NOT NULL,
  `status` enum('Scheduled','On Time','Delayed','Cancelled') NOT NULL DEFAULT 'Scheduled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `airline`, `flight_number`, `departure_airport`, `arrival_airport`, `departure_datetime`, `arrival_datetime`, `status`, `created_at`, `updated_at`) VALUES
(1, 'България ЕР', 'BG1001', 'Варна', 'Лондон', '2024-07-01 08:00:00', '2024-07-01 10:00:00', 'On Time', '2024-07-02 11:09:21', '2024-07-09 21:03:52'),
(2, 'Wizz Air', 'WZ2002', 'Варна', 'Милано', '2024-07-02 12:00:00', '2024-07-02 14:00:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:21:02'),
(3, 'Ryanair', 'RY3003', 'Варна', 'Барселона', '2024-07-03 16:00:00', '2024-07-03 18:00:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:09:21'),
(4, 'EasyJet', 'EZ4004', 'Варна', 'Берлин', '2024-07-04 10:00:00', '2024-07-04 12:00:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:20:42'),
(5, 'Турски Авиолинии', 'TK5005', 'Варна', 'Истанбул', '2024-07-05 14:00:00', '2024-07-05 15:30:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:21:43'),
(6, 'Hamburg International', 'HI6006', 'Варна', 'Хамбург', '2024-07-06 06:00:00', '2024-07-06 08:30:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:09:21'),
(7, 'Air France', 'AF7007', 'Варна', 'Париж', '2024-07-07 09:00:00', '2024-07-07 11:30:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:21:59'),
(8, 'Pegasus Airlines', 'PG8008', 'Варна', 'Анкара', '2024-07-08 13:00:00', '2024-07-08 15:00:00', 'Scheduled', '2024-07-02 11:09:21', '2024-07-02 11:21:17'),
(9, 'Lufthansa', 'LH9009', 'Варна', 'Франкфурт', '2024-07-09 11:00:00', '2024-07-09 13:00:00', 'Scheduled', '2024-07-09 12:00:00', '2024-07-09 12:00:00'),
(10, 'British Airways', 'BA1010', 'Варна', 'Лондон', '2024-07-10 15:00:00', '2024-07-10 17:00:00', 'Scheduled', '2024-07-10 12:00:00', '2024-07-10 12:00:00'),
(11, 'Austrian Airlines', 'OS1111', 'Варна', 'Виена', '2024-07-11 07:00:00', '2024-07-11 08:30:00', 'Scheduled', '2024-07-11 12:00:00', '2024-07-11 12:00:00'),
(12, 'Swiss International Air Lines', 'LX1212', 'Варна', 'Цюрих', '2024-07-12 16:00:00', '2024-07-12 18:30:00', 'Scheduled', '2024-07-12 12:00:00', '2024-07-12 12:00:00'),
(13, 'KLM', 'KL1313', 'Варна', 'Амстердам', '2024-07-13 12:00:00', '2024-07-13 14:00:00', 'Scheduled', '2024-07-13 12:00:00', '2024-07-13 12:00:00'),
(14, 'Emirates', 'EK1414', 'Варна', 'Дубай', '2024-07-14 23:00:00', '2024-07-15 04:00:00', 'Scheduled', '2024-07-14 12:00:00', '2024-07-14 12:00:00'),
(15, 'Qatar Airways', 'QR1515', 'Варна', 'Доха', '2024-07-15 01:00:00', '2024-07-15 05:00:00', 'Scheduled', '2024-07-15 12:00:00', '2024-07-15 12:00:00'),
(16, 'Aeroflot', 'SU1616', 'Варна', 'Москва', '2024-07-16 05:00:00', '2024-07-16 09:00:00', 'Scheduled', '2024-07-16 12:00:00', '2024-07-16 12:00:00'),
(17, 'Scandinavian Airlines', 'SK1717', 'Варна', 'Копенхаген', '2024-07-17 14:00:00', '2024-07-17 16:30:00', 'Scheduled', '2024-07-17 12:00:00', '2024-07-17 12:00:00'),
(18, 'Alitalia', 'AZ1818', 'Варна', 'Рим', '2024-07-18 10:00:00', '2024-07-18 12:00:00', 'Scheduled', '2024-07-18 12:00:00', '2024-07-18 12:00:00'),
(19, 'Iberia', 'IB1919', 'Варна', 'Мадрид', '2024-07-19 06:00:00', '2024-07-19 08:30:00', 'Scheduled', '2024-07-19 12:00:00', '2024-07-19 12:00:00'),
(20, 'Finnair', 'AY2020', 'Варна', 'Хелзинки', '2024-07-20 09:00:00', '2024-07-20 11:30:00', 'Scheduled', '2024-07-20 12:00:00', '2024-07-20 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `flight_passenger`
--

CREATE TABLE `flight_passenger` (
  `flight_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `booking_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `date_of_birth` date NOT NULL,
  `passport_number` varchar(20) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `passport_number`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Богомил', 'Иванов', 'Male', '1985-05-15', '912345678', 'България', '2024-06-29 11:06:46', '2024-06-29 11:06:46'),
(2, 'Силвия', 'Томова', 'Female', '1990-07-22', '698765432', 'България', '2024-06-29 11:06:46', '2024-06-29 11:06:46'),
(3, 'Алекс', 'Тайлор', 'Other', '2000-01-10', 'BBA567943', 'Испания', '2024-06-29 11:06:46', '2024-06-29 11:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `passenger_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `flight_id`, `seat_number`, `passenger_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', 1, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(2, 1, 'B2', 2, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(3, 2, 'C3', 3, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(4, 2, 'D4', NULL, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(5, 3, 'E5', NULL, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(6, 3, 'F6', 1, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(7, 4, 'G7', 2, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(8, 4, 'H8', 3, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(9, 5, 'I9', NULL, '2024-07-02 11:15:12', '2024-07-02 11:15:12'),
(10, 5, 'J10', 1, '2024-07-02 11:15:12', '2024-07-02 11:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `booking_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `flight_id`, `passenger_id`, `seat_number`, `booking_date`) VALUES
(1, 1, 1, 'A1', '2024-07-02 13:10:42'),
(2, 1, 2, 'B2', '2024-07-02 13:10:42'),
(3, 2, 3, 'C3', '2024-07-02 13:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ceylanxsnn_', '123', '2024-07-08 14:02:30', '2024-07-08 14:02:30'),
(2, 'katev_eu', '456', '2024-07-08 14:02:30', '2024-07-08 14:02:30'),
(3, 'anna_luis', '678', '2024-07-08 14:02:30', '2024-07-08 14:02:30'),
(4, 'aleks_ww', '900', '2024-07-08 14:02:30', '2024-07-08 14:02:30'),
(6, 'ceylan', '122', '2024-07-09 09:59:29', '2024-07-09 09:59:29'),
(7, 'anastasia', '999', '2024-07-09 13:20:33', '2024-07-09 13:20:33'),
(8, 'ahmed', '999', '2024-07-09 13:20:33', '2024-07-09 13:20:33'),
(9, 'mehmed', '999', '2024-07-09 13:20:33', '2024-07-09 13:20:33'),
(10, 'svetla', '999', '2024-07-09 13:20:33', '2024-07-09 13:20:33'),
(11, 'elena', '999', '2024-07-09 13:20:33', '2024-07-09 13:20:33'),
(12, 'viktor', '999', '2024-07-09 13:20:33', '2024-07-09 13:20:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `airplane_types`
--
ALTER TABLE `airplane_types`
  ADD PRIMARY KEY (`airplane_type_id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`airport_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employeesusers`
--
ALTER TABLE `employeesusers`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  ADD PRIMARY KEY (`flight_id`,`passenger_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `airplane_types`
--
ALTER TABLE `airplane_types`
  MODIFY `airplane_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employeesusers`
--
ALTER TABLE `employeesusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`);

--
-- Constraints for table `flight_passenger`
--
ALTER TABLE `flight_passenger`
  ADD CONSTRAINT `flight_passenger_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_passenger_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`) ON DELETE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
