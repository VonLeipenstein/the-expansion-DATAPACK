# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/reload/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/use (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}]}] run return run function expansion:items/cryoblaster/reload/reload

# reload functions
title @s subtitle {text:" "}
title @s title {text:"Gather more water",color:"red",bold:true}
