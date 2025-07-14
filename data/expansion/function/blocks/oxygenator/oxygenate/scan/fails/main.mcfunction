# Destroy all the oxygen scanner markers
function expansion:blocks/oxygenator/oxygenate/kill_own_scanners

# Cut oxygen from connected players
execute on passengers if entity @s[tag=exp.oxygen_link,tag=exp.enabled_oxygen] run tag @s remove exp.enabled_oxygen

# Stop the animated texture
function expansion:blocks/oxygenator/gui/animated_texture/stop

# remove the tag that ensures immediate access to oxygen, the base will have to be repressurized.
# remove button stop tag
tag @s remove exp.pressurized

# prevent another scan
scoreboard players reset @s exp.timer_1
scoreboard players set @s exp.hold_count 0
scoreboard players set @s exp.hold_value 0