execute if score #moon exp.timer_2 matches 42 run kill @e[type=minecraft:armor_stand,tag=exp.moon]
execute if score #moon exp.timer_2 matches 180 run tellraw @a {"text":"Generating moon... [Object 2/6]","color":"dark_purple"}

execute if score #moon exp.timer_2 matches 36 run place template expansion:space/planets/moon/sphere_middle ~-23 ~-23 ~-23 
execute if score #moon exp.timer_2 matches 35 run place template expansion:space/planets/moon/sphere_bottom ~-23 ~-70 ~-23 
execute if score #moon exp.timer_2 matches 34 run place template expansion:space/planets/moon/sphere_top ~-23 ~24 ~-23 

execute if score #moon exp.timer_2 matches 33 run place template expansion:space/planets/moon/sphere_middle_e ~24 ~-23 ~-23 
execute if score #moon exp.timer_2 matches 32 run place template expansion:space/planets/moon/sphere_bottom_e ~24 ~-70 ~-23 
execute if score #moon exp.timer_2 matches 31 run place template expansion:space/planets/moon/sphere_top_e ~24 ~24 ~-23 

execute if score #moon exp.timer_2 matches 30 run place template expansion:space/planets/moon/sphere_middle_w ~-70 ~-23 ~-23 
execute if score #moon exp.timer_2 matches 29 run place template expansion:space/planets/moon/sphere_bottom_w ~-70 ~-70 ~-23 
execute if score #moon exp.timer_2 matches 28 run place template expansion:space/planets/moon/sphere_top_w ~-70 ~24 ~-23 

execute if score #moon exp.timer_2 matches 27 run place template expansion:space/planets/moon/sphere_middle_s ~-23 ~-23 ~24 
execute if score #moon exp.timer_2 matches 26 run place template expansion:space/planets/moon/sphere_bottom_s ~-23 ~-70 ~24 
execute if score #moon exp.timer_2 matches 25 run place template expansion:space/planets/moon/sphere_top_s ~-23 ~24 ~24 

execute if score #moon exp.timer_2 matches 24 run place template expansion:space/planets/moon/sphere_middle_n ~-23 ~-23 ~-70
execute if score #moon exp.timer_2 matches 23 run place template expansion:space/planets/moon/sphere_bottom_n ~-23 ~-70 ~-70 
execute if score #moon exp.timer_2 matches 22 run place template expansion:space/planets/moon/sphere_top_n ~-23 ~24 ~-70 

execute if score #moon exp.timer_2 matches 21 run place template expansion:space/planets/moon/sphere_middle_ne ~24 ~-23 ~-70
execute if score #moon exp.timer_2 matches 20 run place template expansion:space/planets/moon/sphere_bottom_ne ~24 ~-70 ~-70 
execute if score #moon exp.timer_2 matches 19 run place template expansion:space/planets/moon/sphere_top_ne ~24 ~24 ~-70 

execute if score #moon exp.timer_2 matches 18 run place template expansion:space/planets/moon/sphere_middle_sw ~-70 ~-23 ~24 
execute if score #moon exp.timer_2 matches 17 run place template expansion:space/planets/moon/sphere_bottom_sw ~-70 ~-70 ~24 
execute if score #moon exp.timer_2 matches 16 run place template expansion:space/planets/moon/sphere_top_sw ~-70 ~24 ~24 

execute if score #moon exp.timer_2 matches 15 run place template expansion:space/planets/moon/sphere_middle_se ~24 ~-23 ~24 
execute if score #moon exp.timer_2 matches 14 run place template expansion:space/planets/moon/sphere_bottom_se ~24 ~-70 ~24 
execute if score #moon exp.timer_2 matches 13 run place template expansion:space/planets/moon/sphere_top_se ~24 ~24 ~24 

execute if score #moon exp.timer_2 matches 12 run place template expansion:space/planets/moon/sphere_middle_nw ~-70 ~-23 ~-70 
execute if score #moon exp.timer_2 matches 11 run place template expansion:space/planets/moon/sphere_bottom_nw ~-70 ~-70 ~-70 
execute if score #moon exp.timer_2 matches 10 run place template expansion:space/planets/moon/sphere_top_nw ~-70 ~24 ~-70 

execute if score #moon exp.timer_2 matches 3 run summon minecraft:armor_stand ~ ~ ~ {Tags:["planet_structure","exp.moon"],NoGravity:1b}
execute if score #moon exp.timer_2 matches 2 run scoreboard players set #moon exp.gen_success 1
execute if score #moon exp.timer_2 matches 1 run scoreboard players set #mars exp.delay 200
scoreboard players remove #moon exp.timer_2 1
