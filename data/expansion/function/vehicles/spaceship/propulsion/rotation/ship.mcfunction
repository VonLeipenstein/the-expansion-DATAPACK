# make the root rotate slowly towards the registered players rotation.
execute positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

# Store the rotation of the root in another marker
execute rotated as @s on passengers if entity @s[tag=exp.ship_rotation] run rotate @s ~ ~