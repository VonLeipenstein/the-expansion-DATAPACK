# >>> generated function callers >>>
# Callers for expansion:utilities/raycast/target/lock_dummy
# Total callers: 6 from 4 source(s)
# Folder rule (function callers): 2/4 honored
# Sources:
# - function expansion:blocks/tesla_coil/coil/choose_target (2 callers) [WARN side/down 6]
# - function expansion:projectiles/electric_arc/bounce/found_target (1 caller) [WARN side/down 6]
# - function expansion:utilities/raycast/target/lock (1 caller) [OK same-folder]
# - function expansion:utilities/raycast/target/loop (2 callers) [OK same-folder]
# <<< generated function callers <<<

data modify storage expansion:owner data.current_UUID set from entity @s UUID

scoreboard players set #temp exp.max_range 0

return 1