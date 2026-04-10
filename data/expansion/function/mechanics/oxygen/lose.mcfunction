# >>> generated function callers >>>
# Callers for expansion:mechanics/oxygen/lose
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/oxygen/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Players consume a base of 20 oxygen every second = 1 per tick
scoreboard players operation #temp exp.oxygen_lvl = #player.consumption exp.oxygen_lvl

# Consome more oxygen when running, and less when sneaking
execute if predicate expansion:utility/sprint store result score #temp exp.oxygen_lvl run scoreboard players operation #temp exp.oxygen_lvl *= #2 exp.const
execute if predicate expansion:utility/sneak store result score #temp exp.oxygen_lvl run scoreboard players operation #temp exp.oxygen_lvl /= #2 exp.const

# Subtract the calculated oxygen loss from the current lvl
scoreboard players operation @s exp.oxygen_lvl -= #temp exp.oxygen_lvl

# Reset scores
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #out exp.math
scoreboard players reset #max exp.math
scoreboard players reset #x exp.math