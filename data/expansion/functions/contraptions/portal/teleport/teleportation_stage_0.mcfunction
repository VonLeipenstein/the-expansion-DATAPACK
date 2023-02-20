# Add a tag to the entity that is about to be teleported.
tag @e[distance=..0.6,type=#expansion:sentient,limit=1,sort=nearest,tag=!exp.teleported,tag=!exp.portal_core_rcdet,tag=!exp.inside_portal] add exp.inside_portal

# Copy the entire portal array to a placeholder array so I can safely perform operations on it.
data modify storage expansion:portal portal_out set from storage expansion:portal portal_array

# Run the function that searches the array for a portal with a matching color code.
function expansion:contraptions/portal/activation/search_match_code

# The function above also finds the current portals entry. This function identifies the current portal and removes it.
function expansion:contraptions/portal/teleport/filter_self

# test number of matches. There can be no more than 2 portals with the same color code.
function expansion:contraptions/portal/teleport/test_valid

# If everything is valid, proceed to the teleportation.
execute if entity @s[tag=exp.valid_portal] run function expansion:contraptions/portal/teleport/teleportation_stage_1
tag @s remove exp.valid_portal

# Remove inside tag. This tag is necessary to not make this function run every tick while someone is inside the portal
schedule function expansion:contraptions/portal/teleport/schedule_inside_tag 10t

# Clear the placeholder storage
data remove storage expansion:portal portal_out