# phpMyAdmin MySQL-Dump
# version 2.3.2
# http://www.phpmyadmin.net/ (download page)
#
# Хост: localhost
# Время создания: Дек 30 2006 г., 00:12
# Версия сервера: 3.23.54
# Версия PHP: 4.3.0
# БД : `products`
# --------------------------------------------------------
# Структура таблицы `otdel`
#
CREATE TABLE otdel (
ido smallint(6) NOT NULL auto_increment,
otdel varchar(255) NOT NULL default '',
PRIMARY KEY (ido),
UNIQUE KEY otdel (otdel)
) ENGINE=MyISAM;
#
# Дамп данных таблицы `otdel`
#
INSERT INTO otdel (ido, otdel) VALUES (1, 'Мясной отдел');
INSERT INTO otdel (ido, otdel) VALUES (2, 'Рыбный отдел');
INSERT INTO otdel (ido, otdel) VALUES (3, 'Хлебо-булочные изделия');
INSERT INTO otdel (ido, otdel) VALUES (5, 'Молочный отдел');
INSERT INTO otdel (ido, otdel) VALUES (6, 'Кондитерский отдел');
INSERT INTO otdel (ido, otdel) VALUES (7, 'Бакалея');
INSERT INTO otdel (ido, otdel) VALUES (8, 'Напитки');
# --------------------------------------------------------
#
# Структура таблицы `post_pokup`
#
CREATE TABLE post_pokup (
id smallint(6) NOT NULL auto_increment,
ido smallint(6) NOT NULL default '0',
fio varchar(255) NOT NULL default '',
pasp varchar(255) NOT NULL default '',
skidka varchar(10) NOT NULL default '0',
PRIMARY KEY (id)
) ENGINE=MyISAM;
#
# Дамп данных таблицы `post_pokup`
#
INSERT INTO post_pokup (id, ido, fio, pasp, skidka) VALUES (1, 1, 'Иванов Иван Иванович', '1402 875336', '5');
INSERT INTO post_pokup (id, ido, fio, pasp, skidka) VALUES (2, 6, 'Иванов Иван Иванович', '1402 875336', '15');
# --------------------------------------------------------
#
# Структура таблицы `product`
#
CREATE TABLE product (
idp smallint(6) NOT NULL auto_increment,
idpr smallint(6) NOT NULL default '0',
nazv varchar(255) NOT NULL default '',
srok varchar(255) NOT NULL default '',
price varchar(255) NOT NULL default '',
PRIMARY KEY (idp)
) ENGINE=MyISAM;
#
# Дамп данных таблицы `product`
#
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (1, 1, 'Колбаса "Венская"', '3 недели', '130');
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (2, 2, 'Колбаса "Сервелад"', '4 недели', '325');
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (4, 3, 'Сахар', '12 месяцев', '25');
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (5, 4, 'Спагетти', '12 месяцев', '20');
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (8, 7, 'Хлеб белый', '2 дня', '9');
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (9, 7, 'Хлеб черный', '2 дня', '9');
INSERT INTO product (idp, idpr, nazv, srok, price) VALUES (10, 7, 'Батон', '2 дня', '10');
# --------------------------------------------------------
#
# Структура таблицы `proizv`
#
CREATE TABLE proizv (
idpr smallint(6) NOT NULL auto_increment,
ido smallint(6) NOT NULL default '0',
nazv varchar(255) NOT NULL default '',
sity varchar(255) NOT NULL default '',
PRIMARY KEY (idpr)
) ENGINE=MyISAM;
#
# Дамп данных таблицы `proizv`
#
INSERT INTO proizv (idpr, ido, nazv, sity) VALUES (1, 1, 'ОАО "Чернянский мясо-комбинат"', 'пос. Чернянка');
INSERT INTO proizv (idpr, ido, nazv, sity) VALUES (2, 1, 'ОАО "Алексевский мясо-комбинат"', 'г. Алексеевка');
INSERT INTO proizv (idpr, ido, nazv, sity) VALUES (3, 7, 'ЗАО "Чернянский сахарный завод"', 'пос. Чернянка');
INSERT INTO proizv (idpr, ido, nazv, sity) VALUES (4, 7, 'ЗАО "Шебекинская макаронная фабрика"', 'г. Шебекино');
INSERT INTO proizv (idpr, ido, nazv, sity) VALUES (7, 3, 'ОАО "Белгородский хлебо-завод"', 'г. Белгород');
# --------------------------------------------------------
#
# Структура таблицы `rabotn`
#
CREATE TABLE rabotn (
id smallint(6) NOT NULL auto_increment,
fio varchar(255) NOT NULL default '',
prof varchar(255) NOT NULL default '',
stag varchar(25) NOT NULL default '',
oklad mediumint(9) NOT NULL default '0',
PRIMARY KEY (id)
) ENGINE=MyISAM;
#
# Дамп данных таблицы `rabotn`
#
INSERT INTO rabotn (id, fio, prof, stag, oklad) VALUES (1, 'Петров Петр Петрович', 'Начальник охраны', '4 года', 5000);
INSERT INTO rabotn (id, fio, prof, stag, oklad) VALUES (2, 'Сидорова Мария Ивановна', 'Продавец', '5', 4500);
