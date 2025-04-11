scoreboard players operation #search exp.unique_id = @s exp.unique_id

# start a scan from a random position (usually a corner) of the room
function expansion:blocks/oxygenator/oxygenate/scan/init/random_startpos

# Tag all the entities which are currently connected
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.getting_oxygen

# Start the animated block texture
function expansion:blocks/oxygenator/gui/animated_texture/start

# Start the scan
scoreboard players set @s exp.timer_1 400

# Make sure the perform is synchronized with this
scoreboard players reset @s exp.timer_2
scoreboard players reset #search exp.unique_id
# reset registered max amount of scanners
scoreboard players set @s exp.counter_1 0
