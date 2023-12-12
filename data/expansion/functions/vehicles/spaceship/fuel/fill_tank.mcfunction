execute on passengers on target if entity @s[nbt={Inventory:[{id:"minecraft:potion",tag:{lacrymae:1b}}]}] run tag @s add exp.has_lacrymae

execute if entity @p[tag=exp.has_lacrymae] if score @s exp.fuel_level < @s exp.fuel_max run item replace entity @p[tag=exp.has_lacrymae] weapon.mainhand with minecraft:air
execute if entity @p[tag=exp.has_lacrymae] run scoreboard players set @s exp.fuel_level 256
execute as @p[tag=exp.has_lacrymae] run title @s title {"translate":"exp_screentxt_fuelsuccess"}

title @p[tag=!exp.has_lacrymae] subtitle {"text":" "}
execute as @p[tag=!exp.has_lacrymae] run title @s title {"translate":"exp_screentxt_rocket_fuelfail3"}

execute on passengers run data remove entity @s[type=minecraft:interaction] interaction

function expansion:utilities/fuel_percentage

tag @p[tag=exp.has_lacrymae] remove exp.has_lacrymae