# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/click_detection/buttons/click
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/rocket_button_l (1 caller)
# - advancement expansion:utility/rocket_button_r (1 caller)
# <<< generated function callers <<<

tag @s add exp.clicked

execute if entity @s[tag=exp.rocket_pilot] if entity @s[y_rotation=-110..-70,x_rotation=12..55] on vehicle on vehicle run function expansion:vehicles/rocket/click_detection/buttons/launch_button_push

# remove the possible advancements triggering this
advancement revoke @s only expansion:utility/rocket_button_l
advancement revoke @s only expansion:utility/rocket_button_r

tag @s remove exp.clicked
