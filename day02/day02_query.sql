SELECT id, CHAR(value) AS solution
    FROM letters_a
    WHERE (
    value BETWEEN ASCII('a') AND ASCII('z') OR
        value BETWEEN ASCII('A') AND ASCII('Z') OR
        value IN (
        ASCII('!'),
        ASCII('"'),
        ASCII(''''),  
        ASCII('('),
        ASCII(')'),
        ASCII(','),
        ASCII('-'),
        ASCII('.'),
        ASCII(':'),
        ASCII(';'),
        ASCII('?'),
        ASCII(' ')
    )
)
UNION
    SELECT id, CHAR(value) AS solution
    FROM letters_b
    WHERE (
    value BETWEEN ASCII('a') AND ASCII('z') OR
        value BETWEEN ASCII('A') AND ASCII('Z') OR
        value IN (
        ASCII('!'),
        ASCII('"'),
        ASCII(''''),  
        ASCII('('),
        ASCII(')'),
        ASCII(','),
        ASCII('-'),
        ASCII('.'),
        ASCII(':'),
        ASCII(';'),
        ASCII('?'),
        ASCII(' ')
    )
)
order by id

