execute if function expansion:blocks/launch_pad/has_passenger as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/launch_pad_occupied

execute if function expansion:blocks/launch_pad/has_linked_rocket as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/launch_pad_occupied

return fail