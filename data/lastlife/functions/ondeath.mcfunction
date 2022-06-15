#  Reduce lives
scoreboard players operation @s lives -= @s deathdetector

#  Display a death overlay
execute unless score @s lives matches 1 run title @s subtitle [{"text":"You have died","color": "red"},{"text": "and lost a life!" ,"color": "yellow"}]
execute if score @s lives matches 1 run title @a subtitle [{"text":"You are on your last life!","color":"dark_red"},{"text":" Destroy your enemies!","color":"gold"}]

#  Reset the death detector
scoreboard players set @s deathdetector 0