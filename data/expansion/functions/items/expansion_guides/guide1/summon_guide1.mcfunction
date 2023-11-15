function expansion:items/expansion_guides/guide1/spawn_guide1

scoreboard players reset @s exp.timer_1

item replace entity @s weapon.offhand with minecraft:air

tellraw @s [{"translate":"exp_moonstudy_6"}]
