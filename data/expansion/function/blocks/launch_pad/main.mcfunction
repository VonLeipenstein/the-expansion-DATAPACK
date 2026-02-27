execute on passengers if entity @s[type=snowball] on origin at @s run function expansion:blocks/launch_pad/rocket/main

execute on passengers if entity @s[type=minecraft:text_display] run function expansion:blocks/launch_pad/text_display/main

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/launch_pad/transform/main