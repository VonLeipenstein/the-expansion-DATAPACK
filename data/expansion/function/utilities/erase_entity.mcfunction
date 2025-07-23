# Overlayed on 1.21.6+
function expansion:utilities/reset_waypoint

ride @s dismount
tp @s ~ 1000 ~
data merge entity @s {Health:0.0f,DeathLootTable:"expansion:empty",Silent:1b}
kill @s