## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp exp.math = in exp.math
scoreboard players operation #temp1 exp.math = in1 exp.math
execute if score #temp exp.math matches ..-1 run scoreboard players operation #temp exp.math *= #-1 exp.const
execute if score #temp1 exp.math matches ..-1 run scoreboard players operation #temp1 exp.math *= #-1 exp.const
scoreboard players operation #temp2 exp.math = #temp exp.math
scoreboard players operation #temp2 exp.math < #temp1 exp.math
scoreboard players operation #temp3 exp.math = #temp exp.math
scoreboard players operation #temp3 exp.math > #temp1 exp.math
scoreboard players operation #temp2 exp.math *= #1000 exp.const
scoreboard players operation #temp2 exp.math /= #temp3 exp.math
## s
scoreboard players operation #temp3 exp.math = #temp2 exp.math
scoreboard players operation #temp3 exp.math *= #temp3 exp.math
scoreboard players operation #temp3 exp.math /= #1000 exp.const
## r
scoreboard players operation out exp.math = #temp3 exp.math
scoreboard players operation out exp.math *= #-46496 exp.const
scoreboard players operation out exp.math /= #100000 exp.const
scoreboard players add out exp.math 1593
scoreboard players operation out exp.math *= #temp3 exp.math
scoreboard players operation out exp.math /= #1000 exp.const
scoreboard players remove out exp.math 3276
scoreboard players operation out exp.math *= #temp3 exp.math
scoreboard players operation out exp.math /= #1000 exp.const
scoreboard players operation out exp.math *= #temp2 exp.math
scoreboard players operation out exp.math /= #10000 exp.const
scoreboard players operation out exp.math += #temp2 exp.math
execute if score #temp1 exp.math > #temp exp.math run scoreboard players remove out exp.math 1570
execute if score #temp1 exp.math > #temp exp.math run scoreboard players operation out exp.math *= #-1 exp.const
execute if score in exp.math matches ..-1 run scoreboard players remove out exp.math 3141
execute if score in exp.math matches ..-1 run scoreboard players operation out exp.math *= #-1 exp.const
execute if score in1 exp.math matches ..-1 run scoreboard players operation out exp.math *= #-1 exp.const
## rad 2 deg
scoreboard players operation out exp.math *= #57295 exp.const
scoreboard players operation out exp.math /= #1000000 exp.const