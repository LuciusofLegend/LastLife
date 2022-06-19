###  The start of the first session


#  Increment session for online players
scoreboard players set @a session 1

#  Set all players to the correct gamemode
gamemode survival @a
execute as @a if score @s lives matches 0 run gamemode spectator @s

#  Set boogeyman scores to 0
scoreboard players set @a boogeyman 0
scoreboard players set @a boogeykill 0

#  Randomize player lives
function lastlife:rng/rand
scoreboard players operation @s lives = number RNG

#  Display a starting message using title
title @a times 15 40 10
title @a title {"text":"Last Life has begun!","color": "#41F405"}
title @a subtitle [{"text": "You have ","color": "#F7AF39"},{"score":{"name": "@s","objective": "lives"},"color": "#F8EC56"}, {"text": " lives","color": "#F7AF39"}]