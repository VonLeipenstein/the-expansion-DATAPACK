# permanently ignore entities that are not compressors or players
execute unless function expansion:blocks/terraformer/valid_entity run return run tag @s add exp.terraformer.ignore

# 
function expansion:utilities/error_messages/oxygen_detected

# link other entities
data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute summon snowball run function expansion:blocks/terraformer/oxygen_link/create