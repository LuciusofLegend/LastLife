#  Add lives score
scoreboard objectives add lives dummy
scoreboard objectives setdisplay belowName lives

#  Setup death detection
scoreboard objectives add deathdetector deathCount
scoreboard players set @a deathdetector 0

#  Setup timekeeper
scoreboard objectives add boogeycountdown dummy
scoreboard players set timekeeper boogeycountdown 12000

#  Setup boogeyman scores
scoreboard objectives add boogeyman dummy
scoreboard objectives add boogeykill dummy

#  Setup a way to track players who missed the first session
scoreboard objectives add session dummy

#  Set gamerule instant respawn to true (for best effect on death)
gamerule doImmediateRespawn true