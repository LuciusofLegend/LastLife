###  The end of a session


#  Send a message if the boogeyman fails
execute as @a if score @s boogeyman matches 1 unless score @s boogeykill matches 1.. run function lastlife:boogey/fail

#  Send another message after a delay
schedule function lastlife:session/endmessage 90t