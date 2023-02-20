# taked three inputs: #roll, #pitch and #yaw

scoreboard players operation #roll exp.math /= #2 exp.const
scoreboard players operation #pitch exp.math /= #2 exp.const
scoreboard players operation #yaw exp.math /= #2 exp.const

scoreboard players operation #input exp.math = #roll exp.math
function expansion:utilities/math/sin
scoreboard players operation #sin.roll exp.math = #num exp.math
function expansion:utilities/math/cos
scoreboard players operation #cos.roll exp.math = #num exp.math

scoreboard players operation #input exp.math = #pitch exp.math
function expansion:utilities/math/sin
scoreboard players operation #sin.pitch exp.math = #num exp.math
function expansion:utilities/math/cos
scoreboard players operation #cos.pitch exp.math = #num exp.math

scoreboard players operation #input exp.math = #yaw exp.math
function expansion:utilities/math/sin
scoreboard players operation #sin.yaw exp.math = #num exp.math
function expansion:utilities/math/cos
scoreboard players operation #cos.yaw exp.math = #num exp.math


scoreboard players operation #quat.x exp.math = #sin.roll exp.math
scoreboard players operation #quat.x exp.math *= #cos.pitch exp.math
scoreboard players operation #quat.x exp.math *= #cos.yaw exp.math
scoreboard players operation #quat.x_1 exp.math = #cos.roll exp.math
scoreboard players operation #quat.x_1 exp.math *= #sin.pitch exp.math
scoreboard players operation #quat.x_1 exp.math *= #sin.yaw exp.math

scoreboard players operation #quat.y exp.math = #cos.roll exp.math
scoreboard players operation #quat.y exp.math *= #sin.pitch exp.math
scoreboard players operation #quat.y exp.math *= #cos.yaw exp.math
scoreboard players operation #quat.y_1 exp.math = #sin.roll exp.math
scoreboard players operation #quat.y_1 exp.math *= #cos.pitch exp.math
scoreboard players operation #quat.y_1 exp.math *= #sin.yaw exp.math

scoreboard players operation #quat.z exp.math = #cos.roll exp.math
scoreboard players operation #quat.z exp.math *= #cos.pitch exp.math
scoreboard players operation #quat.z exp.math *= #sin.yaw exp.math
scoreboard players operation #quat.z_1 exp.math = #sin.roll exp.math
scoreboard players operation #quat.z_1 exp.math *= #sin.pitch exp.math
scoreboard players operation #quat.z_1 exp.math *= #cos.yaw exp.math

scoreboard players operation #quat.w exp.math = #cos.roll exp.math
scoreboard players operation #quat.w exp.math *= #cos.pitch exp.math
scoreboard players operation #quat.w exp.math *= #cos.yaw exp.math
scoreboard players operation #quat.w_1 exp.math = #sin.roll exp.math
scoreboard players operation #quat.w_1 exp.math *= #sin.pitch exp.math
scoreboard players operation #quat.w_1 exp.math *= #sin.yaw exp.math

scoreboard players operation #quat.x exp.math -= #quat.x_1 exp.math
scoreboard players operation #quat.y exp.math += #quat.y_1 exp.math
scoreboard players operation #quat.z exp.math -= #quat.z_1 exp.math
scoreboard players operation #quat.w exp.math += #quat.w_1 exp.math