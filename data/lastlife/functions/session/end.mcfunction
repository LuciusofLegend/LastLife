###  The end of a session


#  Send a message if the boogeyman fails
execute as @a if score @s boogeyman matches 1 if score @s boogeykill matches 1.. run function lastlife:boogey/fail

#  Send another message after a delay
scoreboard players set timekeeper keeptime 1
scoreboard players set timekeepr countdown 0