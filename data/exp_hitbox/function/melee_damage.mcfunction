# reset the interaction entity
execute on passengers run data remove entity @s[type=interaction] attack

# store the y motion of the player
execute as @p store result score @s exp.dy run data get entity @s Motion[1] 10

# critical hit detection 
execute as @p if score @s exp.dy matches ..-1 unless entity @s[nbt={OnGround:1b}] unless entity @s[nbt={RootVehicle:{}}] if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if predicate exp_hitbox:crit_ready run function exp_hitbox:add_crit

# set the boss damage equal to the player damage
scoreboard players operation @s exp.damage = @p exp.player_attack