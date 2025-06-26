# Transformation Utilities

## Description
Functions for improving display entity transformations. Namely, features an improved transformation scheme which implements rotations around any point

## Usage
Functions and data storage use the `tu` namespace. Outputs from all functions are stored in the `out` tag of the `tu:io` storage space:
```
data get storage tu:io out
```

## Improved Transformations
Display entity transformations are decomposed into four steps: a rotation (`right_rotation`), a scaling step (`scale`), another rotation (`left_rotation`), and a translation (`translation`) in that order. Since the `translation` step occurs last, all rotatios occur at the same position which cannot be changed. The `tu:transform` function overcomes this by providing an additional translation step (`first_translation`) before the final rotation and translation steps. This scheme allows for rotation about any arbitrary point.

The `tu:transform` function is called with the tranformation steps as arguments:
```
function tu:transform {right_rotation:...,scale:...,first_translation:...,left_rotation:...,translation:...}
```
executed in the order:
1. `right_rotation`: The first rotation, in quaternion format.
2. `scale`: A scaling vector.
3. `first_translation`: The initial translation vector.
4. `left_rotation`: The second rotation, in quaternion format.
5. `translation`: The final translation vector.

The output is the calculated transformation which can be used in display entities.

## Other Functions
This datapack provides additional functions which may be convenient for working with transformations:

`eul2quat` converts rotation angles around the x, y, z axes to quaternion format; where `rotation` is a vector of angles in degrees from -180..179.99 describing an extrinsic rotation in the order x→y→z:
```
function tu:eul2quat {rotation:[x,y,z]}
```

`axang2quat` converts a rotation in axis/angle to quaternion format; where `axis` is the rotation axis, and `angle` is the rotation angle in degrees from -180..179.99:
```
function tu:axang2quat {axis:[...,...,...],angle:...}
```

`quatmult` calculates the product of two quaternions; where `quat1` and `quat2` are two quaternions:
```
function tu:quatmult {quat1:...,quat2:...}
```

## Example: Rotating about the center of a block display
The origin of a block display is located in the bottom corner of the display. A block display that is 1 block tall (i.e. `scale:[1f,1f,1f]`) is centered at an `[x,y,z]` position of `[0.5, 0.5, 0.5]`. Rotating about this center point can be achieved following the example below: 

```
## Rotate a block display 90° about the z axis centered on the middle of the block
# Initialize
data modify storage example transformation set value \
    {right_rotation:[0f,0f,0f,1f], \
    scale:[1f,1f,1f], \
    first_translation:[0f,0f,0f], \
    left_rotation:[0f,0f,0f,1f] \
    translation:[0f,0f,0f]}

# First step: translate center of block display to origin
data modify storage example transformation.first_translation set value [-0.5f,-0.5f,-0.5f]

# Second step: rotate block display
data modify storage example transformation.left_rotation set value [0f,0f,1f,0f]

# Third step: translate block display back to original position
data modify storage example transformation.translation set value [0.5f,0.5f,0.5f]

# Calculate transformation
function tu:transform with storage example transformation

# Store transformation in block display
data modify entity ... transformation set from storage tu:io out
```

## Limitations
1. `first_translation` and `translation` values are limited to ±1000.000 due to scoreboard overflow
2. Does not support affine transformation matrices as inputs.