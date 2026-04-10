# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/demount
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/spaceship/click_detection/leftclick (1 caller) [WARN side/down 1]
# - function expansion:vehicles/spaceship/dismantle (1 caller) [OK same-folder]
# <<< generated function callers <<<

# sound
playsound block.metal.break block @a[distance=..5] ~ ~ ~

# delete entity stack
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s
