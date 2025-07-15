## Parameters
# Input: #source exp.oxygen_max
# Output: #max exp.math

# (180/(x+8)-200)/40
# only exceeds 1 for y < 80
scoreboard players operation #x exp.math = @s exp.suit_integrity
scoreboard players add #x exp.math 8
scoreboard players set #out exp.math 1800000
scoreboard players operation #out exp.math /= #x exp.math
scoreboard players remove #out exp.math 20000
scoreboard players operation #out exp.math /= #20 exp.const
execute if score #out exp.math matches ..0 run scoreboard players set #out exp.math 0

# calculate the amount of oxygen points this refers tho
scoreboard players operation #max exp.math = #source exp.oxygen_max
scoreboard players operation #max exp.math *= #out exp.math
scoreboard players operation #max exp.math /= #1000000 exp.const

#tellraw @s [{text:"Max: "},{score:{name:"#source",objective:"exp.oxygen_max"}},\
            {text:" Integrity: "},{score:{name:"@s",objective:"exp.suit_integrity"}},\
            {text:" Loss: "},{score:{name:"#max",objective:"exp.math"}},\
            {text:" Percent: "},{score:{name:"#out",objective:"exp.math"}}]

return run scoreboard players get #max exp.math