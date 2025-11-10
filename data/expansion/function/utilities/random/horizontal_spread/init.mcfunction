# X direction
execute store result score #temp exp.math run random value -10..10
execute rotated 0.0 0.0 run function expansion:utilities/random/horizontal_spread/loop

# Z direction
execute store result score #temp exp.math run random value -10..10
execute rotated 90.0 0.0 run function expansion:utilities/random/horizontal_spread/loop

scoreboard players reset #temp exp.math