# load all the scores
function expansion:load_scores

# trigger the generation of the solar system
function expansion:solar_system/generation/start_system_generation

# load the chunk in the utility dimension
execute in expansion:transporter_utility run forceload add 0 0