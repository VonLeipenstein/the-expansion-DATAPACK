# just the sun but with 90(Pi/2) added to the angle
scoreboard players operation #input exp.math += #90 exp.const
execute unless score #input exp.math matches ..180 run scoreboard players operation #input exp.math -= #180 exp.const
function expansion:utilities/math/sin



