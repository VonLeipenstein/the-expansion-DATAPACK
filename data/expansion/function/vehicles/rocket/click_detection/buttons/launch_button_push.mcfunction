# Launch
execute at @s run function expansion:vehicles/rocket/launch_init

# Button animation
execute on passengers if entity @s[tag=aj.rocket.root] run function animated_java:rocket/animations/rocket.button_push/play