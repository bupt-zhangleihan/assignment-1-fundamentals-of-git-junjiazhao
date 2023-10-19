-- SQLite
-- 返回Cities表中所有城市名称
SELECT city FROM Cities;

-- 返回Cities表中的所有城市爱尔兰
SELECT * FROM Cities WHERE country = '爱尔兰';

-- 返回所有机场名称及其城市和国家
SELECT name, city, country FROM Airports
INNER JOIN Cities ON Airports.city_id = Cities.id;

-- 返回伦敦, 英国的所有机场
SELECT * FROM Airports
INNER JOIN Cities ON Airports.city_id = Cities.id
WHERE Cities.city = '伦敦' AND Cities.country = '英国';