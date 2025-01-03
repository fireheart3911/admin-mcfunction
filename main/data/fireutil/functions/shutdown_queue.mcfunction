# Calculate minutes and seconds
scoreboard players operation shutdown_countdown_minutes system = shutdown_countdown system
scoreboard players operation shutdown_countdown_minutes system /= 1200
scoreboard players operation shutdown_countdown_seconds system = shutdown_countdown system
scoreboard players operation shutdown_countdown_seconds system %= 1200
scoreboard players operation shutdown_countdown_seconds system /= 20

# Announce at specific times
execute if score @s system matches 72000 run title @a title {"text":"Server shutting down in 60:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 54000 run title @a title {"text":"Server shutting down in 45:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 36000 run title @a title {"text":"Server shutting down in 30:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 18000 run title @a title {"text":"Server shutting down in 15:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 12000 run title @a title {"text":"Server shutting down in 10:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 6000 run title @a title {"text":"Server shutting down in 5:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 2400 run title @a title {"text":"Server shutting down in 2:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 1200 run title @a title {"text":"Server shutting down in 1:00","color":"red","bold":true}
execute if score shutdown_countdown system matches 600 run title @a title {"text":"Server shutting down in 0:30","color":"red","bold":true}
execute if score shutdown_countdown system matches 300 run title @a title {"text":"Server shutting down in 0:15","color":"red","bold":true}
execute if score shutdown_countdown system matches 200 run title @a title {"text":"Server shutting down in 0:10","color":"red","bold":true}
execute if score shutdown_countdown system matches 100 run title @a title {"text":"Server shutting down in 0:05","color":"red","bold":true}
execute if score shutdown_countdown system matches 60 run title @a title {"text":"Server shutting down in 0:03","color":"red","bold":true}
execute if score shutdown_countdown system matches 40 run title @a title {"text":"Server shutting down in 0:02","color":"red","bold":true}
execute if score shutdown_countdown system matches 20 run title @a title {"text":"Server shutting down in 0:01","color":"red","bold":true}


execute if score shutdown_countdown system matches 72000 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 54000 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 36000 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 18000 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 12000 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 6000 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 2400 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 1200 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 600 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 300 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 200 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 100 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 60 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 40 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score shutdown_countdown system matches 20 run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

scoreboard players remove shutdown_countdown system 1


execute if score shutdown_countdown system matches 0 run function fireutil:shutdown
execute unless score shutdown_countdown system matches 0 run schedule function fireutil:shutdown_queue 1t
