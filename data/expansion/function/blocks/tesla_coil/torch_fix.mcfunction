# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/torch_fix
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

setblock ~ ~1 ~ minecraft:redstone_torch keep
execute positioned ~ ~1 ~ run kill @n[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..2]
 