# >>> generated function callers >>>
# Callers for expansion:blocks/portal/cores/remove_core_count
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/cores/take_core (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players remove @s exp.hold_value 1

execute if score @s exp.hold_value matches 4 run function expansion:blocks/portal/deactivation/deactivate_portal

#vfx
playsound expansion:portal.insert_core block @a[distance=..16] ~ ~2.15 ~ 1 1.5 0
