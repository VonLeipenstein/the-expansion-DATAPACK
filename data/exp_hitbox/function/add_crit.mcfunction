scoreboard players operation @s exp.player_crit = @s exp.player_attack
scoreboard players operation @s exp.player_crit /= #2 exp.const
scoreboard players operation @s exp.player_attack += @s exp.player_crit

execute anchored eyes run particle crit ^ ^ ^2.5 0.1 0.1 0.1 0.5 20
playsound entity.player.attack.crit player @a ~ ~ ~