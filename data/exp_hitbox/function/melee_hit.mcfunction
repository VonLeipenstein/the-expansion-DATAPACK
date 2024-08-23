# revoke the advancement so it can be triggered again
advancement revoke @s only exp_hitbox:attack_on_hitbox

# store some info about the attack
execute store result score @s exp.player_attack run attribute @s minecraft:generic.attack_damage get
execute store result score @s exp.player_attack_speed run attribute @s minecraft:generic.attack_speed get 100

# drastically reduce the players attack damage if their attack cooldown is still active
scoreboard players operation @s exp.player_attack_cooldown /= #20 exp.const
execute if score @s exp.player_attack_cooldown matches 1.. run scoreboard players operation @s exp.player_attack /= @s exp.player_attack_cooldown
scoreboard players operation @s exp.player_attack_cooldown = #20000 exp.const
scoreboard players operation @s exp.player_attack_cooldown /= @s exp.player_attack_speed

# particle
playsound entity.player.attack.sweep player @s ~ ~ ~

# deal damage to the entity
execute at @s as @e[type=interaction,tag=exp.hitbox,nbt={attack:{}},limit=1,sort=nearest] on vehicle unless score @s exp.iframes matches 1.. run function exp_hitbox:melee_damage