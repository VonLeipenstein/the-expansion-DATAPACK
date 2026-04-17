# >>> generated function callers >>>
# Callers for expansion:utilities/error_messages/no_fuel
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/rocket/launch_init (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute unless predicate expansion:periodic/40 run return fail

title @p[tag=exp.inside_rocket] title ""
title @p[tag=exp.inside_rocket] subtitle [{translate:"exp_screentxt_nofuel_subtitle"}]