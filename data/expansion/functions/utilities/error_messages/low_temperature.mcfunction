scoreboard players add @s exp.timer_2 1
title @s subtitle {"text":" "}
title @s[scores={exp.timer_2=30..}] title {"translate":"exp_screentxt_lowtemp_title","color":"red","bold":true}
scoreboard players set @s[scores={exp.timer_2=30..}] exp.timer_2 0
