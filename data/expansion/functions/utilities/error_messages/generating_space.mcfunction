execute as @s run scoreboard players add @s exp.timer_2 1
execute as @s[scores={exp.timer_2=10}] run title @s actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true}]
execute as @s[scores={exp.timer_2=20}] run title @s actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true},{"text":"."}]
execute as @s[scores={exp.timer_2=30}] run title @s actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true},{"text":".."}]
execute as @s[scores={exp.timer_2=40}] run title @s actionbar [{"translate":"exp_screentxt_genspace_actionbar","color":"red","bold":true},{"text":"..."}]
execute as @s[scores={exp.timer_2=40..}] run scoreboard players set @s exp.timer_2 0
