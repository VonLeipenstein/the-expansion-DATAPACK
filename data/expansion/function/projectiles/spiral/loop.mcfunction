# >>> generated function callers >>>
# Callers for expansion:projectiles/spiral/loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

tp @s ^ ^0.1 ^
rotate @s ~20 ~

particle firework ^ ^ ^1.2 0 0 0 0.01 2
particle firework ^ ^ ^-1.2 0 0 0 0.01 2

particle campfire_cosy_smoke ^ ^ ^ .3 .3 .3 0.01 4

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=70}]