loot spawn ~ ~ ~ loot expansion:items/books/guide1

scoreboard players enable @s give_guide1
scoreboard players set @s give_guide1 0

playsound minecraft:entity.villager.work_librarian voice @p

scoreboard players reset @s exp.timer_1

item replace entity @s weapon.offhand with minecraft:air

tellraw @s [{"translate":"exp_moonstudy_6"}]
