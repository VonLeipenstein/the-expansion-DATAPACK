schedule clear expansion:post_load
execute unless score #total_system exp.gen_success matches 1 unless entity @p[tag=exp.generator] run schedule function expansion:post_load 1t append

execute in expansion:space run function expansion:solar_system/generation/generation_test/schedule
execute if entity @p run scoreboard players remove #reload exp.delay 1