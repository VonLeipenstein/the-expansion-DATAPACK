execute if score #target exp.unique_id matches 0 run return 1

execute if score #source exp.unique_id = #target exp.unique_id run return 1

return fail