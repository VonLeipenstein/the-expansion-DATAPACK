function expansion:blocks/planetarium/setup
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ spawner{MaxNearbyEntities:0,RequiredPlayerRange:0} replace
playsound minecraft:block.metal.place block @s ~ ~ ~