# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/input
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# signal to the mech that there is any input
execute on vehicle on vehicle run scoreboard players set @s exp.warmup 1

# signal to the mech that jump is pressed
# other inputs can't be given when jump is pressed
execute if predicate expansion:input/jump on vehicle on vehicle run scoreboard players set @s exp.jump 1

# signal horizontal input
scoreboard players reset #angle exp.offset
execute if predicate expansion:input/forward run scoreboard players set #angle exp.offset 0
execute if predicate expansion:input/left run scoreboard players set #angle exp.offset -89
execute if predicate expansion:input/right run scoreboard players set #angle exp.offset 89
execute if predicate expansion:input/forward if predicate expansion:input/left run scoreboard players set #angle exp.offset -45
execute if predicate expansion:input/forward if predicate expansion:input/right run scoreboard players set #angle exp.offset 45
execute if predicate expansion:input/backward run scoreboard players set #angle exp.offset 180
execute if predicate expansion:input/backward if predicate expansion:input/left run scoreboard players set #angle exp.offset -135
execute if predicate expansion:input/backward if predicate expansion:input/right run scoreboard players set #angle exp.offset 135

execute on vehicle on vehicle run scoreboard players operation @s exp.yaw = #angle exp.offset
scoreboard players reset #angle exp.offset