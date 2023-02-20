# give sentient entities a tag so they can breathe. this is also done in the pressurize function but here it is done to reduce the chance that players accidentally avoid the wave
execute if entity @e[type=armor_stand,tag=exp.oxygenator,tag=exp.pressurized,limit=1,sort=nearest] at @s as @e[type=#expansion:sentient,tag=!exp.has_oxygen,distance=..1] run function expansion:blocks/oxygenator/give_oxygen
execute at @s run tag @e[type=#expansion:sentient,tag=!exp.inside_check,distance=..1] add exp.inside_check

execute at @s unless entity @e[type=marker,tag=exp.oxygen_marker,tag=!exp.scanned,distance=..1.1,limit=1,sort=nearest] run kill @s

