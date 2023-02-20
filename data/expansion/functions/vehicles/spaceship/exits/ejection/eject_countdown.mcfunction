scoreboard players add @s exp.timer_2 1

execute if score @s exp.timer_2 matches 20 run title @p subtitle {"text":"3","bold":true,"color":"red"}
execute if score @s exp.timer_2 matches 20 run title @p title {"text":"Ejection in:","bold":true,"color":"red"}

execute if score @s exp.timer_2 matches 40 run title @p subtitle {"text":"2","bold":true,"color":"red"}
execute if score @s exp.timer_2 matches 40 run title @p title {"text":"Ejection in:","bold":true,"color":"red"}

execute if score @s exp.timer_2 matches 60 run title @p subtitle {"text":"1","bold":true,"color":"red"}
execute if score @s exp.timer_2 matches 60 run title @p title {"text":"Ejection in:","bold":true,"color":"red"}

execute if score @s exp.timer_2 matches 80 run title @p subtitle {"text":""}
execute if score @s exp.timer_2 matches 80 run title @p title {"text":"Ejecting Chair!","bold":true,"color":"red"}

execute if score @s exp.timer_2 matches 80 run function expansion:vehicles/spaceship/exits/ejection/eject