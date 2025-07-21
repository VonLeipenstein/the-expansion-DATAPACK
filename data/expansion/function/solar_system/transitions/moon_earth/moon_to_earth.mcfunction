# disable weather
function expansion:utilities/weather/disable_weather

# teleport
execute on vehicle on vehicle in minecraft:overworld run tp @s ~ 450 ~

# convert module to capsule
execute on vehicle on vehicle run function expansion:vehicles/lunar_module/convert_to_capsule/root
