execute if score #temp exp.bool matches 1 run item replace block ~ ~-1.5 ~ container.5 from entity @p[tag=exp.clicked] armor.head
execute if score #temp exp.bool matches 1 run return run item replace entity @p[tag=exp.clicked] armor.head with air

item replace block ~ ~-1.5 ~ container.5 from entity @p[tag=exp.clicked] weapon.mainhand
item replace entity @p[tag=exp.clicked] weapon.mainhand with air