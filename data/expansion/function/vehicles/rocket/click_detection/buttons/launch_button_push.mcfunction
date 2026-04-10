# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/click_detection/buttons/launch_button_push
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - advancement expansion:utility/launch_button (1 caller)
# - advancement expansion:utility/launch_button_l (1 caller)
# - function expansion:vehicles/rocket/click_detection/buttons/click (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Launch
execute at @s run function expansion:vehicles/rocket/launch_init

# Button animation
execute on passengers if entity @s[tag=aj.rocket.root] run function animated_java:rocket/animations/rocket.button_push/play