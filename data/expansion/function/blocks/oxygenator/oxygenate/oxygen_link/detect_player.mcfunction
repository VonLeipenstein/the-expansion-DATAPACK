# Cast a ray to this entity and check if it intersects
execute on origin facing entity @s feet if function expansion:blocks/oxygenator/oxygenate/oxygen_link/find_player run return 1

return fail