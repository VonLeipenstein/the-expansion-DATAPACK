execute anchored feet rotated ~ 0 run setblock ^ ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^ ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^ ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^1 ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-1 ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^1 ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-1 ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^1 ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-1 ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^2 ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-2 ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^2 ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-2 ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^2 ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-2 ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^3 ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-3 ^ ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^3 ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-3 ^1 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^3 ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-3 ^2 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-1 ^3 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-2 ^3 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^-3 ^3 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^ ^3 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^1 ^3 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^2 ^3 ^2 minecraft:packed_ice keep
execute anchored feet rotated ~ 0 run setblock ^3 ^3 ^2 minecraft:packed_ice keep

execute anchored feet rotated ~ 0 run particle minecraft:poof ^ ^2 ^2 .5 2 .5 0 100
execute anchored feet rotated ~ 0 run particle minecraft:poof ^1 ^2 ^2 .5 2 .5 0 100
execute anchored feet rotated ~ 0 run particle minecraft:poof ^-1 ^2 ^2 .5 2 .5 0 100
execute anchored feet rotated ~ 0 run particle minecraft:poof ^2 ^2 ^2 .5 2 .5 0 100
execute anchored feet rotated ~ 0 run particle minecraft:poof ^-2 ^2 ^2 .5 2 .5 0 100
execute anchored feet rotated ~ 0 run particle minecraft:poof ^3 ^2 ^2 .5 2 .5 0 100
execute anchored feet rotated ~ 0 run particle minecraft:poof ^-3 ^2 ^2 .5 2 .5 0 100
playsound block.lava.extinguish master @a ~ ~ ~ 1 2

scoreboard players remove @s exp.ammo 5
tag @s add exp.used_ammo

