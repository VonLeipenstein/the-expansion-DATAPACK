execute if entity @p[nbt={Inventory:[{id:"minecraft:potion",tag:{lacrymae:1b}}]}] run tag @p add exp.has_lacrymae
execute if entity @p[tag=exp.has_lacrymae] if score @s exp.fuel_level < @s exp.fuel_max run item replace entity @p weapon.mainhand with minecraft:air
execute if entity @p[tag=exp.has_lacrymae] run scoreboard players set @s exp.fuel_level 256
execute if entity @p[tag=exp.has_lacrymae] run title @p title {"text":"Fuel level at 100%","color":"green","bold":true}

title @p subtitle {"text":" "}
execute unless entity @p[tag=exp.has_lacrymae] run title @p title {"text":"Get more Lacrymae","color":"red","bold":true}

tag @p remove exp.has_lacrymae