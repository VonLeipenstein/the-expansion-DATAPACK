# >>> generated function callers >>>
# Callers for expansion:mechanics/events/moon_study/summon
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/events/moon_study/calculation (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot spawn ~ ~ ~ loot expansion:items/guidebook

scoreboard players enable @s give_guide1
scoreboard players set @s give_guide1 0

playsound minecraft:entity.villager.work_librarian voice @p

scoreboard players reset @s exp.timer_1

item replace entity @s weapon.offhand with minecraft:air

tellraw @s [{translate:"exp_moonstudy_6"}]