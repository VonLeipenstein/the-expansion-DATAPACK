data modify storage expansion:temp launchpad.stats[7] set value {text:"No Fuel Tank\ninserted into\nFuel Segment\n\nRightclick a\nFuel Segment with\na Fuel Tank to\ninsert it or swap it\nwith the current\nFuel Tank",color:"red"}

data modify storage expansion:temp launchpad.stats[5][2].color set value "red"

data modify storage expansion:temp launchpad.trip[1] set value {text:"⚠ No Fuel Tank ⚠",bold:false,color:"red"}
data modify storage expansion:temp launchpad.trip[2] set value {text:"\n----------------\n\nInsert a Fuel Tank\nto view launch\ncosts\n\n\n\n\n\n"}
data modify storage expansion:temp launchpad.trip[3] set value {text:""}