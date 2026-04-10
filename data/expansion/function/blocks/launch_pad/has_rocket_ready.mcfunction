# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/has_rocket_ready
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/cargo_rocket_remote/use (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.cargo_rocket] run return 1

return fail