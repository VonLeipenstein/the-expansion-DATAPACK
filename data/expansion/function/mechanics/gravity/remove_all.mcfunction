# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/remove_all
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 2/3 honored
# Sources:
# - function expansion:mechanics/gravity/apply (1 caller) [OK same-folder]
# - function expansion:mechanics/gravity/main (1 caller) [OK same-folder]
# - function expansion:player/death (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# if the player is not in any dimensions with altered gravity, reset their gravity
function expansion:mechanics/gravity/remove

function expansion:mechanics/gravity/zero/remove_movement_modifier