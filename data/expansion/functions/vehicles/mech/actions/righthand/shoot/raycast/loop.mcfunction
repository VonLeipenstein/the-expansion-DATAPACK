#particle dust_color_transition 0 1 1 1 0 1 0 ~ ~ ~ 0 0 0 0 5 force
particle mycelium ~ ~ ~ 0 0 0 1 1 force

scoreboard players remove @s exp.max_range 1

execute positioned ~-.5 ~-.5 ~-.5 as @e[type=!#expansion:ignore,dx=0,dy=0,dz=0,limit=1] run function expansion:vehicles/mech/actions/righthand/shoot/raycast/hit

execute if score @s exp.max_range matches 1.. positioned ^ ^ ^.25 if block ~ ~ ~ air run function expansion:vehicles/mech/actions/righthand/shoot/raycast/loop
