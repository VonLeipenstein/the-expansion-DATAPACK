# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/oxygen_link/detect_player
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/perform (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# Cast a ray to this entity and check if it intersects
execute on origin facing entity @s feet if function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player run return 1

return fail