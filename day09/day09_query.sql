SELECT reindeer_name,
       ROUND(AVG(speed_record), 2) AS top_speed
FROM training_sessions ts
LEFT JOIN reindeers r ON ts.reindeer_id=r.reindeer_id
GROUP BY reindeer_name,
         exercise_name
ORDER BY top_speed DESC
LIMIT 3;