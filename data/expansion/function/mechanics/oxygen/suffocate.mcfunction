# The oxygen score is allowed to be below 0, correct that here
execute if score @s exp.oxygen_lvl matches ..-1 run scoreboard players set @s exp.oxygen_lvl 0

# Initiate a players oxygen score if they don't yet have any
execute unless score @s exp.oxygen_max matches 0.. run function expansion:mechanics/oxygen/init

damage @s 3 generic

function expansion:utilities/error_messages/low_oxygen