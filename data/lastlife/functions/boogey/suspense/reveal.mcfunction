#  Randomize the boogeyman and send a message to everyone
title @a times 15 60 10
execute as @a if score @s boogeyman matches 1 run title @s title {"text": "The Boogeyman","color": "red"}
execute as @a if score @s boogeyman matches 0 run title @s title {"text": "Not the Boogeyman","color": "green"}