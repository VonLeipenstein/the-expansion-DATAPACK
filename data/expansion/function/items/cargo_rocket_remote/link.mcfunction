# >>> generated function callers >>>
# Callers for expansion:items/cargo_rocket_remote/link
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/cargo_rocket/click_detection/rightclick (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# link this remote to a cargo rocket
execute store result storage expansion:temp data.pad_id int 1 run scoreboard players get @s exp.pad_id
item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:cargo_rocket_remote/set_pad_id
data remove storage expansion:temp data.pad_id