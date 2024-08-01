USE project;
DESCRIBE card_holder;
SELECT* FROM card_holder;
DESCRIBE credit_card;
SELECT* FROM credit_card;
SELECT * FROM merchant;
SELECT * FROM merchant_category;
SELECT * FROM transaction;
SELECT id,name FROM merchant;
-- to find out the merchant having the most and least sales in terms of prices
SELECT SUM(amount),id_merchant FROM transaction GROUP BY id_merchant ;
-- order by
SELECT SUM(amount) AS money,id_merchant FROM transaction GROUP BY id_merchant ORDER BY money;
-- merchant id =18
SELECT name,id_merchant_category FROM merchant WHERE id=18 ;
-- ROMERO JORDAN , ID=18, FOOD TRUCK

-- find out the most successful business 
SELECT m.id_merchant_category,t.amount FROM merchant m JOIN transaction t ON m.id=t.id_merchant;
SELECT m.id_merchant_category,SUM(t.amount) AS total_amount FROM merchant m JOIN transaction t ON m.id=t.id_merchant GROUP BY m.id_merchant_category;
-- category 4 or pub


-- WHICH DATE and time THE EXPENDITURE WAS HIGHEST
SELECT SUM(amount) AS money,date  FROM transaction GROUP BY date ORDER BY money;
-- 2018-12-28-17:45:51

-- FINDING CARDHOLDERS WHO EXPENDED THE MOST AND THE LEAST.
SELECT c.cardholder_id, SUM(t.amount) AS paise FROM transaction t JOIN credit_card c ON t.card = c.card GROUP BY c.cardholder_id ORDER BY paise;
-- 16 most and 22 least

-- FINDING CARDHOLDERS WHO HAS MOST CREDIT CARDS.
SELECT COUNT(card), cardholder_id FROM credit_card GROUP BY cardholder_id ORDER BY COUNT(card);



