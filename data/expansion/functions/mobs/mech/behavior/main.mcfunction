function expansion:utilities/wasd_detection/reset

execute at @s facing entity @p eyes positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ 0

execute on vehicle on vehicle run function expansion:mobs/mech/behavior/on_mech