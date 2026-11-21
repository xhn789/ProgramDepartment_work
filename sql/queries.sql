USE bookshop;

-- Q1
SELECT title, stock 
FROM books
WHERE stock = 0;
-- 预期结果
-- title     stock
-- 红高粱家族  0

-- Q2
SELECT title,price
FROM books
ORDER BY price DESC
LIMIT 3;
-- 预期结果
-- title     price
-- 四世同堂    45.00
-- 红高粱家族  35.00
-- 蛙         32.00        

-- Q3
SELECT title, price
FROM books
WHERE price BETWEEN 20 AND 40
ORDER BY price ASC;
-- 预期结果(太长了，打书名)
-- 骆驼祥子 梦里花落知多少 撒哈拉的故事 围城 蛙 红高粱家族

-- Q4
SELECT b.title, a.name AS author, price
FROM books AS b
JOIN authors AS a ON b.author_id = a.id
ORDER BY b.id ASC;
-- 预期结果(太长了，不打价格)
-- 骆驼祥子 老舍
-- 四世同堂 老舍
-- 围城 钱钟书
-- 写在人生边上 钱钟书
-- 红高粱家族 莫言
-- 蛙 莫言
-- 撒哈拉的故事 三毛
-- 梦里花落知多少 三毛

-- Q5
UPDATE books SET stock = 5
WHERE id = 6;
SELECT title, stock 
FROM books
WHERE id = 6;
UPDATE books SET stock = stock-1
WHERE id = 6 AND stock > 0;
SELECT title, stock 
FROM books
WHERE id=6;
-- 预期结果
-- 蛙 5
-- 蛙 4

-- Q6
INSERT INTO books(title, author_id) VALUES
('删除演示所用临时书',(SELECT id FROM authors WHERE name = '老舍'));
SELECT title
FROM books
 WHERE title = '删除演示所用临时书';
DELETE FROM books
WHERE title = '删除演示所用临时书';
SELECT title
FROM books;
-- 预期结果
-- 删除演示所用临时书
-- 除了删除演示所用临时书的其他书
