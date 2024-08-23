# ran from the assembler AJ summon
# summon the main armor stand
summon minecraft:armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Rotation:[90f,0f],DisabledSlots:2039583,Tags:["exp.assembler","exp.block","smithed.block"]}

# set the block
setblock ^ ^-1 ^1 minecraft:barrel{CustomName:'{"translate":"exp_blocks_assembler_gui_name","color":"dark_gray"}'} replace

# initiate the gui
function expansion:blocks/assembler/gui

# make the root ride the base for easy accessibility through the passenger stack
ride @s mount @e[type=armor_stand,tag=exp.assembler,limit=1,sort=nearest]

# not sure why I did this but too scared to remove it
function animated_java:assembler/animations/ring_loop/stop
