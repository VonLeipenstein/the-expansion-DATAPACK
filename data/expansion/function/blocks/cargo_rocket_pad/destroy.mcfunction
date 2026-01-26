execute if function expansion:blocks/cargo_rocket_pad/has_passenger run return run say this pad has an active rocket

execute at @p[tag=exp.clicked] run loot spawn ~ ~ ~ loot expansion:slot/contents

execute on passengers run kill @s
kill @s

# remove the forceload of this chunk
forceload remove ~ ~

# only players can remove rocket pads so this chunk will be loaded
# re evaluate the forceload of all other launch pads nearby to make sure their chunk stays loaded
execute as @e[type=item_display,tag=exp.cargo_rocket_pad,distance=..32] at @s run forceload add ~ ~