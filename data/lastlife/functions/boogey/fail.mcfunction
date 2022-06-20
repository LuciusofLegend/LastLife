#  Send a message that the boogeyman has failed in they're task
title @s times 15 40 10
title @s title {"text": "You have failed","color": "#E38317"}
title @s subtitle {"text": "You Have Lost a Life to the Curse","color": "#F42B0D","bold": true}

#  Reduce the boogeyman's lives by 1
execute as @a if score @s boogeyman matches 1 run scoreboard players remove @s lives 1