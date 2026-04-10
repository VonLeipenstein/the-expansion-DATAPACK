# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/hyperdrive/init
# Total callers: 0
# None found
# <<< generated function callers <<<

scoreboard players operation #temp exp.warmup = @s exp.warmup
scoreboard players operation #temp exp.warmup *= #temp exp.warmup

execute if score #temp exp.warmup matches 1500.. run say too much!
execute if score #temp exp.warmup matches 1000.. run scoreboard players set #temp exp.warmup 1000

tellraw @p {score:{name:"#temp",objective:"exp.warmup"}}
scoreboard players reset @s exp.warmup