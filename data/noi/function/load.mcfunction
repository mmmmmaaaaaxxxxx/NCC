scoreboard objectives add noi.clicked minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add noi.math dummy
scoreboard objectives add noi.lifetime dummy
scoreboard objectives add noi.x1 dummy
scoreboard objectives add noi.y1 dummy
scoreboard objectives add noi.z1 dummy
scoreboard objectives add noi.x2 dummy
scoreboard objectives add noi.y2 dummy
scoreboard objectives add noi.z2 dummy
scoreboard objectives add noi.mana dummy
scoreboard objectives add noi.stored_mana dummy
scoreboard objectives add noi.ticks_without_spell dummy
scoreboard objectives add noi.max_mana dummy
scoreboard objectives add noi.settings dummy
scoreboard objectives add noi.cooldown dummy
scoreboard objectives add noi.raw_mana dummy
scoreboard objectives add noi.api dummy
scoreboard objectives add noi.lookup dummy
scoreboard objectives add noi.lookup_mana dummy
scoreboard objectives add noi.flint_count dummy
scoreboard objectives add noi.variant dummy
scoreboard objectives add noi.mana_math dummy

scoreboard players set #-1 noi.math -1
scoreboard players set #2 noi.math 2
scoreboard players set #3 noi.math 3
scoreboard players set #4 noi.math 4

function noi:setlookups
function noi:setlookups_mana

#I'd like the next two lines to not be necessary but I'm not confident that they are not used anywhere
data merge storage noi:att {generic_block:{generic_block:{}},generic_ball:{generic_ball:{}},null:{null:{}},ball_mod:{ball_mod:{}},generic_disc:{generic_disc:{}},generic_wool:{generic_wool:{}},generic_dye:{generic_dye:{}},generic_glass_pane:{generic_glass_pane:{}}}
data merge storage noi:lookup {slime_ball:{slime_ball:{}},slime_block:{slime_block:{}},honey_block:{honey_block:{}},anvil:{anvil:{}}}
data modify storage noi:data glass_colors set value {gray_stained_glass:{color:"0"},white_stained_glass:{color:"1"},light_gray_stained_glass:{color:"2"},black_stained_glass:{color:"3"},brown_stained_glass:{color:"4"},red_stained_glass:{color:"5"},orange_stained_glass:{color:"6"},yellow_stained_glass:{color:"7"},lime_stained_glass:{color:"8"},green_stained_glass:{color:"9"},cyan_stained_glass:{color:"10"},light_blue_stained_glass:{color:"11"},blue_stained_glass:{color:"12"},purple_stained_glass:{color:"13"},magenta_stained_glass:{color:"14"},pink_stained_glass:{color:"15"}}
data modify storage noi:data glass_pane_colors set value {gray_stained_glass_pane:{color:"0"},white_stained_glass_pane:{color:"1"},light_gray_stained_glass_pane:{color:"2"},black_stained_glass_pane:{color:"3"},brown_stained_glass_pane:{color:"4"},red_stained_glass_pane:{color:"5"},orange_stained_glass_pane:{color:"6"},yellow_stained_glass_pane:{color:"7"},lime_stained_glass_pane:{color:"8"},green_stained_glass_pane:{color:"9"},cyan_stained_glass_pane:{color:"10"},light_blue_stained_glass_pane:{color:"11"},blue_stained_glass_pane:{color:"12"},purple_stained_glass_pane:{color:"13"},magenta_stained_glass_pane:{color:"14"},pink_stained_glass_pane:{color:"15"}}
data modify storage noi:data dye_colors set value {gray_dye:{color:"0.278,0.310,0.322"},white_dye:{color:"0.976,1.000,0.996"},light_gray_dye:{color:"0.616,0.616,0.592"},black_dye:{color:"0.114,0.114,0.129"},brown_dye:{color:"0.514,0.329,0.196"},red_dye:{color:"0.690,0.180,0.149"},orange_dye:{color:"0.976,0.502,0.114"},yellow_dye:{color:"0.996,0.847,0.239"},lime_dye:{color:"0.502,0.780,0.122"},green_dye:{color:"0.369,0.486,0.086"},cyan_dye:{color:"0.086,0.612,0.612"},light_blue_dye:{color:"0.227,0.702,0.855"},blue_dye:{color:"0.235,0.267,0.667"},purple_dye:{color:"0.537,0.196,0.722"},magenta_dye:{color:"0.780,0.306,0.741"},pink_dye:{color:"0.953,0.545,0.667"}}
data modify storage noi:data wizard_names set value ["Dark King Grûtmore","Jeffery Bezos CEO of Amazon","Steve Jobs of the Apple Company","Former President Barack Obama","Herobrine","Legitimoose","Max","James","Mary","Robert","Patricia","John","Jennifer","Michael","Linda","David","Elizabeth","William","Barbara","Richard","Susan","Joseph","Jessica","Thomas","Sarah","Christopher","Karen","Charles","Lisa","Daniel","Nancy","Matthew","Betty","Anthony","Sandra","Mark","Margaret","Donald","Ashley","Steven","Kimberly","Andrew","Emily","Paul","Donna","Joshua","Michelle","Kenneth","Carol","Kevin","Amanda","Brian","Melissa","George","Deborah","Timothy","Stephanie","Ronald","Dorothy","Jason","Rebecca","Edward","Sharon","Jeffrey","Laura","Ryan","Cynthia","Jacob","Amy","Gary","Kathleen","Nicholas","Angela","Eric","Shirley","Jonathan","Brenda","Stephen","Emma","Larry","Anna","Justin","Pamela","Scott","Nicole","Brandon","Samantha","Benjamin","Katherine","Samuel","Christine","Gregory","Helen","Alexander","Debra","Patrick","Rachel","Frank","Carolyn","Raymond","Janet","Jack","Maria","Dennis","Catherine","Jerry","Heather","Tyler","Diane","Aaron","Olivia","Jose","Julie","Adam","Joyce","Nathan","Victoria","Henry","Ruth","Zachary","Virginia","Douglas","Lauren","Peter","Kelly","Kyle","Christina","Noah","Joan","Ethan","Evelyn","Jeremy","Judith","Walter","Andrea","Christian","Hannah","Keith","Megan","Roger","Cheryl","Terry","Jacqueline","Austin","Martha","Sean","Madison","Gerald","Teresa","Carl","Gloria","Harold","Sara","Dylan","Janice","Arthur","Ann","Lawrence","Kathryn","Jordan","Abigail","Jesse","Sophia","Bryan","Frances","Billy","Jean","Bruce","Alice","Gabriel","Judy","Joe","Isabella","Logan","Julia","Alan","Grace","Juan","Amber","Albert","Denise","Willie","Danielle","Elijah","Marilyn","Wayne","Beverly","Randy","Charlotte","Vincent","Natalie","Mason","Theresa","Roy","Diana","Ralph","Brittany","Bobby","Doris","Russell","Kayla","Bradley","Alexis","Philip","Lori","Eugene","Marie"]
data modify storage noi:data wand_adjectives set value ["Tactical","Secret","Catatonic","Dubious","Holy","Scuffed", "Rectangular", "Amorphous", "Memetic","Fleshy","Slimy","Moist","Grimy","Wiggling","Wiggling","Glowing","Haunted","Porous","Possessed","Powerful","Heavy","Coarse","Grainy","Cubed","Plated","Pickled","Weathered","Boring","Earthy","Asinine","Gelid","Envigored","Great","Pulsating","Ancient","Bland","Aloof","Unheard-of","Spiky","Hurtful","Dusty","Sanguine","Condensed","Enchanted","Cataclysmic","Mediocre","Overrated","Grandiose","Crumbling","Bloody","Superheated","Crystalline","Etched","Embossed","Gilded","Enraged","Visible","Exsanguinating","Creepy","Commanding","Charismatic","Iridescent","Imbued","Vile","Red","Orange","Yellow","Green","Blue","Purple","Ruinous","Good","Big","Small","Hot","Cold","Open","Closed","Nice","Mean","Angry","Sad","Happy","Long","Short","Hungry","Nice","Happy","Tidal","Vital","New","Old","Limp","Twisted","Tall","Short","Best","Worst","Other","Only","Available","Strange","Akward","Uncraftable","Thick","Mundane","American","Deadly","Iterative","Innovative","Illitarate","Sentient","Poor","Rich","Financial","Traditional","Religious","Popular","Unpopular","DIY","Used","Unused","Churlish","Successful","Serious","Common","Uncommon","Rare","Epic","Legendary","Mythical","Divine","Supreme","Special","Very Special","Capable","Dramatic","Efficient","Skinny","Stupid","Useless","Dumb","Extravagant","Famous","Cultural","Impressive","Unimpressive","Weak","Guilty","Suspicious","Sus","Runic","Broken","Feisty","Thankful","Highlighted","§lBold","§nUnderlined","§oItalicized","Obfuscated","Randomly Generated","Sinister","Rudimentary","Frigid","Lukewarm","Burning","Boiling","Searing","Chilling","Captivating","Magnetic","Ominous","Awe-Inspiring","Shy","Perfect","§kSecretive"]
data modify storage noi:data wand_nouns set value ["Edge","Literature","Tome","Coil","Stick","Wand","Staff","Shaft","Rod","Pole","Prism","Handle","Bar","Log","Axle","Club","Bat","Pencil","Twig","Branch","Straw","Pool Noodle","Tree Trunk","Throngler","Cane","Waxed Oxidized Cut Copper Stairs","Baton","Sprig","Scepter"]
data modify storage noi:data abstract_noun_adjectives set value ["Covert","Recursive","Dubious","Secret","Tactical","Tragic","Goofy","Funny","Silly","Disconcerting","Fatal","Great","Unheard-of","Hurtful","Enhanced","Enchanted","Cataclysmic","Infinite","Infinite","Bloody","Powerful","Violent","Awful","Horrific","Boring","Terrifying","Torturous","Extradimensional","Complete","Absolute","Basic","Advanced","Cultural","Ruinous","Impressive","Murderous","Suspicious","Dangerous","Perfect","Negative","Nonexistant","Destructive"]
data modify storage noi:data abstract_nouns set value ["Fractals","Strategy","Hijinks","Debauchery","Darkness","Splendor","Compassion","Fury","Terror","Existentialism","Love","Death","Destruction","Doom","Wizardry","Witchery","Crime","Longing","Wishes","Depression","Life","Gaiety","Power","Destiny","Beauty","Bravery","Brilliance","Brutality","Calmness","Charity","Wisdom","Wit","Anger","Anxiety","Apprehension","Clarity","Delight","Despair","Disbelief","Dissapointment","Grief","Happiness","Health","Healing","Sickness","Desperation","Misery","Strength","Romance","Weariness","Annihilation","Destruction","Screams","Rage","Hope","Doom","Light","Void","Isolation","Disappointment","Ruination","Anguish","Betrayal","Agony","Achievements","Ideas","Stillness","Peace","War","Patience","Domination","Greatness","Might","Eternity","Geometry","History","Chaos","Slaughter","Confusion","Monotony","Rhythm","Silence","Slipperiness","Suffering"]

data modify storage temp:local wand_lore set value []
