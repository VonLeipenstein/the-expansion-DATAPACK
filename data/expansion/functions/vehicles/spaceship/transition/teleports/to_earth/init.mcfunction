# --- only runs as the spaceship pilot

function expansion:vehicles/spaceship/transition/start

execute summon minecraft:marker run function expansion:vehicles/spaceship/transition/teleports/to_earth/teleport

function expansion:vehicles/spaceship/transition/remove_temp_tag
