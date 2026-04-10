# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/prepare/initialize_models
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/place/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

data merge entity @s {CustomNameVisible:0b,teleport_duration:20,brightness:{sky:15,block:15}}

# prepare text displays
execute on passengers if entity @s[tag=exp.planetarium_text_display] run function expansion:blocks/planetarium/prepare/planet_names
#execute on passengers if entity @s[tag=exp.planetarium_infoboard] run function expansion:blocks/planetarium/prepare/infoboard

tag @s add exp.planetarium_part
execute on passengers run tag @s add exp.planetarium_part
tag @s add smithed.block

# set item data
data merge entity @s[tag=exp.mini_sun] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;29464294,160580508,-1779136758,1804506042],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMzNzgzMmM0MTM1MjU1NTU1M2Q4NmFhYWUxMzQxOTMzMWUzYWRlOTk3YmNlMGI4MTEzN2Q1MjA0ZTRjZGU3ZSJ9fX0="}]}}}}
data merge entity @s[tag=exp.mini_earth] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;162119669,710429448,-1690736789,-84268047],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY5MTk2YjMzMGM2Yjg5NjJmMjNhZDU2MjdmYjZlY2NlNDcyZWFmNWM5ZDQ0Zjc5MWY2NzA5YzdkMGY0ZGVjZSJ9fX0="}]}}}}
data merge entity @s[tag=exp.mini_moon] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;863215294,-1780921430,-1773460256,1982824210],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAwYTFhN2JiMDdmZGI0ZTZhODZlMzQxODE2ZTg4NDNkZGFmN2NmMzcxM2EzNjY2ZDc0YjcyZjk4NjE5ZjA2MyJ9fX0="}]}}}}
data merge entity @s[tag=exp.mini_mars] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;863215294,-1780921430,-1773460256,1982824210],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM3ODU3ZTE2OWVkMzdiMjQ4OTVjM2ZkZTQyNjJkYWU2ZTg3NDI4NjFlYjczZWRhMTU0M2NiNGMwM2E2N2UzIn19fQ=="}]}}}}
data merge entity @s[tag=exp.mini_venus] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;863215294,-1780921430,-1773460256,1982824210],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGVmMTQ3ZGRjOTA4ZTY4MjVjMjI5OTk3YWE1Mjk3NjFmNTE2OTFhMTFjOTU1MTI5YTIzMzYzMmQ1NTQ4NzVlIn19fQ=="}]}}}}
data merge entity @s[tag=exp.mini_jupiter] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;863215294,-1780921430,-1773460256,1982824210],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjhhYWE4YTM1NjFlODBlZjFmOTU2MWYxNzIxMWU3NzBkZTE4YTlmOThjMjY5MWVjZjlkNjk2NTU5YTFiOTE4YyJ9fX0="}]}}}}
data merge entity @s[tag=exp.mini_europa] {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;863215294,-1780921430,-1773460256,1982824210],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJiZjFlNDVlMzEwMTE1NjZjMDY1MWY0ZjNlMDI3YjU4M2M3NmVhNTE4ODBkNTRlNWQ3NDdjMzFiZDA3OTgwMSJ9fX0="}]}}}}
data merge entity @s[tag=exp.mini_ship] {item:{id:"minecraft:carrot_on_a_stick",count:1,components:{item_model:"expansion:vehicles/spaceship"}}}

# set size
scoreboard players set @s[tag=exp.mini_sun] exp.size 3500
scoreboard players set @s[tag=exp.mini_earth] exp.size 1100
scoreboard players set @s[tag=exp.mini_moon] exp.size 400
scoreboard players set @s[tag=exp.mini_mars] exp.size 700
scoreboard players set @s[tag=exp.mini_venus] exp.size 900
scoreboard players set @s[tag=exp.mini_jupiter] exp.size 2500
scoreboard players set @s[tag=exp.mini_europa] exp.size 400
scoreboard players set @s[tag=exp.mini_ship] exp.size 150
scoreboard players set @s[tag=exp.mini_drone1] exp.size 200
scoreboard players set @s[tag=exp.mini_drone2] exp.size 200
scoreboard players set @s exp.size_mod 100

# set distance
scoreboard players set @s[tag=exp.mini_sun] exp.distance 0
scoreboard players set @s[tag=exp.mini_earth] exp.distance 400
scoreboard players set @s[tag=exp.mini_moon] exp.distance 100
scoreboard players set @s[tag=exp.mini_mars] exp.distance 500
scoreboard players set @s[tag=exp.mini_venus] exp.distance 300
scoreboard players set @s[tag=exp.mini_jupiter] exp.distance 600
scoreboard players set @s[tag=exp.mini_europa] exp.distance 200
scoreboard players set @s exp.distance_mod 100

# set offset
scoreboard players set @s[tag=exp.mini_sun] exp.offset 300
scoreboard players set @s[tag=exp.mini_earth] exp.offset -500
scoreboard players set @s[tag=exp.mini_moon] exp.offset -200
scoreboard players set @s[tag=exp.mini_mars] exp.offset -500
scoreboard players set @s[tag=exp.mini_venus] exp.offset -400
scoreboard players set @s[tag=exp.mini_jupiter] exp.offset -300
scoreboard players set @s[tag=exp.mini_europa] exp.offset -500
scoreboard players set @s exp.offset_mod 100

scoreboard players operation #temp exp.size = @s exp.size
function expansion:blocks/planetarium/set_size