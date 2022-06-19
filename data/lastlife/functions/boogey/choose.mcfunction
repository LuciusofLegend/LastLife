#  Randomize the boogeyman and send a message to everyone
title @a times 15 60 10
scoreboard players set @r boogeyman 1
execute as @a if score @s boogeyman matches 1 run title @s title {"text": "The Boogeyman","color": "#F42B0D"}
execute as @a if score @s boogeyman matches 1 run title @s subtitle ["",{"text": "You Are Cursed!  You Must ","color": "#E38317","bold": true},{"text": " Kill Another","color": "#F42B0D","bold": true},{"text": " to Survive","color": "#E38317","bold": true}]
execute as @a if score @s boogeyman matches 0 run title @s title {"text": "Not the Boogeyman","color": "#7ED724"}
execute as @a if score @s boogeyman matches 0 run title @s subtitle ["",{"text": "You are Safe... ","color": "#17ACE3"},{"text": "From the Curse","color": "#E31747"}]