USE bookshop;

INSERT INTO authors(name) VALUES
('老舍'), ('钱钟书'), ('莫言'), ('三毛');

INSERT INTO books(title,author_id,price,stock,published_at) VALUES
('骆驼祥子', (SELECT id FROM authors WHERE name='老舍'), 22.00, 15, '1936-01-01'),
('四世同堂', (SELECT id FROM authors WHERE name='老舍'), 45.00, 6, '1946-01-01'),
('围城', (SELECT id FROM authors WHERE name='钱钟书'), 28.00, 9, '1947-01-01'),
('写在人生边上', (SELECT id FROM authors WHERE name='钱钟书'), 19.50, 12, '1941-01-01'),
("红高粱家族", (SELECT id FROM authors WHERE name='莫言'), 35.00, 0, '1987-01-01'),
('蛙', (SELECT id FROM authors WHERE name='莫言'), 32.00, 8, '2009-01-01'),
('撒哈拉的故事', (SELECT id FROM authors WHERE name='三毛'), 26.00, 20, '1976-01-01'),
('梦里花落知多少', (SELECT id FROM authors WHERE name='三毛'), 24.00, 3, '1981-01-01');