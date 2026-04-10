# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/hurt
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[nbt={AbsorptionAmount:0.0f}] run function expansion:mobs/evil_drone/death

# cosmetics
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 20
playsound minecraft:block.anvil.place ambient @a ~ ~ ~ 0.1 0.5