#code from noi:spell/clicked.mcfunction
execute if entity @s[nbt={SelectedItem:{tag:{noi.wand:1b,noi.wand_format:1}}}] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s SelectedItem.tag.Spell
execute if entity @s[nbt={SelectedItem:{tag:{noi.wand:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{noi.wand_format:1}}}] run tellraw @s {"text":"This wand is out of date! Please recompile it to update it to the most recent version!","color":"red"}

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{noi.wand:1b,noi.wand_format:1}}]}] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s Inventory[{Slot:-106b}].tag.Spell
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{noi.wand:1b}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{noi.wand_format:1}}]}] run tellraw @s {"text":"The wand in your offhand is out of date! Please recompile it to update it to the most recent version!","color":"red"}

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
