#  Add lives score
scoreboard objectives add lives dummy
scoreboard objectives setdisplay belowName lives

#  Setup death detection
scoreboard objectives add deathdetector deathCount
scoreboard players set @a deathdetector 0

#  Set gamerule instant respawn to true (for best effect on death)
gamerule doImmediateRespawn true