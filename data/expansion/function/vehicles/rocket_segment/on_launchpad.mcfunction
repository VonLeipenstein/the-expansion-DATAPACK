# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/on_launchpad
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/rocket_segment/click_detection/leftclick (1 caller) [WARN side/down 1]
# - function expansion:vehicles/rocket_segment/on_launchpad (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if predicate expansion:riding/launch_pad run return 1

execute on vehicle run return run function expansion:vehicles/rocket_segment/on_launchpad

return fail