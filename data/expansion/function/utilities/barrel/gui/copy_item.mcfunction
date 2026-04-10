# >>> generated function callers >>>
# Callers for expansion:utilities/barrel/gui/copy_item
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:utilities/barrel/gui/restore_item (1 caller) [OK same-folder]
# <<< generated function callers <<<

data modify entity @s Item set from storage expansion:temp Item

data merge entity @s {PickupDelay:0s}

tp @s @p