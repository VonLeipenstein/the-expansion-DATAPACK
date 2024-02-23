# just the sin but with 90(Pi/2) added to the angle
scoreboard players add #input exp.math 90
execute unless score #input exp.math matches ..180 run scoreboard players remove #input exp.math 180
function expansion:utilities/math/sin



