# >>> generated function callers >>>
# Callers for expansion:blocks/portal/teleport/teleport
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/teleport/teleportation_stage_2 (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score #temp exp.dim_test matches 0 in minecraft:overworld align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 1 in expansion:moon align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 2 in expansion:mars align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 3 in expansion:venus align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
#execute if score #temp exp.dim_test matches 4 in expansion:mercury align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 5 in expansion:jupiter align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 6 in expansion:europa align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 7 in expansion:storage align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 8 in expansion:space align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~
execute if score #temp exp.dim_test matches 9 in expansion:asteroids align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ ~ ~

# cooldown and nausea to indicate
effect give @s nausea 1 10 true
playsound expansion:portal.transport block @s ~ ~ ~ 1 1 0
