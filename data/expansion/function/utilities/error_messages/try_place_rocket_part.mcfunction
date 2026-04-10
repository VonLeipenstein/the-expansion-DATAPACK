# >>> generated function callers >>>
# Callers for expansion:utilities/error_messages/try_place_rocket_part
# Total callers: 5 from 4 source(s)
# Folder rule (function callers): 0/4 honored
# Sources:
# - function expansion:blocks/rocket_parts/cockpit/place (1 caller) [WARN side/down 5]
# - function expansion:blocks/rocket_parts/engines/place (1 caller) [WARN side/down 5]
# - function expansion:blocks/rocket_parts/top/place (1 caller) [WARN side/down 5]
# - function expansion:player/rightclick/tools (2 callers) [WARN side/down 4]
# <<< generated function callers <<<

title @s title ""
execute if predicate expansion:holding/blocks/rocket_bottom run return run title @s subtitle {translate:"exp_screentxt_rocketpart_tryplace_bottom"}
execute if predicate expansion:holding/blocks/rocket_cockpit run return run title @s subtitle {translate:"exp_screentxt_rocketpart_tryplace_cockpit"}
execute if predicate expansion:holding/blocks/rocket_top run return run title @s subtitle {translate:"exp_screentxt_rocketpart_tryplace_top"}