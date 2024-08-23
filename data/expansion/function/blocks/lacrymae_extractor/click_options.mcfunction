advancement revoke @s only expansion:utility/extractor_rc
advancement revoke @s only expansion:utility/extractor_lc

execute as @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest] run function expansion:blocks/lacrymae_extractor/display/swap
