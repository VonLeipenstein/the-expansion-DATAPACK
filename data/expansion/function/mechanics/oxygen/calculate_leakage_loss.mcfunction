## Parameters
# Input: #source exp.oxygen_max
# Output: #max exp.math

# 179/(x+8)-1
# only exceeds 1 for y < 80
scoreboard players operation #x exp.math = @s exp.suit_integrity
scoreboard players add #x exp.math 8
scoreboard players set #out exp.math 179
scoreboard players operation #out exp.math /= #x exp.math
scoreboard players remove #out exp.math 1

# calculate the amount of oxygen points this refers tho
# take 1/40th of that amount
scoreboard players operation #max exp.math = #source exp.oxygen_max
scoreboard players operation #max exp.math *= #out exp.math
scoreboard players operation #max exp.math /= #400 exp.const

tellraw @s [{text:"Max: "},{score:{name:"#source",objective:"exp.oxygen_max"}},\
            {text:" Integrity: "},{score:{name:"@s",objective:"exp.suit_integrity"}},\
            {text:" Loss: "},{score:{name:"#max",objective:"exp.math"}}]

return run scoreboard players get #max exp.math