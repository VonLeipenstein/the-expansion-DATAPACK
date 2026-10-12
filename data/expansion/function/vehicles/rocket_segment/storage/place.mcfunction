tag @s add exp.storage_segment

summon chest_minecart ~ ~ ~ {Tags:["exp.storage"],Invulnerable:1b,Silent:1b,CustomName:"Rocket Storage",CustomNameVisible:0b}
ride @n[type=chest_minecart,tag=exp.storage,distance=..0.1] mount @s