# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/rotation/player
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/rotation/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

rotate @s ~ ~

# limit player rotation so the ship doesn't get too vertical, also prevents gimbal lock
execute if entity @s[x_rotation=-90..-65] run rotate @s ~ -64.9
execute if entity @s[x_rotation=35..90] run rotate @s ~ 34.9
