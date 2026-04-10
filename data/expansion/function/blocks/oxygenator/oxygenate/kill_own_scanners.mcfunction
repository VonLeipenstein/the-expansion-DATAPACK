# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/kill_own_scanners
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/fails/main (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

scoreboard players operation #search exp.unique_id = @s exp.unique_id
kill @e[type=item_display,tag=exp.oxygen_marker,predicate=expansion:compare_score/unique_id,distance=..20]
scoreboard players reset #search exp.unique_id