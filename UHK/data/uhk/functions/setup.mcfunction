schedule function uhk:setup-timer 10s

scoreboard players reset @a

scoreboard objectives add uhk.deth deathCount

scoreboard objectives add uhk.health dummy

scoreboard objectives add uhk.HPup minecraft.used:minecraft.enchanted_golden_apple

scoreboard objectives add uhk.count.1 dummy

scoreboard objectives add uhk.deth.spawn deathCount

scoreboard objectives add uhk.deth.count deathCount

scoreboard objectives add uhk.leave dummy

scoreboard objectives setdisplay list uhk.health

scoreboard objectives modify uhk.health rendertype integer



team add spect

team modify spect color red

scoreboard objectives setdisplay sidebar.team.red uhk.health

scoreboard objectives modify uhk.health displayname {"text":"Alive","color":"green"}


tellraw @a {"text":"Datapack load [UHK]","color":"green"}
tellraw @a {"text":"By. Rogal","color":"green"}