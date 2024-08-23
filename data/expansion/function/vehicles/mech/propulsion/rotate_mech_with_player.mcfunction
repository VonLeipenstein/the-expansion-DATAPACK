# walking forwards/backwards
execute unless score .a exp.wasd matches 1 unless score .d exp.wasd matches 1 positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0

# walking sideways
execute if score .a exp.wasd matches 1 if score .s exp.wasd matches 1 run function expansion:vehicles/mech/propulsion/turn_left
execute if score .d exp.wasd matches 1 unless score .s exp.wasd matches 1 run function expansion:vehicles/mech/propulsion/turn_left
execute if score .d exp.wasd matches 1 if score .s exp.wasd matches 1 run function expansion:vehicles/mech/propulsion/turn_right
execute if score .a exp.wasd matches 1 unless score .s exp.wasd matches 1 run function expansion:vehicles/mech/propulsion/turn_right