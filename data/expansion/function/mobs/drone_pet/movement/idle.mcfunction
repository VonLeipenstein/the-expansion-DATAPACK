# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/movement/idle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/drone_pet/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# apply different speeds and precisions depending on the distance from the desired floating point
execute if entity @s[distance=10..] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute if entity @s[distance=7..10] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~
execute if entity @s[distance=5..7] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~
execute if entity @s[distance=3..5] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[distance=..3] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.05 ~ ~-0.1