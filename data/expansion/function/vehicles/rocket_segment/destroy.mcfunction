# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/destroy
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/rocket_segment/click_detection/leftclick (1 caller) [WARN side/down 1]
# - function expansion:vehicles/rocket_segment/destroy (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on vehicle run tag @s add exp.reload_signal

# recursively break mounted parts
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] at @s run function expansion:vehicles/rocket_segment/destroy

# drop this segment
execute on passengers if entity @s[tag=exp.segment_display] run loot spawn ~ ~ ~ loot expansion:slot/contents
execute as @e[type=item,nbt={Age:0s}] at @s run data merge entity @s {PickupDelay:0}

# run segment specific destroys
execute if entity @s[tag=exp.fuel_segment] run function expansion:vehicles/rocket_segment/fuel/destroy

# destroy the rocket segment stack
execute on passengers if entity @s[tag=exp.segment_display] run kill @s
execute on passengers if entity @s[tag=exp.rocketsegment_rcdet] run kill @s
execute on passengers if entity @s[tag=exp.fuel_storage] run kill @s
kill @s

execute as @n[tag=exp.reload_signal,distance=..10] run function expansion:vehicles/rocket_segment/reload_launchpad