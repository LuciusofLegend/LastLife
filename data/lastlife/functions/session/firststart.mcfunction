###  The start of the first session


#  Set all players to the correct gamemode
gamemode survival @a
execute as @a if score @s lives matches 0 run gamemode spectator @s

#  Set boogeyman scores to 0
scoreboard players set @a boogeyman 0
scoreboard players set @a boogeykill 0

#  Start boogeyman countdown
schedule function lastlife:boogey/warn 10800t

#  End the session in 2 hours
schedule function lastlife:session/end 7200s

#  Randomize player lives
function lastlife:randlives

#  Display a starting message using title
title @a times 20 45 10
title @a title {"text":"Last Life has begun!","color": "#41F405"}
title @a subtitle [{"text": "You have ","color": "#F7AF39"},{"score":{"name": "@s","objective": "lives"},"color": "#F8EC56"}, {"text": " lives","color": "#F7AF39"}]

#  Set online players to returning players
scoreboard players set @a returning 1