playsound block.metal.break block @a ~ ~ ~

execute on passengers if entity @s[tag=aj.buggy.root] run function animated_java:buggy/remove/this
execute on passengers run kill @s[type=!player]
kill @s
