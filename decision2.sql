SELECT * INTO Агент1 FROM Агент where 0 = 1
INSERT INTO Агент_2 SELECT *FROM Агент WHERE 1 < (SELECT COUNT (*) FROM Заказ WHERE Заказ.ID_Агент = Агент.ID_Агент);

DELETE FROM Заказчик1 WHERE ID_Заказчик = ANY (SELECT ID_Заказчик FROM Заказ WHERE MONTH (Дата) <> 10)

UPDATE Агент_2 SET Комиссионные = Комиссионные + (Комиссионные * .1) WHERE 350000 > (SELECT SUM (Сумма) FROM Заказ WHERE MONTH (Дата) between 9 and 10); 

UPDATE Агент_2 SET Комиссионные = Комиссионные + (Комиссионные * .15) WHERE 350000 < (SELECT SUM (Сумма) FROM Заказ WHERE MONTH (Дата) between 9 and 10); 

UPDATE Агент_2 SET Комиссионные = Комиссионные + 5000 where exists (SELECT ID_Заказчик FROM Заказчик WHERE Рейтинг > 70 and Агент_2.ID_Агент = Заказчик.ID_Агент );








