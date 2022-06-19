###  The start of any session past the first one

#  Set all players to the correct gamemode
gamemode survival @a
execute as @a if score @s lives matches 0 run gamemode spectator @s

#  Set boogeyman scores to 0
scoreboard players set @a boogeyman 0
scoreboard players set @a boogeykill 0

#  Randomize lives for new players
execute as @a unless score @s session matches 1 run function lastlife:randlives

#  Send a message to the players
title @a times 15 40 10
execute as @a if score @s session matches 1 run title @s title {"text": "Welcome Back to Last Life","color": "#41F405"}
execute as @a unless score @s session matches 1 run title @s title {"text": "Welcome to Last Life","color": "#41F405"}
execute as @a unless score @s session matches 1 run title @a subtitle [{"text": "You have ","color": "#F7AF39"},{"score":{"name": "@s","objective": "lives"},"color": "#F8EC56"}, {"text": " lives","color": "#F7AF39"}]