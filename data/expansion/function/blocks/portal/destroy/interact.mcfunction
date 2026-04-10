# >>> generated function callers >>>
# Callers for expansion:blocks/portal/destroy/interact
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/portal_lc (1 caller)
# <<< generated function callers <<<

advancement revoke @s only expansion:utility/portal_lc

execute as @n[type=interaction,tag=exp.portal_rcdet,nbt={attack:{}},distance=..10] on vehicle run function expansion:blocks/portal/destroy/destroy_portal
