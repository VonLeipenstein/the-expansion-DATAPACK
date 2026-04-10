# >>> generated function callers >>>
# Callers for expansion:blocks/lacrymae_extractor/check_valid
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/lacrymae_extractor/extract/main (1 caller) [WARN side/down 1]
# - function expansion:blocks/lacrymae_extractor/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.8 *[count=64] run return fail

execute unless items block ~ ~ ~ container.1 #expansion:extractable run return fail

execute unless items block ~ ~ ~ container.6 *[custom_data~{exp_item:{name:"fuel_cell"}}] run return fail

execute if function expansion:blocks/lacrymae_extractor/tank_full run return fail

return 1