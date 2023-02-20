# apply spaceship potion effects
function expansion:vehicles/spaceship/inside_effects

# calculate percentage of speed
scoreboard players operation #speed exp.math = @s exp.speed
scoreboard players remove #speed exp.math 10
scoreboard players operation #speed exp.math *= #100 exp.const
scoreboard players operation #speed exp.math /= #90 exp.const
scoreboard players operation @s exp.hold_value = #speed exp.math

# adjust the speed depending on the selected itemslot and change the dashboard accordingly
execute if entity @s[scores={exp.fuel_percentage=50..100}] run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute if entity @s[scores={exp.fuel_percentage=10..50}] run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute if entity @s[scores={exp.fuel_percentage=0..10}] run title @p actionbar ["",{"translate":"exp_screentxt_position_actionbar"},{"text":"\u25c0"},{"score":{"name":"@p","objective":"exp.x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"exp.z"}},{"text":"\u25b6     "},{"translate":"exp_screentxt_speed_actionbar"},{"text":"\u25c0"},{"score":{"name":"@s","objective":"exp.hold_value"}},{"text":"%\u25b6     "},{"translate":"exp_screentxt_fuel_actionbar"},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"exp.fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

# regulates the propulsion
function expansion:vehicles/spaceship/propulsion/propulsion

# antidupe for the blaster item
function expansion:vehicles/spaceship/antidupe

# fuel functions 
function expansion:utilities/fuel_percentage
scoreboard players add @s[scores={exp.fuel_level=1..}] exp.timer_1 1
scoreboard players remove @s[scores={exp.timer_1=40..}] exp.fuel_level 1
scoreboard players set @s[scores={exp.timer_1=40..}] exp.timer_1 0

# ejection chair
execute unless predicate expansion:dimension/zero_gravity if score .a exp.wasd matches 1 run function expansion:vehicles/spaceship/exits/ejection/eject_countdown
execute unless score .a exp.wasd matches 1 if score @s exp.timer_2 matches 1.. run scoreboard players reset @s exp.timer_2

# marker functions
execute if entity @p[predicate=expansion:dimension/space,tag=exp.markertag1] run function expansion:vehicles/spaceship/markers/markers

# fuel loss upon damage
execute if entity @p[nbt={HurtTime:9s}] run function expansion:vehicles/spaceship/dmg_fuel_loss