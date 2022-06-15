
#  Start message
tellraw @a {"text": "Welcome to Last Life, a semi-hardcore adventure!", "color": "#eb114c", "bold": true}

 #	Add RNG scores
scoreboard objectives add RNG dummy "Random NumGen"
scoreboard objectives add RNG_rp minecraft.custom:minecraft.walk_one_cm "Random NumGen-walk"


 #	Set initial RNG scores
execute unless score #const2 RNG matches 1.. run scoreboard players set #const2 RNG 3
scoreboard players add #prev_number RNG 0
scoreboard players set #m1 RNG -1
scoreboard players add #clock_time RNG 1

#  Set RNG range
scoreboard players set min RNG 3
scoreboard players set max RNG 5

#  Add lives score
scoreboard objectives add lives dummy
scoreboard objectives setdisplay belowName lives

#  Add death detector score
scoreboard objectives add deathdetector deathCount
scoreboard players set @a deathdetector 0

#  Set the title timings
title @a times 10 30 15

#  Set gamerule instant respawn to true (for best effect on death)
gamerule doImmediateRespawn true