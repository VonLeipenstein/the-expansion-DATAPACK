execute as @s run scoreboard players add @s exp.timer_2 1
title @s subtitle {"text":" "}
execute as @s[scores={exp.timer_2=30..}] run title @s title {"translate":"exp_screentxt_lowtemp_title","color":"red","bold":true}
execute as @s[scores={exp.timer_2=30..}] run scoreboard players set @s exp.timer_2 0
