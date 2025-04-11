# Remove oxygen from entities that previously had oxygen but left the base
execute if function expansion:blocks/oxygenator/oxygenate/oxygen_link/not_found run return run function expansion:blocks/oxygenator/oxygenate/oxygen_link/remove

# Give oxygen to linked entities (who haven't yet recieved oxygen)
execute on origin run function expansion:blocks/oxygenator/oxygenate/give_oxygen
