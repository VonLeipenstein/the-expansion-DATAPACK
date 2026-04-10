# >>> generated function callers >>>
# Callers for expansion:spacesuits/set_bonus/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# when wearing a full set and having oxygen, get water breathing
execute if score @s exp.oxygen_lvl matches 1.. run effect give @s water_breathing 1 1 true

# run set bonus functions based on the armor set
execute if predicate expansion:armor/diver/set run return run function expansion:spacesuits/set_bonus/diver
execute if predicate expansion:armor/nasa/set run return run function expansion:spacesuits/set_bonus/nasa
execute if predicate expansion:armor/trooper/set run return run function expansion:spacesuits/set_bonus/trooper
execute if predicate expansion:armor/hazmat/set run return run function expansion:spacesuits/set_bonus/hazmat
execute if predicate expansion:armor/pilot/set run return run function expansion:spacesuits/set_bonus/pilot
execute if predicate expansion:armor/golem/set run return run function expansion:spacesuits/set_bonus/golem
