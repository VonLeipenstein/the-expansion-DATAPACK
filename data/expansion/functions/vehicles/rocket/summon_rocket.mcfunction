summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["exp.rocket","exp.vehicle","smithed.block"],Passengers:[{id:"minecraft:interaction",Tags:["exp.rocket_rcdet","smithed.block","exp.rocket_interactor"],width:2f,height:1.5f,response:1b}],DisabledSlots:2039583}
loot replace entity @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest] armor.head loot expansion:vehicles/rocket

summon interaction ~0.6 ~3 ~ {Tags:["exp.rocket_interactor","exp.launch_button","smithed.block"],width:0.5f,height:0.5f,response:1b}
summon interaction ~-0.6 ~3 ~ {Tags:["exp.rocket_interactor","exp.fuel_button","smithed.block"],width:0.5f,height:0.5f,response:1b}

scoreboard players set @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest] exp.fuel_level 0