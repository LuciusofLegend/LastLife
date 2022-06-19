#  Reduce lives on death
scoreboard players remove @s lives 1

#  Display a death message using title
title @s title {"text":"You have died and lost a life","color": "#E08926"}
execute if score @s lives matches 1 run title @s title {"text":"You are on your last life!","color":"#FE3D1C"}

#  Put the player in spectator when they reach 0 lives
execute if score @s lives matches 0 run gamemode spectator
execute if score @s lives matches 0 run title @s title {"text": "You have been eliminated","color": "#EE2828"}

#  Reset the death detector
scoreboard players set @s deathdetector 0