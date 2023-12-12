scoreboard players set #expansion_tick exp.bool 1
schedule function expansion:5t_tick 5t append

tellraw @a [{"translate":"exp_screentxt_starttick"}]