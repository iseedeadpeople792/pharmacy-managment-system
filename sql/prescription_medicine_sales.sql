
-- Microsoft Access SQL
-- Purpose: retrieve sales line items for prescription medicines.
-- This query does not validate prescription validity.

SELECT
    Продажи.Код_продажи,
    [Лекарственные препараты].Название,
    Чек.Количество,
    Чек.Сумма,
    Продажи.Дата_продажи
FROM
    (Продажи
    INNER JOIN Чек
        ON Продажи.Код_продажи = Чек.Код_продажи)
    INNER JOIN [Лекарственные препараты]
        ON Чек.Код_препарата =
           [Лекарственные препараты].Код_препарата
WHERE
    [Лекарственные препараты].Рецептурный = True
ORDER BY
    Продажи.Дата_продажи DESC;
