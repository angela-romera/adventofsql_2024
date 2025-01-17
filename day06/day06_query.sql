SELECT g.name, g.price, c.name
FROM gifts g
    LEFT JOIN children c ON g.child_id=c.child_id
WHERE g.price >= (SELECT AVG(price)
FROM gifts)
ORDER BY g.price ASC