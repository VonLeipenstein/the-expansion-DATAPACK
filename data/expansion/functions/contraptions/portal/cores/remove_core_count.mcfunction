execute if score @s exp.hold_value matches 5 run function expansion:contraptions/portal/deactivation/deactivate_portal
scoreboard players remove @s exp.hold_value 1

playsound expansion:portal.insert_core block @a ~ ~ ~ 1 1.5 0
