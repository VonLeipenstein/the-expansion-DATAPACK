# >>> generated function callers >>>
# Callers for expansion:utilities/altitude/cast
# Total callers: 5 from 5 source(s)
# Folder rule (function callers): 0/5 honored
# Sources:
# - function expansion:blocks/launch_pad/rocket/landing (1 caller) [WARN side/down 5]
# - function expansion:vehicles/lunar_module/actionbar (1 caller) [WARN side/down 4]
# - function expansion:vehicles/rocket/text_display (1 caller) [WARN side/down 4]
# - function expansion:vehicles/rocket_segment/landing/main (1 caller) [WARN side/down 5]
# - function expansion:vehicles/spaceship/propulsion/fall_down (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

scoreboard players reset #altitude exp.distance

execute anchored feet facing ~ ~-1 ~ positioned ^ ^ ^1 run return run function expansion:utilities/altitude/loop