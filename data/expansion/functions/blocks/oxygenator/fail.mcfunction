# finish the scan by killing all the armor stands and resetting the block counter
kill @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=..20]
scoreboard players set @s exp.counter_1 0
scoreboard players set @s exp.counter_2 0
item replace block ~ ~ ~ container.1 with minecraft:air

# remove players oxygen supply
execute if entity @s[tag=!exp.pressurized,tag=!exp.leaves_depleted] run title @a[tag=!exp.has_oxygen,distance=..20] subtitle {"translate":"exp_screentxt_oxygen_basetoobig"}
execute if entity @s[tag=!exp.pressurized,tag=!exp.leaves_depleted] run title @a[tag=!exp.has_oxygen,distance=..20] title {"translate":"exp_screentxt_oxygen_pressurefail"}

execute if entity @s[tag=exp.pressurized,tag=!exp.leaves_depleted] run title @a[tag=exp.has_oxygen,distance=..20] subtitle {"translate":"exp_screentxt_oxygen_nobreathe"}
execute if entity @s[tag=exp.pressurized,tag=!exp.leaves_depleted] run title @a[tag=exp.has_oxygen,distance=..20] title {"translate":"exp_screentxt_oxygen_pressurestop"}

execute if entity @s[tag=exp.leaves_depleted] run title @a[tag=exp.has_oxygen,distance=..20] subtitle {"translate":"exp_screentxt_oxygen_noleaves"}
execute if entity @s[tag=exp.leaves_depleted] run title @a[tag=exp.has_oxygen,distance=..20] title {"translate":"exp_screentxt_oxygen_pressurefail"}

tag @e[tag=exp.has_oxygen,distance=..20] remove exp.has_oxygen
tag @e[tag=exp.inside_check,distance=..20] remove exp.inside_check

data modify entity @s ArmorItems[3].tag.CustomModelData set value 1012309

scoreboard players reset @s exp.timer_1

# remove the tag that ensures immediate access to oxygen, the base will have to be entirely reexp.pressurized.
tag @s remove exp.pressurized

# stop the scan
tag @s remove exp.scanning