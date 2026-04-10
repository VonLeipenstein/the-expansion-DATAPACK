# >>> generated function callers >>>
# Callers for expansion:mobs/mech/health/die/finish
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/health/die/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.mech.bot_link] on origin run kill @s

execute on passengers if entity @s[tag=exp.mech_seat] on passengers run tag @s add exp.defeated_mech

execute on passengers if entity @s[tag=exp.mech_seat] on passengers run function expansion:utilities/erase_entity

particle explosion_emitter