# remove markers that have no active neighbours
execute at @s unless entity @e[type=item_display,scores={exp.counter_1=1..},distance=..1.01,limit=1] run kill @s

# prevent another check for a delay
scoreboard players set @s exp.delay 2