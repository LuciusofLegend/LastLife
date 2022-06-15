#  Reduce lives on death
scoreboard players operation @s lives -= @s deathdetector

#  Display a death message using title
title @a times 10 25 5
title @s subtitle {"text": "You have died!","color": "#ED3515"}
execute if score @s lives matches 1 run title @a subtitle [{"text":"You are on your last life!","color":"dark_red"},{"text":" Destroy your enemies!","color":"gold"}]

#  Put the player in spectator when they reach 0 lives
execute if score @s lives < finaldeath 1 run gamemode spectator

#  Reset the death detector
scoreboard players set @s deathdetector 0