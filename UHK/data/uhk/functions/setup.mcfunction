execute at @p[limit=1] run function uhk:spawn

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

scoreboard players set @e[tag=spawn] uhk.count.1 1

scoreboard players set @a uhk.deth 0

scoreboard players set @a uhk.health 10

team add spect

team modify spect color red

scoreboard objectives setdisplay sidebar.team.red uhk.health

scoreboard objectives modify uhk.health displayname {"text":"\u0412\u044b\u0436\u0438\u0432\u0448\u0438\u0435","color":"green"}

team modify spect prefix {"text":"[\u0412\u044b\u0431\u044b\u0432\u0448\u0438\u0439]","color":"red"}

tellraw @a {"text":"\u041f\u043b\u0430\u0433\u0438\u043d \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d [UHK]","color":"green"}