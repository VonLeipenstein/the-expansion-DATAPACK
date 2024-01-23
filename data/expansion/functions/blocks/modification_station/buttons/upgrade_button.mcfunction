# initiate adding upgrades to the spaceship
execute unless score @s[tag=exp.modding_ship] exp.counter_1 matches ..4 run function expansion:blocks/modification_station/spaceship/apply_mods/initiate

# initiate modding the mech
execute unless score @s[tag=exp.modding_mech] exp.counter_1 matches ..4 run function expansion:blocks/modification_station/mech/apply_mods/initiate
