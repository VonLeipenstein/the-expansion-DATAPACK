# initiate the raycast
function expansion:utilities/raycast/placement/initiate

# place the block at the location where the ray hits a block
execute anchored eyes positioned ^ ^ ^ at @e[type=minecraft:marker,tag=exp.ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #expansion:blocks_placeable run function expansion:blocks/place

# kill the ray
kill @e[type=minecraft:marker,tag=exp.ray,limit=1,sort=nearest]