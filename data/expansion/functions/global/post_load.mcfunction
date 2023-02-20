execute if score #reload exp.delay matches 125 run function expansion:global/dimension_test
execute if score #reload exp.delay matches 1..120 unless score #total_system exp.gen_success matches 1 in expansion:space run function expansion:system_generation/generation_test/schedule
scoreboard players remove #reload exp.delay 1