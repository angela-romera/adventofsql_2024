USE santa_workshop

SELECT TOP(5)
    c.name  + ',' +
    JSON_VALUE(w.wishes, '$.first_choice') + ',' +
    JSON_VALUE(w.wishes, '$.second_choice') + ',' +
    JSON_VALUE(w.wishes, '$.colors[0]') + ',' +
    CAST((SELECT COUNT(*)
    FROM OPENJSON(JSON_QUERY(w.wishes, '$.colors'))) AS VARCHAR) + ',' +
    CASE 
        WHEN t.difficulty_to_make = 1 THEN 'Simple Gift'
        WHEN t.difficulty_to_make = 2 THEN 'Moderate Gift'
        WHEN t.difficulty_to_make >= 3 THEN 'Complex Gift'
    END + ',' +
    CASE 
        WHEN t.category = 'outdoor' THEN 'Outside Workshop'
        WHEN t.category = 'educational' THEN 'Learning Workshop'
        ELSE 'General Workshop'
    END

FROM
    children c
    JOIN
    wish_lists w
    ON 
    c.child_id = w.child_id
    JOIN
    toy_catalogue t
    ON 
    JSON_VALUE(w.wishes, '$.first_choice') = t.toy_name

ORDER BY name ASC
