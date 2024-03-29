DROP TABLE lab_table;

CREATE TABLE lab_table (
    number INT NOT NULL,
    code INT NOT NULL PRIMARY KEY,
    novelty BOOLEAN,
    name VARCHAR(100) NOT NULL,
    prise MONEY DEFAULT '0',
    publisher VARCHAR(30) NOT NULL,
    pages INT NOT NULL,
    format VARCHAR(30) DEFAULT 'Невідомо',
    date DATE DEFAULT NULL,
    circulation INT CHECK (circulation<=5000) NOT NULL,
    topic VARCHAR(100) NOT NULL,
    category VARCHAR(30) NOT NULL
);

CREATE INDEX index_a ON lab_table (number);

INSERT INTO lab_table (number, code, novelty, name, prise, publisher, pages, format, date, circulation, topic, category)  
VALUES (2, 5110, 'NO', 'Апаратні засоби мультимедіа.Відеосистема PC', 15.51, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Підручники'),
(8, 4985, 'NO', 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид', 18.9, 'Вiльямс', 288, '70х100/16', '2000-07-07', 5000, 'Використання ПК в цілому', 'Підручники'),
(9, 5141, 'NO', 'Структури даних та алгоритми', 37.8, 'Вільямс', 384, '70х100/16', '2000-09-29', 5000, 'Використання ПК в цілому', 'Підручники'),
(20, 5127, 'NO', 'Автоматизація інженерно-графічних робіт', 11.58, 'Видавнича група BHV ', 256, '70х100/16', '2000-06-15', 5000, 'Використання ПК в цілому', 'Підручники'),
(31, 5113, 'NO', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(46, 5199, 'NO', 'Залізо IBM 2001 ', 30.07, 'МикроАрт', 368, '70х100/16', '2000-02-12', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(50, 3851, 'NO', 'Захист інформації та безпека компютерних систем', 26, 'DiaSoft', 480, '84х108/16', '1900-01-01', 5000, 'Використання ПК в цілому', 'Захист і безпека ПК'),
(58, 3932, 'NO', 'Як перетворити персональний компютер на вимірювальний комплексс', 7.65, 'ДМК', 144, '60х88/16', '2000-06-09', 5000, 'Використання ПК в цілому', 'Інші книги'),
(59, 4713, 'NO', 'Plug-ins. Додаткові програми для музичних програм', 11.41, 'ДМК', 144, '70х100/16', '2000-02-22', 5000, 'Використання ПК в цілому', 'Інші книги'),
(175, 5217, 'NO', 'Windows МЕ. Найновіші версії програм', 16.57, 'Триумф', 320, '70х100/16', '2000-08-25', 5000, 'Операційні системи', 'Windows 2000'),
(176, 4829, 'NO', 'Windows 2000 Professional крок за кроком з CD', 27.25, 'Эком', 320, '70х100/16', '2000-04-28', 5000, 'Операційні системи', 'Windows 2000'),
(188, 5170, 'NO', 'Linux версії', 24.43, 'ДМК', 346, '70х100/16', '2000-09-29', 5000, 'Операційні системи', 'Linux'),
(191, 860, 'NO', 'Операційна система UNIX', 3.5, 'Видавнича група BHV', 395, '84х10016', '1997-05-05', 5000, 'Операційні системи', 'Unix'),
(203, 44, 'NO', 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 'DiaSoft', 352, '60х84/16', '1996-03-20', 5000, 'Операційні системи', 'Інші операційні системи'),
(206, 5176, 'NO', 'Windows Ме. Супутник користувача', 12.79, 'Видавнича група BHV', 306, '', '2000-10-10', 5000, 'Операційні системи', 'Інші операційні системи'),
(209, 5462, 'NO', 'Мова програмування С++. Лекції та вправи ', 29, 'DiaSoft', 656, '84х108/16', '2000-12-12', 5000, 'Програмування', 'C&C++'),
(210, 4982, 'NO', 'Мова програмування С. Лекції та вправи', 29, 'DiaSoft', 432, '84х108/16', '2000-12-07', 5000, 'Програмування', 'C&C++'),
(220, 4687, 'NO', 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів ', 17.6, 'ДМК', 240, '70х100/16', '2000-03-02', 5000, 'Програмування', 'C&C++'),
(222, 235, 'NO', 'Інформаційні системи і структури даних', null, 'Києво-Могилянська академія', 288, '60х90/16',NULL, 400, 'Використання ПК в цілому', 'Інші книги'),
(225, 8746, 'YES', 'Бази даних в інформаційних системах', null, 'Університет "Україна"', 418, '60х84/16', '2018-07-25', 100, 'Програмування', 'SQL'),
(226, 2154, 'YES', 'Сервер на основі операційної системи FreeBSD 6.1', 0, 'Університет "Україна"', 216, '60х84/16', '2015-11-03', 500, 'Програмування ', 'Інші операційні системи'),
(245, 2662, 'NO', 'Організація баз даних та знань', 0, 'Вінниця: ВДТУ', 208, '60х90/16', '2001-10-10', 1000, 'Програмування', ' SQL'),
(247, 5641, 'YES', 'Організація баз даних та знань', 0, 'Видавнича група BHV', 384, '70х100/16', '2021-12-15', 5000, 'Програмування ', 'SQL');
 
ALTER TABLE lab_table
ADD COLUMN Author VARCHAR(15);

ALTER TABLE lab_table
ALTER COLUMN Author TYPE VARCHAR(20);

ALTER TABLE lab_table
DROP COLUMN Author;

CREATE UNIQUE INDEX index_b ON lab_table (number);
SELECT * FROM lab_table ORDER BY number ASC;

DROP INDEX index_b;