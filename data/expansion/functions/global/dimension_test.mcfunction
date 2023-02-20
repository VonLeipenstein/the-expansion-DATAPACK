scoreboard players set #global exp.dim_test 0
execute in expansion:storage run scoreboard players set #global exp.dim_test 1
execute if score #global exp.dim_test matches 0 run tellraw @a [{"translate":"exp_screentxt_loaderror_chat"}]
