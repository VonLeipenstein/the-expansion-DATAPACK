scoreboard players remove #temp exp.max_range 1

execute align xyz if block ~ ~ ~ #expansion:custom_block[type=double,waterlogged=true] run return run function expansion:blocks/ores/replace

execute if score #temp exp.max_range matches 1.. positioned ^ ^ ^0.1 run return run function expansion:player/replace_raycast/loop

return fail