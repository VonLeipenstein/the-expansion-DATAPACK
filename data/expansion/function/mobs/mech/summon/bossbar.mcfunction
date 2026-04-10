# >>> generated function callers >>>
# Callers for expansion:mobs/mech/summon/bossbar
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/summon/setup (1 caller) [OK same-folder]
# <<< generated function callers <<<

bossbar add exp.mech "Haywired Mecha"
execute store result bossbar exp.mech value run scoreboard players get @s exp.health
execute store result bossbar exp.mech max run scoreboard players get @s exp.health
bossbar set exp.mech visible true
bossbar set exp.mech players @a[distance=..1000]