# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/ready
# Total callers: 0
# None found
# <<< generated function callers <<<

# choose a target and cast a zap to it
execute if function expansion:blocks/tesla_coil/coil/choose_target on passengers if entity @s[type=snowball] run function expansion:blocks/tesla_coil/coil/add_target

# apply the cooldown if the 
execute if score #temp exp.bool matches 1 run scoreboard players set @s exp.cooldown 20

# idle particle
particle minecraft:electric_spark ~ ~1.9 ~ 0.3 0.1 0.3 0 1 force