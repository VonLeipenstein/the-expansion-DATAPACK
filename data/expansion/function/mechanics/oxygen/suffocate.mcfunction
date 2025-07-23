# The oxygen score is allowed to be below 0, correct that here
execute if score @s exp.oxygen_lvl matches ..-1 run scoreboard players set @s exp.oxygen_lvl 0

damage @s 1.5 generic

function expansion:utilities/error_messages/low_oxygen