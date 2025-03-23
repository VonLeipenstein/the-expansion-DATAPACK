# update the rotation of snowball entities to turn towards their targets
execute if entity @s[type=snowball] run function expansion:projectiles/electric_arc/bend/towards_target

# get the initial rotation of the marker
scoreboard players operation #temp exp.yaw = @s exp.yaw
scoreboard players operation #temp exp.pitch = @s exp.pitch

# get a random value
execute store result score #random exp.yaw run random value 10..35
execute store result score #random exp.pitch run random value 10..35
execute if predicate expansion:chance/050_chance run scoreboard players operation #random exp.yaw *= #-1 exp.const
execute if predicate expansion:chance/050_chance run scoreboard players operation #random exp.pitch *= #-1 exp.const

# add the random value to the initial rotation
scoreboard players operation #temp exp.yaw += #random exp.yaw
scoreboard players operation #temp exp.pitch += #random exp.pitch

# pitch values outside of -90..90 need to be corrected on both yaw and pitch
execute unless score #temp exp.pitch matches -90..90 run function expansion:projectiles/electric_arc/bend/clamp_pitch
# yaw values outside of -180..180 need to be flipped
execute unless score #temp exp.yaw matches -180..180 run function expansion:projectiles/electric_arc/bend/clamp_yaw

# merge the new rotation values into a storage
execute store result storage expansion:rotation Rotation[0] float 1 run scoreboard players get #temp exp.yaw
execute store result storage expansion:rotation Rotation[1] float 1 run scoreboard players get #temp exp.pitch

# copy the storage value to the entity, this saves performance since the entities nbt is only interacted with once
data modify entity @s Rotation set from storage expansion:rotation Rotation

# have a chance to adopt the new rotation
execute if predicate expansion:chance/001_chance run scoreboard players operation @s exp.yaw = #temp exp.yaw
execute if predicate expansion:chance/001_chance run scoreboard players operation @s exp.pitch = #temp exp.pitch