advancement revoke @s only expansion:utility/enhancer_rc
advancement revoke @s only expansion:utility/enhancer_lc

tag @s add exp.clicked

execute if predicate expansion:utility/sneak if predicate expansion:nbt_checks/armor/space_equipment/equipment run scoreboard players set #temp exp.bool 1

execute if items entity @s weapon.mainhand #expansion:dyes as @e[type=minecraft:item_display,tag=exp.enhancer_display,limit=1,sort=nearest] if items entity @s container.0 * run function expansion:blocks/enhancer/upgrade/apply_color

execute unless score #temp exp.delay matches 1 as @e[type=minecraft:item_display,tag=exp.enhancer_display,limit=1,sort=nearest] at @s run function expansion:blocks/enhancer/interaction/swap_helmet

scoreboard players reset #temp exp.bool

tag @s remove exp.clicked