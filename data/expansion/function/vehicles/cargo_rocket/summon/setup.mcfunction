# >>> generated function callers >>>
# Callers for expansion:vehicles/cargo_rocket/summon/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/launch_pad/summon_rocket (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

tag @s remove exp.new_vehicle

# store the used rocket item so it can drop when the rocket is destroyed
item replace entity @s armor.head from entity @p[tag=exp.clicked] weapon.mainhand

# link the snowball of the platform to the rocket
data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on vehicle on passengers if entity @s[tag=exp.rocket_link] run function expansion:utilities/snowball_link/link_from_storage

# id equal to pad id
execute store result score @s exp.pad_id on vehicle run scoreboard players get @s exp.pad_id