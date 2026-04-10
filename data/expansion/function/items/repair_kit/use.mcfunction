# >>> generated function callers >>>
# Callers for expansion:items/repair_kit/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# repair all worn armor pieces
execute unless score @s exp.suit_integrity >= #minimum_to_repair exp.suit_integrity if predicate expansion:armor/any run function expansion:items/repair_kit/repair