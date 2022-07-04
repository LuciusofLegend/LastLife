#  Send a message that the boogeyman has failed in they're task
title @s times 15 40 10
title @s title {"text": "You have failed","color": "red"}

#  Reduce the boogeyman's lives by 1
execute as @a if score @s boogeyman matches 1 run scoreboard players set @s lives 1