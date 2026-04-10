# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# cube and sphere mode particles and oxygen logic
execute if score @s exp.counter_1 matches 0 positioned ~ ~0.5 ~ run function expansion:blocks/terraformer/sphere_mode
execute if score @s exp.counter_1 matches 1 positioned ~ ~0.5 ~ run function expansion:blocks/terraformer/cube_mode

# terraforming settings
execute if predicate expansion:periodic/10 if score @s exp.bool matches 1 at @s run function expansion:blocks/terraformer/terraform/main

# give linked players oxygen and reset their temperature score
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/terraformer/connected_player

# particles
particle trial_spawner_detection_ominous ~ ~1 ~ 0.1 0.0 0.1 0 1

# GUI and buttons
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/terraformer/player_nearby

# destory the block if the dropper at the base is removed
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/terraformer/destroy