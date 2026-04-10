# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/add_display
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/printing/start_print (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# temporarily copy the to be crafted item to the block
execute on vehicle run item replace block ~ ~ ~ container.0 from entity @s container.0
item replace entity @s container.0 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

# set the display based on the item that is crafted
data merge entity @s {transformation:{translation:[0.0,0.0,-0.08],scale:[0.5,0.5,0.5]},interpolation_duration:50,start_interpolation:-1}
execute if items entity @s container.0 *[custom_data~{exp_item:{expansion_coas:1b}}] run data merge entity @s {transformation:{translation:[0.0,0.3,0.0],scale:[0.45,0.45,0.45]},interpolation_duration:50,start_interpolation:-1}
execute if items entity @s container.0 *[custom_data~{exp_item:{name:"assembler"}}] run data merge entity @s {transformation:{translation:[0.0,0.28,0.0],scale:[0.15,0.15,0.15]},interpolation_duration:50,start_interpolation:-1}
execute if items entity @s container.0 *[custom_data~{exp_armor:{Slot:103b}}] run data merge entity @s {transformation:{translation:[0.0,0.25,0.0],scale:[0.45,0.45,0.45]},interpolation_duration:50,start_interpolation:-1}

# 
rotate @s ~ 90
execute if items entity @s container.0 *[custom_data~{exp_item:{expansion_coas:1b}}] run return run rotate @s ~ 0
execute if items entity @s container.0 *[custom_data~{exp_armor:{Slot:103b}}] run return run rotate @s ~ 0
