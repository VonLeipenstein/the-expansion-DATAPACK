scoreboard players operation #search exp.unique_id = @s exp.unique_id
kill @e[type=item_display,tag=exp.oxygen_marker,predicate=expansion:compare_score/unique_id,distance=..20]
scoreboard players reset #search exp.unique_id