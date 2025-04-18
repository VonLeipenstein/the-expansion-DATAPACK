# make the root rotate slowly towards the players rotation.
execute positioned ^ ^ ^4 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

# store the players rotation
execute on passengers if entity @s[type=marker,tag=exp.player_rotation] run rotate @s ~ ~

# store the ships rotation
execute rotated as @s on passengers if entity @s[type=marker,tag=exp.ship_rotation] run rotate @s ~ ~