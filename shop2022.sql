-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 13 2023 г., 23:25
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop2022`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Мужчины'),
(2, 'Женщины'),
(3, 'Дети'),
(4, 'Собаки'),
(5, 'Кошки');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `idProduct`, `url`) VALUES
(5, 7, 'C:\\xampp\\htdocs\\lesson27g5\\core/../files/1660153456__wb.jpg'),
(6, 9, 'C:\\xampp\\htdocs\\lesson27g5\\core/../files/1660156555__wb.jpg'),
(7, 9, 'C:\\xampp\\htdocs\\lesson27g5\\core/../files/1660156555__pictuer.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(5) DEFAULT NULL,
  `article` varchar(30) DEFAULT NULL,
  `category` int(2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `article`, `category`, `description`) VALUES
(2, 'кепка Puma', NULL, NULL, NULL, NULL),
(3, 'puma 2', 2000, '4', 2, 'кепка Puma'),
(4, 'puma 3', 2000, '2', 1, '2'),
(5, '221323', 3, '5', 1, '333'),
(6, '221323', 3, '5', 1, '333'),
(7, '221323', 3, '5', 1, '333'),
(8, '221323', 3, '5', 1, '333'),
(9, '221323', 1000, '5', 3, '333'),
(10, 'fffff', 2000, 'gjkjt4gh45', 3, 'ffffff'),
(11, 'куртка зимняя', 9000, '633446', 1, 'Утепленная зимняя меховая куртка.'),
(12, 'куртка зимняя', 9000, '633446', 1, 'Утепленная зимняя меховая куртка.'),
(13, 'куртка зимняя', 12000, '45654457', 2, 'Утепленная зимняя меховая куртка.'),
(14, 'куртка зимняя детская', 8000, '343464367', 3, 'Теплая зимняя куртка для детей.'),
(15, 'Сумка мужская', 3000, '4633465364', 1, 'Мужская сумка через плечо из натуральной кожи.'),
(16, 'Сумка женская', 6500, '634563', 2, 'Стильная и качественная женская сумка.'),
(17, 'Детский рюкзак', 1500, '65748634', 3, 'Удобный и доступный по цене школьный рюкзак, который отлично подойдет под школьные принадлежности.'),
(18, 'Перчатки мужские', 900, '289455', 1, 'Зимние перчатки для мужчин.'),
(19, 'Перчатки женские', 2000, '40234475', 2, 'Зимние женские перчатки со стильным дизайном'),
(20, 'Перчатки детские', 700, '848696', 3, 'Теплые и износоустойчивые перчатки для детей.');

-- --------------------------------------------------------

--
-- Структура таблицы `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `size`
--

INSERT INTO `size` (`id`, `name`) VALUES
(1, '2XL'),
(2, 'XL'),
(3, 'L'),
(4, 'M'),
(5, 'S');

-- --------------------------------------------------------

--
-- Структура таблицы `total`
--

CREATE TABLE `total` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idSize` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `total`
--

INSERT INTO `total` (`id`, `idProduct`, `idSize`, `count`) VALUES
(1, 10, 1, 43),
(2, 9, 1, 43);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_test` (`idProduct`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `total`
--
ALTER TABLE `total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_images` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_test` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
