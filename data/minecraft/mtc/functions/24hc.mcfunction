#Display 24-Hour Clock to Players Holding a Clock With the Value of Scoreboard Objective "timeconvention" Being 24:
execute if score minute daytime matches 0..9 run scoreboard players set leading0 daytime 0
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}}] at @s title @s actionbar ["",{"text":"Time: ","color":"dark_green","bold":true},{"score":{"name":"hour_original","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"minute","objective":"daytime"},"color":"dark_aqua","bold":true}]execute if score hour_original daytime matches 0..5 run title @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] actionbar ["",{"text":"Time: ","color":"dark_green","bold":true},{"score":{"name":"hour","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"minute","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":" AM","color":"dark_aqua","bold":true}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] at @s title @s actionbar ["",{"text":"Time: ","color":"dark_green","bold":true},{"score":{"name":"hour_original","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"minute","objective":"daytime"},"color":"dark_aqua","bold":true}]execute if score hour_original daytime matches 18..23 run title @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] actionbar ["",{"text":"Time: ","color":"dark_green","bold":true},{"score":{"name":"hour","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"minute","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":" AM","color":"dark_aqua","bold":true}]
scoreboard players reset leading0 daytime