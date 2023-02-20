title @s subtitle {"text":" "}
execute as @s run scoreboard players add @s exp.timer_2 1
execute as @s[scores={exp.timer_2=20..}] run title @s title {"translate":"exp_screentxt_equipmenterror_title","color":"red","bold":true}
execute as @s[scores={exp.timer_2=20..}] run title @s subtitle {"translate":"exp_screentxt_equipmenterror_subtitle","color":"red","bold":true}
execute as @s[scores={exp.timer_2=20..}] run scoreboard players set @s exp.timer_2 0
