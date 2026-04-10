# >>> generated function callers >>>
# Callers for expansion:blocks/portal/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# occasionally check if a match is still present
execute at @s if entity @s[tag=exp.activated_portal] run function expansion:blocks/portal/active

# periodically checking for matches
execute at @s unless entity @s[tag=exp.activated_portal] if score @s exp.hold_value matches 5 run function expansion:blocks/portal/activation/periodic_checkup