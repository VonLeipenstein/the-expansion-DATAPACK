execute unless items block ~ ~ ~ container.0 * run function expansion:blocks/oxygenator/gui/buttons/toggle_air
execute unless items block ~ ~ ~ container.1 * if predicate expansion:dimension/oxygen_absent run function expansion:blocks/oxygenator/gui/buttons/toggle_scan
execute unless items block ~ ~ ~ container.2 * run function expansion:blocks/oxygenator/gui/buttons/toggle_cube

function expansion:blocks/oxygenator/gui/main