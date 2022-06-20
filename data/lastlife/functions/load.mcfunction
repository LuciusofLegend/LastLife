#  Add lives score
scoreboard objectives add lives dummy
scoreboard objectives setdisplay belowName lives

#  Setup death detection
scoreboard objectives add deathdetector deathCount
scoreboard players set @a deathdetector 0

#  Setup a score to track who is a new player
scoreboard objectives add returning dummy

#  Setup boogeyman scores
scoreboard objectives add boogeyman dummy
scoreboard objectives add boogeykill dummy

#  Set gamerule instant respawn to true (for best effect on death)
gamerule doImmediateRespawn true