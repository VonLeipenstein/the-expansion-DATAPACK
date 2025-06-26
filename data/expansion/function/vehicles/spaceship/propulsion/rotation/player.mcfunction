rotate @s ~ ~

# limit player rotation so the ship doesn't get too vertical, also prevents gimbal lock
execute if entity @s[x_rotation=-90..-65] run rotate @s ~ -64.9
execute if entity @s[x_rotation=35..90] run rotate @s ~ 34.9
