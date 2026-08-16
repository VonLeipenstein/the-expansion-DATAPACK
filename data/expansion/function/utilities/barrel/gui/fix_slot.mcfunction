$loot spawn ~ ~ ~ loot expansion:slot/container/$(Slot)
$loot replace block ~ ~ ~ container.$(Slot) loot expansion:items/gui/$(Type)

execute as @e[type=item,distance=..0.01,limit=1] run data merge entity @s {PickupDelay:0}
