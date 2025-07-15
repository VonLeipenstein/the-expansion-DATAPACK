# Copy the players armor to a temporary storage
function expansion:utilities/copy_armor_to_storage

# Loop through the entries in this storage
execute store result score #get_armor exp.max_range run data get storage expansion:temp player.armor
function expansion:spacesuits/get_armor_modules/storage_loop
scoreboard players reset #get_armor exp.max_range