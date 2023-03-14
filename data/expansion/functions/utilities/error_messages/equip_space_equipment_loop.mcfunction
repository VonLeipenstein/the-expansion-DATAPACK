title @s subtitle {"text":" "}
scoreboard players add @s exp.timer_2 1
title @s[scores={exp.timer_2=20..}] title {"translate":"exp_screentxt_equipmenterror_title","color":"red","bold":true}
title @s[scores={exp.timer_2=20..}] subtitle {"translate":"exp_screentxt_equipmenterror_subtitle","color":"red","bold":true}
scoreboard players set @s[scores={exp.timer_2=20..}] exp.timer_2 0
