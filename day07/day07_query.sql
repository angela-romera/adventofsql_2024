SELECT
    (SELECT elf_id
     FROM public.workshop_elves w2
     WHERE w2.primary_skill = w1.primary_skill
     ORDER BY years_experience DESC
     LIMIT 1) AS elf_1_id,

    (SELECT elf_id
     FROM public.workshop_elves w3
     WHERE w3.primary_skill = w1.primary_skill
     ORDER BY years_experience ASC
     LIMIT 1) AS elf_2_id,
       primary_skill AS shared_skill
FROM public.workshop_elves w1
GROUP BY primary_skill
ORDER BY primary_skill ASC;