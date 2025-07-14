# set dimension (and biome) specific temperatures
execute if dimension expansion:moon run return run function expansion:mechanics/temperature/set_biome_temp/moon
execute if dimension expansion:mars run return run function expansion:mechanics/temperature/set_biome_temp/mars
execute if dimension expansion:venus run return run function expansion:mechanics/temperature/set_biome_temp/venus
execute if dimension expansion:jupiter run return run function expansion:mechanics/temperature/set_biome_temp/jupiter
execute if dimension expansion:europa run return run function expansion:mechanics/temperature/set_biome_temp/europa
execute if dimension expansion:asteroids run return run function expansion:mechanics/temperature/set_biome_temp/asteroids
execute if dimension expansion:space run return run function expansion:mechanics/temperature/set_biome_temp/space

# all other biomes are temperature 0
scoreboard players set @s exp.temperature 0