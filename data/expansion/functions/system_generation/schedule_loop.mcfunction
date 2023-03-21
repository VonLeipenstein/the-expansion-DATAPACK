schedule clear expansion:system_generation/schedule_loop
execute unless score #total_system exp.gen_success matches 1 run schedule function expansion:system_generation/schedule_loop 2t append

# generate planets
execute as @a[tag=exp.generator] in expansion:space run function expansion:system_generation/generation_tick