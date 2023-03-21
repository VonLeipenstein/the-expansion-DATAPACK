scoreboard players set #global exp.dim_test 0
scoreboard players set #reload exp.delay 120
#scoreboard players set #total_system exp.gen_success 0
execute in expansion:storage run scoreboard players set #global exp.dim_test 1
execute if score #global exp.dim_test matches 0 run tellraw @a [{"translate":"exp_screentxt_loaderror_chat"}]