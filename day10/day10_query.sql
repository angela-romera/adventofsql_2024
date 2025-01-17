SELECT date, drink_name, SUM(quantity) AS sum_quantity
FROM Drinks
WHERE drink_name IN ('Hot Cocoa', 'Peppermint Schnapps', 'Eggnog')
GROUP BY date, drink_name
HAVING 
    (drink_name = 'Hot Cocoa' AND SUM(quantity) = 38) OR
    (drink_name = 'Peppermint Schnapps' AND SUM(quantity) = 298) OR
    (drink_name = 'Eggnog' AND SUM(quantity) = 198)
ORDER BY date ASC;
