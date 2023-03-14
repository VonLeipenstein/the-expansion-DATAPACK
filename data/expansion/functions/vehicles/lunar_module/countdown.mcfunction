title @p subtitle {"text":" "}
execute if entity @s[scores={exp.timer_2=200}] run title @p title {"text":"10","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=180}] run title @p title {"text":"9","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=160}] run title @p title {"text":"8","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=140}] run title @p title {"text":"7","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=120}] run title @p title {"text":"6","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=100}] run title @p title {"text":"5","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=80}] run title @p title {"text":"4","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=60}] run title @p title {"text":"3","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=40}] run title @p title {"text":"2","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=20}] run title @p title {"text":"1","color":"gold","bold":true}
execute if entity @s[scores={exp.timer_2=1}] run title @p title {"text":"LAUNCH!","color":"gold","bold":true}

execute if entity @s[scores={exp.timer_2=200}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=180}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=160}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=140}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=120}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=100}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=80}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=60}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=40}] run playsound minecraft:entity.experience_orb.pickup master @p
execute if entity @s[scores={exp.timer_2=20}] run playsound minecraft:entity.experience_orb.pickup master @p

execute if entity @s[scores={exp.timer_2=1}] run function expansion:vehicles/lunar_module/takeoff

execute if entity @s[scores={exp.timer_2=1..}] run scoreboard players remove @s exp.timer_2 1

