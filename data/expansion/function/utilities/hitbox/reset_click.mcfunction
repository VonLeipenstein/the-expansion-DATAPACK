# >>> generated function callers >>>
# Callers for expansion:utilities/hitbox/reset_click
# Total callers: 14 from 4 source(s)
# Folder rule (function callers): 0/4 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/leftclick (3 callers) [WARN side/down 5]
# - function expansion:blocks/launch_pad/interaction/rightclick (4 callers) [WARN side/down 5]
# - function expansion:vehicles/rocket_segment/click_detection/leftclick (2 callers) [WARN side/down 5]
# - function expansion:vehicles/rocket_segment/click_detection/rightclick (5 callers) [WARN side/down 5]
# <<< generated function callers <<<

tag @p[tag=exp.clicking_player] remove exp.clicking_player
tag @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10] remove exp.clicked_entity