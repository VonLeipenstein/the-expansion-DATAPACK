# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/health/die
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/health/hurt (1 caller) [OK same-folder]
# <<< generated function callers <<<

#execute as @p if entity @s[gamemode=!creative] run loot spawn ~ ~ ~ loot expansion:vehicles/mech

#execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/remove/this
#execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/remove/this

#playsound block.metal.break block @a ~ ~ ~

#execute on passengers run function expansion:utilities/erase_entity
#kill @s

#function expansion:vehicles/mech/summon/init
