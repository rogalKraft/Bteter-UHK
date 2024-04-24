#start
execute as @a[tag=!player] run function uhk:start
scoreboard players set @e[tag=spawn] uhk.count.1 1
# 10 жизней
execute as @a[scores={uhk.deth=0}] run attribute @s minecraft:generic.max_health base set 20

execute as @a[scores={uhk.deth=1}] run attribute @s minecraft:generic.max_health base set 18

execute as @a[scores={uhk.deth=2}] run attribute @s minecraft:generic.max_health base set 16

execute as @a[scores={uhk.deth=3}] run attribute @s minecraft:generic.max_health base set 14

execute as @a[scores={uhk.deth=4}] run attribute @s minecraft:generic.max_health base set 12

execute as @a[scores={uhk.deth=5}] run attribute @s minecraft:generic.max_health base set 10

execute as @a[scores={uhk.deth=6}] run attribute @s minecraft:generic.max_health base set 8

execute as @a[scores={uhk.deth=7}] run attribute @s minecraft:generic.max_health base set 6

execute as @a[scores={uhk.deth=8}] run attribute @s minecraft:generic.max_health base set 4

execute as @a[scores={uhk.deth=9}] run attribute @s minecraft:generic.max_health base set 2

execute as @a[scores={uhk.deth=10..}] run gamemode spectator @s
execute as @a[scores={uhk.deth=10..}] run scoreboard players set @s uhk.deth.spawn 0
execute as @a[scores={uhk.deth=10..}] run scoreboard players reset @s uhk.health
execute as @a[scores={uhk.deth=10..}] run team join spect @s

# востановление хп
execute as @a[scores= {uhk.HPup=1 }] run scoreboard players operation @s uhk.deth -= @e[tag=spawn,limit=1] uhk.count.1


# безопасность от переедания
execute as @a[scores={uhk.deth=..-1}] run scoreboard players set @s uhk.deth 0

#тп на спавн при смерти
execute as @a[gamemode=spectator ,scores={uhk.deth.spawn=1..}] run tp @s @e[limit=1,tag=spawn]

execute as @a[gamemode=spectator ,scores={uhk.deth.spawn=1..}] run gamemode survival @s

execute as @a[gamemode=spectator,scores={uhk.deth.spawn=1..}] run scoreboard players set @s uhk.deth.spawn 0

# таблица хп

## при смерти
execute as @a[scores={uhk.deth.count=1..}] run scoreboard players operation @s uhk.health -= @e[tag=spawn,limit=1] uhk.count.1

execute as @a[scores={uhk.deth.count=1..}] run scoreboard players set @s uhk.deth.count 0

## при востановлении 
execute as @a[scores= {uhk.HPup=1 }] run scoreboard players operation @s uhk.health += @e[tag=spawn,limit=1] uhk.count.1

execute as @a[scores= {uhk.health=11..}] run scoreboard players set @s uhk.health 10

execute as @a[scores={uhk.HPup=1}] run scoreboard players reset @s uhk.HPup

# окончательно выбыл тег

execute as @a[scores={uhk.deth=10..}] run scoreboard players add @s uhk.leave 1

execute as @a[scores={uhk.leave=10}] run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" Finally dropped out","color":"dark_red"}]

execute as @a[scores={uhk.leave=10}] run playsound minecraft:entity.wither.death player @a ~ ~ ~ 10 2 1