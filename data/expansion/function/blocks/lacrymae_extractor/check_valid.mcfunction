execute if items block ~ ~ ~ container.8 *[count=64] run return fail

execute unless items block ~ ~ ~ container.1 #expansion:extractable run return fail

execute unless items block ~ ~ ~ container.6 *[custom_data~{exp_item:{name:"fuel_canister"}}] run return fail

execute if function expansion:blocks/lacrymae_extractor/tank_full run return fail

return 1