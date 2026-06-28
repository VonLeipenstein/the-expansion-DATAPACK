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

# remove pad link from linked control panels and reload them
execute at @s on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.pad_link] if function expansion:blocks/launch_control/link_pad/owns_link run say hello
execute at @s on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.pad_link] if function expansion:blocks/launch_control/link_pad/owns_link run kill @s
execute at @s on passengers if entity @s[tag=exp.control_link] on origin run function expansion:blocks/launch_control/text_display/reset
execute on passengers if entity @s[type=snowball] run kill @s
kill @s

# remove the forceload of this chunk
forceload remove ~ ~

# only players can remove rocket pads so this chunk will be loaded
# re evaluate the forceload of all other launch pads nearby to make sure their chunk stays loaded
execute as @e[type=item_display,tag=exp.launch_pad,distance=..32] at @s run forceload add ~ ~