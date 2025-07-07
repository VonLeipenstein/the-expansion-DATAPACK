# set model transformations
data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]},interpolation_duration:5,teleport_duration:5}
# merge model rotation with the base entity
execute store result entity @s Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]
# switch the model to the landed version
data modify entity @s item.components.minecraft:custom_model_data.strings insert 1 value "landed"
