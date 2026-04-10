# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bounce/select_target
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/hit/hit (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# set the bounce entity to the new owner
data modify entity @s Owner set from storage expansion:owner data.current_UUID

# reduce the number of allowed bounces
scoreboard players remove @s exp.counter_2 1

# don't register hits in the next few frames to prevent the same entity being hit twice
scoreboard players set @s exp.cooldown 8

# add some range
scoreboard players set @s exp.max_range 30