execute store result score #temp exp.value run data get entity @s data.stats.blaster.id

# regular blaster
execute if score #temp exp.value matches 0 run return run function expansion:vehicles/spaceship/blasters/regular

# digging blaster
execute if score #temp exp.value matches 1 run return run function expansion:vehicles/spaceship/blasters/digging

# gatling blaster
execute if score #temp exp.value matches 2 run return run function expansion:vehicles/spaceship/blasters/gatling

scoreboard players reset #temp exp.value