#execute as @e[tag=aj.buggy.root,limit=1,sort=nearest] run data modify entity @s transformation.left_rotation set value {axis:[0f,1f,0f],angle:20f}

#execute as @e[tag=aj.buggy.root] on passengers run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:0.5f}