# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/upgrade_module/heat_resist
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.10 *[custom_data~{secondary:"combat"}] run return run loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/combat
execute if items block ~ ~ ~ container.10 *[custom_data~{secondary:"cooled"}] run return run loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/cooled
execute if items block ~ ~ ~ container.10 *[custom_data~{secondary:"heated"}] run return run loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/heated
execute if items block ~ ~ ~ container.10 *[custom_data~{secondary:"reinforced"}] run return run loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/reinforced
execute if items block ~ ~ ~ container.10 *[custom_data~{secondary:"stable"}] run return run loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/stable
execute if items block ~ ~ ~ container.10 *[custom_data~{secondary:"swift"}] run return run loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/swift
loot replace entity @s contents loot expansion:items/modules/heat_resist/mk2/regular