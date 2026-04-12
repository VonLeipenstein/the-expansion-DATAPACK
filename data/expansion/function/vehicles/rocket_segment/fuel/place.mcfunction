tag @s add exp.fuel_segment
tag @s add exp.new_fuel_segment

# Setup fuel storage. Not for display but for storing the fuel items
summon item_display ~ ~ ~ {item_display:"none",Tags:["exp.fuel_storage","exp.new_fuel_storage"]}
execute as @n[tag=exp.new_fuel_storage] run ride @s mount @n[tag=exp.new_fuel_segment]
execute on passengers if entity @s[tag=exp.new_fuel_storage] run tag @s remove exp.new_fuel_storage
tag @s remove exp.new_fuel_segment