# >>> generated function callers >>>
# Callers for expansion:projectiles/railgun_bullet/damage
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/railgun_bullet/hit (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if predicate expansion:armor/trooper/set run damage @s 5 expansion:railgun at ^ ^ ^-2
execute unless predicate expansion:armor/trooper/set run damage @s 20 expansion:railgun at ^ ^ ^-2

execute if entity @s[tag=exp.hitbox] on vehicle run scoreboard players set @s exp.damage 50

particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 10

return 1