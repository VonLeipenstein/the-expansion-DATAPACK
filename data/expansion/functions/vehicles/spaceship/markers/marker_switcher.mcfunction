tag @s[tag=exp.markertag1] add exp.markertag2
execute if entity @s[tag=!exp.markertag1] run function expansion:vehicles/spaceship/markers/summon_markers
execute if entity @s[tag=exp.markertag2] run function expansion:vehicles/spaceship/markers/kill_markers
