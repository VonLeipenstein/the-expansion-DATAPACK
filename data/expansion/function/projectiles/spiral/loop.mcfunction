tp @s ^ ^0.1 ^
rotate @s ~20 ~

particle firework ^ ^ ^1.2 0 0 0 0.01 2
particle firework ^ ^ ^-1.2 0 0 0 0.01 2

particle campfire_cosy_smoke ^ ^ ^ .3 .3 .3 0.01 4

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=70}]