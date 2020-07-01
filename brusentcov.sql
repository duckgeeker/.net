-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Чрв 29 2020 р., 22:54
-- Версія сервера: 10.3.13-MariaDB-log
-- Версія PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `brusentcov`
--

-- --------------------------------------------------------

--
-- Структура таблиці `goods`
--

CREATE TABLE `goods` (
  `id_goods` int(9) NOT NULL,
  `name_goods` varchar(1024) NOT NULL,
  `id_group` int(9) NOT NULL,
  `price` int(9) NOT NULL,
  `country` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `goods`
--

INSERT INTO `goods` (`id_goods`, `name_goods`, `id_group`, `price`, `country`) VALUES
(0, 'Ангіплант льодяники зі смаком меду', 0, 233, 'Україна'),
(1, 'АНТИТУСИН (ТАБЛЕТКИ ВІД КАШЛЮ)', 0, 102, 'Росія'),
(2, 'Альдазол 400 мг таблетки №3', 0, 77, 'Україна'),
(3, 'Ворміл 400 мг таблетки №3', 0, 95, 'Україна'),
(4, 'Т-септ таблетки для розмоктування №20', 0, 72, 'Укрїна'),
(5, 'Біле вугілля таблетки №10', 0, 28, 'Україна'),
(6, 'Бронхоплант сироп від кашлю 100 мл', 1, 91, 'Китай'),
(7, 'Аскоріл експекторант сироп 100 мл', 1, 166, 'Україна'),
(8, 'Мукалтин 0,05 г таблетки №30', 1, 45, 'Україна'),
(9, 'Лазолван 15 мг сироп зі смаком лісових ягід 100 мл', 1, 80, 'Україна'),
(10, 'Гербіон сироп подорожника 150 мл', 1, 136, 'Україна'),
(11, 'Гербіон сироп плюща 150 мл', 1, 145, 'Росія'),
(12, 'Бинт еластичний сітчатий трубчастий 15 см х 3см (рука, нога)', 2, 6, 'Україна'),
(13, 'Бинт Алком еластичний медичний 5500 80 мм * 3 м', 2, 63, 'Україна'),
(14, 'Бинт Алком еластичний медичний середньої розтяжності 5500 80 мм*1,0 м', 2, 21, 'Україна'),
(15, 'Т-септ спрей 30 мл', 3, 144, 'Польща'),
(16, 'Гівалекс аерозоль 50 мл', 3, 160, 'Україна'),
(17, 'Гівалекс розчин 125 мл', 3, 161, 'Україна');

-- --------------------------------------------------------

--
-- Структура таблиці `goods_group`
--

CREATE TABLE `goods_group` (
  `id_group` int(9) NOT NULL,
  `name_group` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `goods_group`
--

INSERT INTO `goods_group` (`id_group`, `name_group`) VALUES
(0, 'таблетки'),
(1, 'сироп'),
(2, 'бинти'),
(3, 'спрей');

-- --------------------------------------------------------

--
-- Структура таблиці `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` int(9) NOT NULL,
  `id_goods` int(9) NOT NULL,
  `id_pharmacy` int(9) NOT NULL,
  `date_buy` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `id_goods`, `id_pharmacy`, `date_buy`) VALUES
(0, 0, 0, '2020-02-10'),
(1, 2, 4, '2018-03-11'),
(2, 2, 4, '2018-03-27'),
(3, 3, 2, '2018-07-10'),
(4, 2, 4, '2019-09-28'),
(5, 12, 4, '2018-09-05'),
(6, 2, 6, '2019-06-23'),
(7, 4, 4, '2019-06-23'),
(8, 6, 2, '2017-12-13'),
(9, 7, 2, '2020-03-25'),
(10, 6, 3, '2020-03-25'),
(11, 4, 7, '2018-05-03'),
(12, 3, 10, '2020-05-24'),
(13, 10, 11, '2020-05-24'),
(14, 11, 8, '2019-12-10');

-- --------------------------------------------------------

--
-- Структура таблиці `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id_pharmacy` int(9) NOT NULL,
  `adress` varchar(1024) NOT NULL,
  `image_pharmacy` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `pharmacy`
--

INSERT INTO `pharmacy` (`id_pharmacy`, `adress`, `image_pharmacy`) VALUES
(0, 'м. Київ – вул. Антоновича: 103–103А', 'C://Users/guwig/Desktop/image_2020-05-15_16-36-15.png'),
(1, 'просп. 40-річчя Жовтня: 89', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png'),
(2, 'вул. Велика Васильківська: 118', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/38814718-vector-isometric-hospital-building-icon.jpg'),
(3, 'просп. 40-річчя Жовтня: 89', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png'),
(4, 'вул. Ломоносова: 48А', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/38814718-vector-isometric-hospital-building-icon.jpg'),
(5, 'вул. Маршала Якубовського: 2А–3', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/38814735-vector-isometric-pharmacy-building-icon.jpg'),
(6, 'вул. Деміївська: 12', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/38814735-vector-isometric-pharmacy-building-icon.jpg'),
(7, 'вул. Володимирська: 61', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png'),
(8, 'просп. Науки: 42–58', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png'),
(9, 'вул. Ялтинська: 6–8/1', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png'),
(10, 'Кільцева Дорога: 3', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/44634571-vector-isometric-hospital-building-icon.jpg'),
(11, 'вул. Теремківська: 1–3', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/44634571-vector-isometric-hospital-building-icon.jpg'),
(12, 'просп. 40-річчя Жовтня: 29', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png'),
(13, 'вул. Андрія Бубнова: 3–13', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/38814718-vector-isometric-hospital-building-icon.jpg'),
(14, 'вул. Тарасівська 44', 'Y://ООП/Брусенцов БД/kursova_brusentsov/image/pharmacy.png');

-- --------------------------------------------------------

--
-- Структура таблиці `storage`
--

CREATE TABLE `storage` (
  `id_goods` int(9) NOT NULL,
  `date_delivery` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `storage`
--

INSERT INTO `storage` (`id_goods`, `date_delivery`) VALUES
(0, '2020-06-10'),
(1, '2020-02-04'),
(2, '2020-03-19'),
(3, '2020-06-24'),
(4, '2020-06-12'),
(5, '2020-06-07'),
(6, '2020-03-19'),
(7, '2020-01-15'),
(8, '2020-01-25'),
(9, '2020-04-08'),
(10, '2020-06-19'),
(11, '2020-06-01'),
(12, '2020-06-09'),
(13, '2020-04-09'),
(14, '2020-06-13'),
(15, '2020-01-08'),
(16, '2020-06-24'),
(17, '2019-12-13');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id_goods`);

--
-- Індекси таблиці `goods_group`
--
ALTER TABLE `goods_group`
  ADD PRIMARY KEY (`id_group`);

--
-- Індекси таблиці `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Індекси таблиці `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id_pharmacy`);

--
-- Індекси таблиці `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id_goods`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
