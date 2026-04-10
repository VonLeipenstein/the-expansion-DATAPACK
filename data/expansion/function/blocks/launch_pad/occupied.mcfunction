# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/occupied
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (1 caller) [WARN side/down 1]
# - function expansion:blocks/launch_pad/interaction/place_rocket_engines (1 caller) [WARN side/down 1]
# - function expansion:blocks/rocket_parts/engines/place (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute if function expansion:blocks/launch_pad/has_passenger as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/launch_pad_occupied

execute if function expansion:blocks/launch_pad/has_linked_rocket as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/launch_pad_occupied

return fail