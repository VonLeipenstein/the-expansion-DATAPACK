execute summon marker run function expansion:blocks/oxygenator/oxygenate/fill_space/init_marker

# check if the scanner is inside a corner
# if it is, cast a ray to the nearest oxygen-eligible entity
execute if predicate expansion:chance/050_chance at @s if predicate expansion:location/cornered run function expansion:blocks/oxygenator/oxygenate/oxygen_link/detect_player

return 1