scoreboard players add @s exp.timer_2 1
title @s[scores={exp.timer_2=10}] actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true}]
title @s[scores={exp.timer_2=20}] actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true},{"text":"."}]
title @s[scores={exp.timer_2=30}] actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true},{"text":".."}]
title @s[scores={exp.timer_2=40}] actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true},{"text":"..."}]
scoreboard players set @s[scores={exp.timer_2=40..}] exp.timer_2 0
