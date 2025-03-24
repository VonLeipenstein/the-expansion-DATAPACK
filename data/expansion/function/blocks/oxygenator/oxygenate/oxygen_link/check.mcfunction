# give oxygen to entities who haven't yet recieved oxygen
execute on origin if entity @s[tag=exp.recieved_oxygen] run return run function expansion:blocks/oxygenator/oxygenate/give_oxygen

# remove oxygen from entities that previously had oxygen but left the base
execute if function expansion:blocks/oxygenator/oxygenate/oxygen_link/not_found run function expansion:blocks/oxygenator/oxygenate/oxygen_link/remove