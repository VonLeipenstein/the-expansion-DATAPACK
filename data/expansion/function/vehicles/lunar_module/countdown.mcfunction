execute on passengers on passengers run title @s subtitle {"text":" "}
execute if entity @s[scores={exp.timer_2=200}] on passengers on passengers run title @s title {"text":"10","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=180}] on passengers on passengers run title @s title {"text":"9","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=160}] on passengers on passengers run title @s title {"text":"8","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=140}] on passengers on passengers run title @s title {"text":"7","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=120}] on passengers on passengers run title @s title {"text":"6","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=100}] on passengers on passengers run title @s title {"text":"5","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=80}] on passengers on passengers run title @s title {"text":"4","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=60}] on passengers on passengers run title @s title {"text":"3","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=40}] on passengers on passengers run title @s title {"text":"2","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=20}] on passengers on passengers run title @s title {"text":"1","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=1}] on passengers on passengers run title @s title {"text":"LAUNCH!","color":"gold","bold":true}

execute if entity @s[scores={exp.timer_2=200}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=180}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=160}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=140}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=120}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=100}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=80}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=60}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=40}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s
execute if entity @s[scores={exp.timer_2=20}] on passengers on passengers run playsound minecraft:entity.experience_orb.pickup master @s

execute if entity @s[scores={exp.timer_2=1}] run function expansion:vehicles/lunar_module/takeoff

execute if entity @s[scores={exp.timer_2=1..}] run scoreboard players remove @s exp.timer_2 1

