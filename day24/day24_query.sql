SELECT song_title, COUNT(song_title) AS total_plays, SUM(CASE WHEN song_duration=duration THEN 0 ELSE 1 END) AS total_skip
FROM user_plays up
    LEFT JOIN songs s ON up.song_id=s.song_id
GROUP BY song_title
ORDER BY total_plays DESC, total_skip ASC