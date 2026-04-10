# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/oxygenate/scan/quick/loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/quick/cast (1 caller) [OK same-folder]
# - function expansion:blocks/oxygenator/oxygenate/scan/quick/loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Increment score
# If this loops to long, the entity will be too far away so we signal that the room is too large
scoreboard players add #temp exp.value 1
execute if score #temp exp.value matches 60.. run return run scoreboard players set #temp exp.hold_value 10000

# succeed if we hit a block
execute if block ^ ^ ^1 #expansion:airtight run return run function expansion:blocks/oxygenator/oxygenate/scan/quick/hit

# continue to the next block if we still have a score left
execute positioned ^ ^ ^0.4 run return run function expansion:blocks/oxygenator/oxygenate/scan/quick/loop