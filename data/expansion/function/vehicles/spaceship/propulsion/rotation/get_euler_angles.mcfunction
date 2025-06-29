# store rotation data of the marker in a storage
data modify storage expansion:rotation Rotation set from entity @s Rotation

# 
execute store result score @s exp.pitch run data get storage expansion:rotation Rotation[1] 1000
execute store result score @s exp.yaw run data get storage expansion:rotation Rotation[0] 1000
execute store result score @s exp.roll run function expansion:vehicles/spaceship/propulsion/rotation/roll