# >>> generated function callers >>>
# Callers for expansion:blocks/portal/activation/periodic_checkup
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/portal/active (1 caller) [OK above +1]
# - function expansion:blocks/portal/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if predicate expansion:periodic/5 unless entity @s[tag=exp.activated_portal] positioned ~ ~-1 ~ run function expansion:blocks/portal/particles_start

execute if predicate expansion:periodic/40 run function expansion:blocks/portal/activation/check_matches