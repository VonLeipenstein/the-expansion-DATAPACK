execute store result entity @s Motion float -1 run data get entity @s Motion

tag @s add reflected
execute if entity @s[type=#arrows] run playsound entity.arrow.hit player @a[distance=..15] ~ ~ ~

kill @s[type=#arrows]