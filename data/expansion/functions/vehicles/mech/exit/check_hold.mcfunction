# remount the player
ride @s mount @e[type=cat,tag=exp.mech_seat,limit=1,sort=nearest]

# stop the motion
execute on vehicle on vehicle run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

# player can't the move mech in the next few ticks to prevent jittering
execute on vehicle on vehicle run scoreboard players set @s exp.sneak_delay 4

# charge the jump
execute on vehicle on vehicle unless score @s exp.jump matches 1.. run scoreboard players set @s exp.jump 1



