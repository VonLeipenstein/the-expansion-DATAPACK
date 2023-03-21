schedule clear expansion:global/post_load
execute if score #reload exp.delay matches 1.. unless score #total_system exp.gen_success matches 1 run schedule function expansion:global/post_load 1t append

execute in expansion:space run function expansion:system_generation/generation_test/schedule
scoreboard players remove #reload exp.delay 1