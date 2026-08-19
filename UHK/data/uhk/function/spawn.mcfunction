kill @e[ tag= spawn]
summon minecraft:marker ~ ~ ~ { Tags: ["spawn"] } 
tellraw @a {"text":"The main spawn point is set, you will spawn here as your friends (beds won't help)","color":"red"}
playsound minecraft:entity.allay.item_thrown master @a ~ ~ ~ 10 2