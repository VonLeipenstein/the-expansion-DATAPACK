# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/input/forward
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/speed (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute on passengers on passengers if entity @s[type=player] if predicate expansion:input/forward unless predicate expansion:input/backward run return 1

return fail