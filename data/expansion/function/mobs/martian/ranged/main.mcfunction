# >>> generated function callers >>>
# Callers for expansion:mobs/martian/ranged/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/martian/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# attempt to shoot the target
execute if function expansion:mobs/martian/ranged/has_target run function expansion:mobs/martian/ranged/shooting/main

# erase arrows
kill @e[distance=..2,type=arrow,nbt={HasBeenShot:0b}]