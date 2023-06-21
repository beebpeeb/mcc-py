LOAD fts;
SELECT fts_main_shakespeare.match_bm25(line_id, 'romeo') AS score,
       line_id, play_name, speaker, text_entry
FROM shakespeare
WHERE score IS NOT NULL
ORDER BY score DESC;
