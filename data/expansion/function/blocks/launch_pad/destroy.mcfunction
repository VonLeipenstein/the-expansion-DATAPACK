# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute at @p[tag=exp.clicked] run loot spawn ~ ~ ~ loot expansion:slot/contents

# kill the entity stack
execute on passengers if entity @s[type=interaction] run kill @s
execute on passengers if entity @s[type=snowball] on origin on passengers run kill @s
execute on passengers if entity @s[type=snowball] on origin run kill @s
execute on passengers if entity @s[type=snowball] run kill @s
execute on passengers if entity @s[type=marker] run kill @s
execute on passengers if entity @s[type=text_display] run kill @s
kill @s

# remove the forceload of this chunk
forceload remove ~ ~

# only players can remove rocket pads so this chunk will be loaded
# re evaluate the forceload of all other launch pads nearby to make sure their chunk stays loaded
execute as @e[type=item_display,tag=exp.launch_pad,distance=..32] at @s run forceload add ~ ~