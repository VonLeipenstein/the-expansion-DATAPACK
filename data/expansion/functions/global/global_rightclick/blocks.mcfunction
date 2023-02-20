# ---run from expansion:functions/global/global_rightclick/rightclick_main--- 
function expansion:utilities/raycast/placement/initiate
execute anchored eyes positioned ^ ^ ^ at @e[type=marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 run function expansion:global/global_blocks/place_blocks
kill @e[type=marker,tag=exp.ray,limit=1,sort=nearest]
