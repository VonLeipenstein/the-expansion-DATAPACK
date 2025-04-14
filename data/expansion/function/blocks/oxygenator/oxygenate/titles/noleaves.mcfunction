title @s subtitle {translate:"exp_screentxt_oxygen_noleaves"}

execute if score #temp exp.oxygen_max matches 1 run return run title @s title {translate:"exp_screentxt_oxygen_pressurestop"}
title @s title {translate:"exp_screentxt_oxygen_pressurefail"}
