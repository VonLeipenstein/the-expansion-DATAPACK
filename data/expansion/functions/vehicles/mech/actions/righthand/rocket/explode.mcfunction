particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=!#expansion:ignore,distance=..5] run damage @s 12 explosion
kill @s