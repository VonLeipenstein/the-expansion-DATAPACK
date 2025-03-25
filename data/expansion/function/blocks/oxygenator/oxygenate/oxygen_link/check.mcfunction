# remove oxygen from entities that previously had oxygen but left the base
execute if function expansion:blocks/oxygenator/oxygenate/oxygen_link/not_found run return run function expansion:blocks/oxygenator/oxygenate/oxygen_link/remove

# give oxygen to entities who haven't yet recieved oxygen
execute unless function expansion:blocks/oxygenator/oxygenate/oxygen_link/not_found on origin run function expansion:blocks/oxygenator/oxygenate/give_oxygen
