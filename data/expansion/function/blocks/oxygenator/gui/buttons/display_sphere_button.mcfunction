function expansion:utilities/sounds/button

execute if entity @s[tag=exp.displaying_frame] run return run function expansion:blocks/oxygenator/gui/frame/hide
execute unless entity @s[tag=exp.displaying_frame] run function expansion:blocks/oxygenator/gui/frame/show