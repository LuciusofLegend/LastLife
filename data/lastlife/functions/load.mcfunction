#  Add lives score
scoreboard objectives add lives dummy
scoreboard objectives setdisplay belowName lives

#  Setup death detection
scoreboard objectives add deathdetector deathCount
scoreboard players set @a deathdetector 0

#  Setup timekeeper
scoreboard objectives add countdown dummy
scoreboard objectives add keeptime dummy
scoreboard players set timekeeper countdown 12000
scoreboard players set timekeeper keeptime 0

#  Setup boogeyman scores
scoreboard objectives add boogeyman dummy
scoreboard objectives add boogeykill dummy

#  Set gamerule instant respawn to true (for best effect on death)
gamerule doImmediateRespawn true