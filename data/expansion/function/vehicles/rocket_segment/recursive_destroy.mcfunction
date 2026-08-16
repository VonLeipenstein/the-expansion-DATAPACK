# recursively break mounted parts
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] at @s run function expansion:vehicles/rocket_segment/recursive_destroy

execute on vehicle run tag @s add exp.signal_pad

# destroy this part
function expansion:vehicles/rocket_segment/destroy

execute as @n[tag=exp.signal_pad,distance=..10] run function expansion:vehicles/rocket_segment/reload_launchpad