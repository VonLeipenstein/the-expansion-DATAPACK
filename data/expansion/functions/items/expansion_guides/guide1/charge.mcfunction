playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5
execute if score @s exp.timer_1 matches 0 run tellraw @s ["",{"text":"The Moon looks beautiful tonight, could it be possible to live up there one day? Observing it some more might give you some useful insights... [Moon Study: 0%]","italic":true,"color":"aqua"},{"text":"\n "}]
execute if score @s exp.timer_1 matches 80 run tellraw @s ["",{"text":"The Moon seems to be very VERY far away... [Moon Study: 20%]","italic":true,"color":"aqua"},{"text":"\n "}]
execute if score @s exp.timer_1 matches 160 run tellraw @s ["",{"text":"Could it be made out of cheese? No... maybe? [Moon Study: 40%]","italic":true,"color":"aqua"},{"text":"\n "}]
execute if score @s exp.timer_1 matches 240 run tellraw @s ["",{"text":"You would need to travel very fast to escape the Earth's gravitational force... [Moon Study: 60%]","italic":true,"color":"aqua"},{"text":"\n "}]
execute if score @s exp.timer_1 matches 320 run tellraw @s ["",{"text":"A very strong material would be needed to withstand such forces. [Moon Study: 80%]","italic":true,"color":"aqua"},{"text":"\n "}]
