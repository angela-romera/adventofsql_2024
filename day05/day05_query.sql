SELECT production_date,
    toys_produced,
    LAG(toys_produced) OVER (ORDER BY production_date) AS previous_day_production,
    (toys_produced - LAG(toys_produced) OVER (ORDER BY production_date)) AS production_change,
    ROUND(
        (toys_produced - LAG(toys_produced) OVER (ORDER BY production_date)) 
        / CAST(LAG(toys_produced) OVER (ORDER BY production_date) AS FLOAT) * 100, 
    2) AS production_change_percentage
FROM toy_production
ORDER BY production_change_percentage DESC