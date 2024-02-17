# apply a tag to start flying
tag @s[predicate=expansion:utility/sneak,scores={exp.jump=1..}] add exp.flying_boots
tag @s[predicate=expansion:utility/sneak,tag=!exp.flying_boots,nbt={OnGround:0b}] add exp.flying_boots

# test some conditions and fly
execute if entity @s[tag=exp.flying_boots] run function expansion:items/rocket_boots/try_flight

# recharge the boots when on the ground
execute unless block ~ ~-0.1 ~ #expansion:air run function expansion:items/rocket_boots/on_ground

# turn off the boots
execute if entity @s[predicate=!expansion:utility/sneak,tag=exp.boosting] run function expansion:items/rocket_boots/turn_off
