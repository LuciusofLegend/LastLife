function lastlife:rng/rand
execute as @a run scoreboard players operation @s lives = number RNG

#  Send a message to an overlay
title @a subtitle {"text":"Last Life has begun!","color": "blue"}
title @a title [{"text": "You have ","color": "dark_green"},{"score":{"name": "@s","objective": "lives"},"color": "yellow"}, {"text": " lives","color": "dark_green"}]