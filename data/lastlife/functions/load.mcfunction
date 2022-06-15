
#  Start message
tellraw @a {"text": "Welcome to Last Life, a semi-hardcore adventure!", "color": "#eb114c", "bold": true}

#  Add Lives score
scoreboard objectives add Lives trigger

#  Set random range
scoreboard players set min RNG 3
scoreboard players set max RNG 5