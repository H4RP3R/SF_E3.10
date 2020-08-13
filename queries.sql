--Найти, сколько тегов проставлено к фильму с movieid 87232.

SELECT COUNT(tag)
FROM tags
WHERE movieid=87232;

--Найти максимальную длину тега для фильма 365.

SELECT MAX(char_length(tag))
FROM tags
WHERE movieid=365;

--Посчитать число уникальных пар зритель-тег за период с 2012-01-01 00:00:00 и 2012-01-02 00:00:00.

SELECT COUNT(*)
FROM
    (SELECT DISTINCT userid,
                     tag
     FROM
         (SELECT *
          FROM tags
          WHERE "timestamp" BETWEEN '2012-01-01 00:00:00'::TIMESTAMP AND '2012-01-02 00:00:00'::TIMESTAMP) AS temp2) AS temp1;

--Сколько раз ставили тег 'zombies'?

SELECT COUNT(*)
FROM tags
WHERE tag='zombies';

--Какая средняя длина тега пользователя 131228 с точностью до трех знаков после запятой
--(используйте точку в качестве разделитя в ответе, то есть задайте ответ в виде 178.274)?

SELECT ROUND(AVG(char_length(tag)), 3)
FROM tags
WHERE userid=131228;
