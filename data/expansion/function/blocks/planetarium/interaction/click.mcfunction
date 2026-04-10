# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/interaction/click
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/planetarium_click (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/planetarium_click

execute as @n[type=interaction,nbt={interaction:{}}] if function expansion:utilities/remove_interaction run function expansion:blocks/planetarium/interaction/select_planet