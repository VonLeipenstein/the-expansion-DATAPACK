scoreboard players reset #temp exp.counter_1

execute store result score #temp exp.counter_1 on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run clear @s *[custom_data~{exp_item:{name:"repair_kit"}}] 0

execute if score #temp exp.counter_1 matches 2.. run return 1

return fail