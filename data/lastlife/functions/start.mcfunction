#  Randomize lives between 3 and 5 for all players
function lastlife:rng/rand
execute as @a run scoreboard players operation @s lives = number RNG

#  Set all players to survival mode
gamemode survival @a
execute as @a if score @s lives matches 0 run gamemode spectator @s

#  Display a starting message using title
title @a times 15 25 10
title @a title {"text":"Last Life has begun!","color": "#41F405"}
title @a subtitle [{"text": "You have ","color": "#F7AF39"},{"score":{"name": "@s","objective": "lives"},"color": "#F8EC56"}, {"text": " lives","color": "#F7AF39"}]