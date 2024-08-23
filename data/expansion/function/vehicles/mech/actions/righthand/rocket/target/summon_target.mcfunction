data merge entity @s {Marker:1b,Invisible:1b,Silent:1b}
tag @s add exp.rocket_target_fake
tag @s add exp.dont_ignore
tag @s add exp.claimed_rocket_target

function expansion:vehicles/mech/actions/righthand/rocket/target/give_target_score

scoreboard players operation #temp exp.unique_id = @s exp.unique_id

#tellraw @a {"score":{"name":"#temp","objective":"exp.unique_id"}}
