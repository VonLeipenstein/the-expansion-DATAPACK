# Provide continuous oxygen to players connected by the oxygen_link
execute on passengers if entity @s[tag=exp.oxygen_link,tag=exp.enabled_oxygen] on origin run function expansion:mechanics/oxygen/replenish

# Funny particles
function expansion:blocks/oxygenator/particles