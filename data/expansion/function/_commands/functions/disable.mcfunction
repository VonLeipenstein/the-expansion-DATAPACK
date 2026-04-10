# >>> generated function callers >>>
# Callers for expansion:_commands/functions/disable
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:_commands/uninstall (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players set #expansion_tick exp.bool 0

tellraw @a [{translate:"exp_screentxt_stoptick1"},{text:"\n"},{translate:"exp_screentxt_stoptick2"},{text:"\n"},{translate:"exp_screentxt_stoptick3"}]

