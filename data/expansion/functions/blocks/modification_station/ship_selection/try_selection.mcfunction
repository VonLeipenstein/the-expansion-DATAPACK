execute if entity @s[tag=!exp.mod_ship,tag=!exp.player_inside] run function expansion:blocks/modification_station/ship_selection/select_ship

#execute unless entity @s[tag=exp.mod_ship] run function expansion:blocks/modification_station/ship_selection/select_ship
