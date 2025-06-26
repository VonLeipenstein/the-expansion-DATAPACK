#> get unit circle coordinates [cos(a), sin(a)] from angle a
# input angle ($a) from -180..179.99 scaled by 100 (1.00 ↦ 100)
# output vector [$cos(a), $sin(a)] scaled by 1000 (1.000 ↦ 1000)
# input angle used as indexes in list of precomputed (sin,cos) values
execute store result storage tu:data unit.key int 1 run scoreboard players get $a tu.math
execute if score $a tu.math matches 1.. run return run function tu:internal/unit/pos with storage tu:data unit
function tu:internal/unit/neg with storage tu:data unit