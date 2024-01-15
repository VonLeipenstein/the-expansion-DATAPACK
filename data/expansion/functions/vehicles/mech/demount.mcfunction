execute as @p if entity @s[gamemode=!creative] run loot give @s loot expansion:vehicles/mech

execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/remove/this
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/remove/this

playsound block.metal.break block @a ~ ~ ~

execute on passengers run function expansion:utilities/erase_entity
kill @s


