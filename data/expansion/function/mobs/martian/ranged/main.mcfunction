# attempt to shoot the target
execute if function expansion:mobs/martian/ranged/has_target run function expansion:mobs/martian/ranged/shooting/main

# erase arrows
kill @e[distance=..2,type=arrow,nbt={HasBeenShot:0b}]