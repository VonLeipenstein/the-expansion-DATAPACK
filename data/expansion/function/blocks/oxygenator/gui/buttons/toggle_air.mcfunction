function expansion:utilities/sounds/button

execute if entity @s[tag=exp.displaying_air] run return run tag @s remove exp.displaying_air
tag @s add exp.displaying_air