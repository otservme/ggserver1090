local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)			
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)			
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)		
end
function onThink()
	local npc = getNpcCid()
	if (getCreatureOutfit(npc).lookType == 80) then
     		doCreatureChangeOutfit(npc, {lookType = 51})
	else 
     		doCreatureChangeOutfit(npc, {lookType = 80})  
	end
	npcHandler:onThink()			
end

local function getTable()
	local list = {
	{id = 2532,		buy = 5000,		sell = 900,		name='Ancient Shield'},
	{id = 2489,		buy = 1500,		sell = 400,		name='Dark Armor'},
	{id = 2490,		buy = 1000,		sell = 250,		name='Dark Helmet'},
	{id = 2396,		buy = 5000,		sell = 0,		name='Ice Rapier'},
	{id = 2409,		buy = 6000,		sell = 900,		name='Serpent Sword'},
	{id = 2529,		buy = 0,		sell = 800,		name='Black Shield'},
	{id = 7428,		buy = 0,		sell = 10000,	name='Bonebreaker'},
	{id = 2434,		buy = 0,		sell = 2000,	name='Dragon Hammer'},
	{id = 7419,		buy = 0,		sell = 15000,	name='Dreaded Cleaver'},
	{id = 7860,		buy = 0,		sell = 2000,	name='Earth Knight Axe'},
	{id = 7875,		buy = 0,		sell = 2000,	name='Energy Knight Axe'},
	{id = 7750,		buy = 0,		sell = 2000,	name='Fiery Knight Axe'},
	{id = 2393,		buy = 0,		sell = 17000,	name='Giant Sword'},
	{id = 7407,		buy = 0,		sell = 8000,	name='Haunted Blade'},
	{id = 7769,		buy = 0,		sell = 2000,	name='Icy Knight Axe'},
	{id = 2476,		buy = 0,		sell = 5000,	name='Knight Armor'},
	{id = 2430,		buy = 0,		sell = 2000,	name='Knight Axe'},
	{id = 2477,		buy = 0,		sell = 5000,	name='Knight Legs'},
	{id = 2663,		buy = 0,		sell = 150,		name='Mystic Turban'},
	{id = 7421,		buy = 0,		sell = 22000,	name='Onyx Flail'},
	{id = 7411,		buy = 0,		sell = 20000,	name='Ornamented Axe'},
	{id = 2411,		buy = 0,		sell = 50,		name='Poison Dagger'},
	{id = 2436,		buy = 0,		sell = 6000,	name='Skull Staff'},
	{id = 2479,		buy = 0,		sell = 500,		name='Strange Helmet'},
	{id = 7413,		buy = 0,		sell = 4000,	name='Titan Axe'},
	{id = 2528,		buy = 0,		sell = 8000,	name='Tower Shield'},
	{id = 2534,		buy = 0,		sell = 15000,	name='Vampire Shield'},
	{id = 2475,		buy = 0,		sell = 5000,	name='Warrior Helmet'},
	{id = 7436,		sell = 5000,		buy = 0,		name = 'Angelic Axe'},
	{id = 2656,		sell = 10000,		buy = 0,		name = 'Blue Robe'},
	{id = 2518,		sell = 1200,		buy = 7000,		name = 'Bonelord Shield'},
	{id = 2195,		sell = 30000,		buy = 0,		name = 'Boots of Haste'},
	{id = 2413,		sell = 500,			buy = 0,		name = 'Broadsword'},
	{id = 7412,		sell = 18000,		buy = 0,		name = 'Butcher\'s Axe'},
	{id = 2487,		sell = 12000,		buy = 0,		name = 'Crown Armor'},
	{id = 2491,		sell = 2500,		buy = 0,		name = 'Crown Helmet'},
	{id = 2488,		sell = 12000,		buy = 0,		name = 'Crown Legs'},
	{id = 2519,		sell = 8000,		buy = 0,		name = 'Crown Shield'},
	{id = 2497,		sell = 6000,		buy = 0,		name = 'Crusader Helmet'},
	{id = 2414,		sell = 9000,		buy = 0,		name = 'Dragon Lance'},
	{id = 2516,		sell = 4000,		buy = 0,		name = 'Dragon Shield'},
	{id = 7854,		sell = 1000,		buy = 0,		name = 'Earth Spike Sword'},
	{id = 7868,		sell = 1200,		buy = 0,		name = 'Earth War Hammer'},
	{id = 7869,		sell = 1000,		buy = 0,		name = 'Energy Spike Sword'},
	{id = 7883,		sell = 1200,		buy = 0,		name = 'Energy War Hammer'},
	{id = 7744,		sell = 1000,		buy = 0,		name = 'Fiery Spike Sword'},
	{id = 7758,		sell = 1200,		buy = 0,		name = 'Fiery War Hammer'},
	{id = 2432,		sell = 8000,		buy = 0,		name = 'Fire Axe'},
	{id = 2392,		sell = 4000,		buy = 0,		name = 'Fire Sword'},
	{id = 7454,		sell = 3000,		buy = 0,		name = 'Glorious Axe'},
	{id = 2515,		sell = 2000,		buy = 0,		name = 'Guardian Shield'},
	{id = 2396,		sell = 1000,		buy = 0,		name = 'Ice Rapier'},
	{id = 7763,		sell = 1000,		buy = 0,		name = 'Icy Spike Sword'},
	{id = 7777,		sell = 1200,		buy = 0,		name = 'Icy War Hammer'},
	{id = 2486,		sell = 900,			buy = 8000,		name = 'Noble Armor'},
	{id = 2425,		sell = 500,			buy = 3000,		name = 'Obsidian Lance'},
	{id = 2539,		sell = 16000,		buy = 0,		name = 'Phoenix Shield'},
	{id = 7410,		sell = 20000,		buy = 0,		name = 'Queen\'s Sceptre'},
	{id = 2498,		sell = 30000,		buy = 0,		name = 'Royal Helmet'},
	{id = 7451,		sell = 10000,		buy = 0,		name = 'Shadow Sceptre'},
	{id = 2383,		sell = 1000,		buy = 8000,		name = 'Spike Sword'},
	{id = 7391,		sell = 16000,		buy = 0,		name = 'Thaian Sword'},
	{id = 2391,		sell = 1200,		buy = 10000,	name = 'War Hammer'},
	{id = 2201,		buy = 1000,		sell = 100,		name = 'Dragon Necklace'},
	{id = 2213,		buy = 2000,		sell = 100,		name = 'Dwarven Ring'},
	{id = 2167,		buy = 2000,		sell = 100,		name = 'Energy Ring'},
	{id = 2168,		buy = 900,		sell = 50,		name = 'Life Ring'},
	{id = 2164,		buy = 5000,		sell = 250,		name = 'Might Ring'},
	{id = 2200,		buy = 700,		sell = 100,		name = 'Protection Amulet'},
	{id = 2216,		buy = 2000,		sell = 100,		name = 'Ring of Healing'},
	{id = 2170,		buy = 100,		sell = 50,		name = 'Silver Amulet'},
	{id = 2161,		buy = 100,		sell = 30,		name = 'Strange Talisman'},
	{id = 2169,		buy = 2000,		sell = 100,		name = 'Time Ring'},
	{id = 2327,		buy = 0,		sell =  100,	name = 'Ankh'},
	{id = 18412,	buy = 0,		sell =  6500,	name = 'Glacial Rod'},
	{id = 2183,		buy = 0,		sell =  3000,	name = 'Hailstorm Rod'},
	{id = 2186,		buy = 0,		sell =  200,	name = 'Moonlight Rod'},
	{id = 18411,	buy = 0,		sell =  6000,	name = 'Muck Rod'},
	{id = 2194,		buy = 0,		sell =  50,		name = 'Mysterious Fetish'},
	{id = 2185,		buy = 0,		sell =  1000,	name = 'Necrotic Rod'},
	{id = 8911,		buy = 0,		sell =  1500,	name = 'Northwind Rod'},
	{id = 2182,		buy = 0,		sell =  100,	name = 'Snakebite Rod'},
	{id = 8912,		buy = 0,		sell =  3600,	name = 'Springsprout Rod'},
	{id = 2181,		buy = 0,		sell =  2000,	name = 'Terra Rod'},
	{id = 8910,		buy = 0,		sell =  4400,	name = 'Underworld Rod'},
	{name = 'Axe Ring',				id = 2208,			sell = 100,			buy = 500},
	{name = 'Club Ring',			id = 2209,			sell = 100,			buy = 500},
	{name = 'Power Ring',			id = 2166,			sell = 50,			buy = 100},
	{name = 'Stealth Ring',			id = 2165,			sell = 200,			buy = 5000},
	{name = 'Sword Ring',			id = 2207,			sell = 100,			buy = 500},
	{name = 'Bronze Amulet',		id = 2172,			sell = 50,			buy = 100},
	{name = 'Garlic Necklace',		id = 2199,			sell = 50,			buy = 100},
	{name = 'elven Amulet',			id = 2198,			sell = 100,			buy = 500},
	{name = 'Stone Skin Amulet',	id = 2197,			sell = 500,			buy = 5000},
	{name = 'Wand of Cosmic Energy',id = 2189,			sell = 2000,		buy = 0},
	{name = 'Wand of Decay',		id = 2188,			sell = 1000,		buy = 0},
	{name = 'Wand of Defiance',		id = 18390,			sell = 6500,		buy = 0},
	{name = 'Wand of Everblazing',	id = 18409,			sell = 6000,		buy = 0},
	{name = 'Wand of Dragonbreath',	id = 2191,			sell = 200,			buy = 0},
	{name = 'Wand of Inferno',		id = 2187,			sell = 3000,		buy = 0},
	{name = 'Wand of Vortex',		id = 2190,			sell = 100,			buy = 0},
	{name = 'Wand of Draconia',		id = 8921,			sell = 1500,		buy = 0},
	{name = 'Wand of Starstorm',	id = 8920,			sell = 3600,		buy = 0},
	{name = 'Wand of Voodoo',		id = 8922,			sell = 4400,		buy = 0},
	{name = 'Magic Light Wand',		id = 2162,			sell = 35,			buy = 120},
	{name = 'Life Crystal',			id = 4851,			sell = 50,			buy = 0},
	{name = 'Mind Stone',			id = 2178,			sell = 100,			buy = 0},
	{name = 'Orb',					id = 2176,			sell = 750,			buy = 0},
	{name = 'Abyss Hammer',			id = 7414,		sell = 20000,		buy = 0},
	{name = 'Amber Staff',			id = 7426,		sell = 8000,		buy = 0},
	{name = 'Ancient Amulet',		id = 2142,		sell = 200,			buy = 0},
	{name = 'Assassin Dagger',		id = 7404,		sell = 20000,		buy = 0},
	{name = 'Bandana',				id = 5917,		sell = 150,			buy = 0},
	{name = 'Beastslayer axe',		id = 3962,		sell = 1500,		buy = 0},
	{name = 'Beetle Necklace',		id = 11374,		sell = 1500,		buy = 0},
	{name = 'Berserker',			id = 7403,		sell = 40000,		buy = 0},
	{name = 'Blacksteel Sword',		id = 7406,		sell = 6000,		buy = 0},
	{name = 'Blessed Sceptre',		id = 7429,		sell = 40000,		buy = 0},
	{name = 'Bone Shield',			id = 2541,		sell = 80,			buy = 0},
	{name = 'Bonelord Helmet',		id = 3972,		sell = 7500,		buy = 0},
	{name = 'Brutetamer\'s Staff',	id = 7379,		sell = 1500,		buy = 0},
	{name = 'Buckle',				id = 20109,		sell = 7000,		buy = 0},
	{name = 'Castle Shield',		id = 2535,		sell = 5000,		buy = 0},
	{name = 'Chain Bolter',			id = 8850,		sell = 40000,		buy = 0},
	{name = 'Chaos Mace',			id = 7427,		sell = 9000,		buy = 0},
	{name = 'Cobra Crown',			id = 12630,		sell = 50000,		buy = 0},
	{name = 'Coconut Shoes',		id = 9931,		sell = 500,			buy = 0},
	{name = 'Composite Hornbow',	id = 8855,		sell = 25000,		buy = 0},
	{name = 'Cranial Basher',		id = 7415,		sell = 30000,		buy = 0},
	{name = 'Crocodile Boots',		id = 3982,		sell = 1000,		buy = 0},
	{name = 'Crystal Crossbow',		id = 18453,		sell = 35000,		buy = 0},
	{name = 'Crystal Mace',			id = 2445,		sell = 12000,		buy = 0},
	{name = 'Crystal Necklace',		id = 2125,		sell = 400,			buy = 0},
	{name = 'Crystal Ring',			id = 2124,		sell = 250,			buy = 0},
	{name = 'Crystal Sword',		id = 7449,		sell = 600,			buy = 0},
	{name = 'Crystalline Armor',	id = 8878,		sell = 16000,		buy = 0},
	{name = 'Daramian Mace',		id = 2439,		sell = 110,			buy = 0},
	{name = 'Daramian Waraxe',		id = 2440,		sell = 1000,		buy = 0},
	{name = 'Dark Shield',			id = 2521,		sell = 400,			buy = 0},
	{name = 'Death Ring',			id = 6300,		sell = 1000,		buy = 0},
	{name = 'Demon Shield',			id = 2520,		sell = 30000,		buy = 0},
	{name = 'Demonbone Amulet',		id = 2136,		sell = 32000,		buy = 0},
	{name = 'Demonrage Sword',		id = 7382,		sell = 36000,		buy = 0},
	{name = 'Devil Helmet',			id = 2462,		sell = 1000,		buy = 0},
	{name = 'Diamond Sceptre',		id = 7387,		sell = 3000,		buy = 0},
	{name = 'Divine Plate',			id = 8885,		sell = 55000,		buy = 0},
	{name = 'Djinn Blade',			id = 2451,		sell = 15000,		buy = 0},
	{name = 'Doll',					id = 2110,		sell = 200,			buy = 0},
	{name = 'Dragon Scale Mail',	id = 2492,		sell = 40000,		buy = 0},
	{name = 'Dragon Slayer',		id = 7402,		sell = 15000,		buy = 0},
	{name = 'Dragonbone Staff',		id = 7430,		sell = 3000,		buy = 0},
	{name = 'Dreaded Cleaver',		id = 7419,		sell = 10000,		buy = 0},
	{name = 'Dwarven Armor',		id = 2503,		sell = 30000,		buy = 0},
	{name = 'Earth Cranial Basher',	id = 7866,		sell = 30000,		buy = 0},
	{name = 'Earth Dragon Slayer',	id = 7858,		sell = 15000,		buy = 0},
	{name = 'Earth Headchopper',	id = 7862,		sell = 6000,		buy = 0},
	{name = 'Earth Heroic axe',		id = 7861,		sell = 30000,		buy = 0},
	{name = 'Earth Mystic Blade',	id = 7856,		sell = 30000,		buy = 0},
	{name = 'Earth Orcish Maul',	id = 7867,		sell = 6000,		buy = 0},
	{name = 'Earth Relic Sword',	id = 7855,		sell = 25000,		buy = 0},
	{name = 'Earth War axe',		id = 7863,		sell = 12000,		buy = 0},
	{name = 'Elvish Bow',			id = 7438,		sell = 2000,		buy = 0},
	{name = 'Emerald Bangle',		id = 2127,		sell = 800,			buy = 0},
	{name = 'Energy Cranial Basher',id = 7881,		sell = 30000,		buy = 0},
	{name = 'Energy Dragon Slayer',	id = 7873,		sell = 15000,		buy = 0},
	{name = 'Energy Headchopper',	id = 7877,		sell = 6000,		buy = 0},
	{name = 'Energy Heroic axe',	id = 7876,		sell = 30000,		buy = 0},
	{name = 'Energy Mystic Blade',	id = 7871,		sell = 30000,		buy = 0},
	{name = 'Energy Orcish Maul',	id = 7882,		sell = 6000,		buy = 0},
	{name = 'Energy Relic Sword',	id = 7870,		sell = 25000,		buy = 0},
	{name = 'Energy War axe',		id = 7878,		sell = 12000,		buy = 0},
	{name = 'Epee',					id = 2438,		sell = 8000,		buy = 0},
	{name = 'Fiery Cranial Basher',	id = 7756,		sell = 30000,		buy = 0},
	{name = 'Fiery Dragon Slayer',	id = 7748,		sell = 15000,		buy = 0},
	{name = 'Fiery Headchopper',	id = 7752,		sell = 6000,		buy = 0},
	{name = 'Fiery Heroic axe',		id = 7751,		sell = 30000,		buy = 0},
	{name = 'Fiery Mystic Blade',	id = 7746,		sell = 30000,		buy = 0},
	{name = 'Fiery Orcish Maul',	id = 7757,		sell = 6000,		buy = 0},
	{name = 'Fiery Relic Sword',	id = 7745,		sell = 25000,		buy = 0},
	{name = 'Fiery War axe',		id = 7753,		sell = 12000,		buy = 0},
	{name = 'Flower Dress',			id = 9929,		sell = 1000,		buy = 0},
	{name = 'Flower Wreath',		id = 9927,		sell = 500,			buy = 0},
	{name = 'Fur Boots',			id = 7457,		sell = 2000,		buy = 0},
	{name = 'Furry Club',			id = 7432,		sell = 1000,		buy = 0},
	{name = 'Glacier Amulet',		id = 7888,		sell = 1500,		buy = 0},
	{name = 'Glacier Kilt',			id = 7896,		sell = 11000,		buy = 0},
	{name = 'Glacier Mask',			id = 7902,		sell = 2500,		buy = 0},
	{name = 'Glacier Robe',			id = 7897,		sell = 11000,		buy = 0},
	{name = 'Glacier Shoes',		id = 7892,		sell = 2500,		buy = 0},
	{name = 'Gold Ring',			id = 2179,		sell = 8000,		buy = 0},
	{name = 'Golden Armor',			id = 2466,		sell = 20000,		buy = 0},
	{name = 'Golden Legs',			id = 2470,		sell = 30000,		buy = 0},
	{name = 'Guardian Halberd',		id = 2427,		sell = 11000,		buy = 0},
	{name = 'Hammer of Wrath',		id = 2444,		sell = 30000,		buy = 0},
	{name = 'Headchopper',			id = 7380,		sell = 6000,		buy = 0},
	{name = 'Heavy Mace',			id = 2452,		sell = 50000,		buy = 0},
	{name = 'Heavy Machete',		id = 2442,		sell = 90,			buy = 0},
	{name = 'Heavy Trident',		id = 13838,		sell = 2000,		buy = 0},
	{name = 'Helmet of the Lost',	id = 20132,		sell = 2000,		buy = 0},
	{name = 'Heroic axe',			id = 7389,		sell = 30000,		buy = 0},
	{name = 'Hibiscus Dress',		id = 8873,		sell = 3000,		buy = 0},
	{name = 'Icy Blacksteel Sword',	id = 7766,		sell = 6000,		buy = 0},
	{name = 'Icy Cranial Basher',	id = 7775,		sell = 30000,		buy = 0},
	{name = 'Icy Dragon Slayer',	id = 7767,		sell = 15000,		buy = 0},
	{name = 'Icy Headchopper',		id = 7771,		sell = 6000,		buy = 0},
	{name = 'Icy Heroic axe',		id = 7770,		sell = 30000,		buy = 0},
	{name = 'Icy Mystic Blade',		id = 7765,		sell = 30000,		buy = 0},
	{name = 'Icy Orcish Maul',		id = 7776,		sell = 6000,		buy = 0},
	{name = 'Icy Relic Sword',		id = 7764,		sell = 25000,		buy = 0},
	{name = 'Icy War axe',			id = 7772,		sell = 12000,		buy = 0},
	{name = 'Jade Hammer',			id = 7422,		sell = 25000,		buy = 0},
	{name = 'Krimhorn Helmet',		id = 7461,		sell = 200,			buy = 0},
	{name = 'Lavos Armor',			id = 8877,		sell = 16000,		buy = 0},
	{name = 'Leaf Legs',			id = 9928,		sell = 500,			buy = 0},
	{name = 'Leopard Armor',		id = 3968,		sell = 1000,		buy = 0},
	{name = 'Leviathan\'s Amulet',	id = 10220,		sell = 3000,		buy = 0},
	{name = 'Light Shovel',			id = 5710,		sell = 300,			buy = 0},
	{name = 'Lightning Boots',		id = 7893,		sell = 2500,		buy = 0},
	{name = 'Lightning Headband',	id = 7901,		sell = 2500,		buy = 0},
	{name = 'Lightning Legs',		id = 7895,		sell = 11000,		buy = 0},
	{name = 'Lightning Pendant',	id = 7889,		sell = 1500,		buy = 0},
	{name = 'Lightning Robe',		id = 7898,		sell = 11000,		buy = 0},
	{name = 'Lunar Staff',			id = 7424,		sell = 5000,		buy = 0},
	{name = 'Magic Plate Armor',	id = 2472,		sell = 90000,		buy = 0},
	{name = 'Magma Amulet',			id = 7890,		sell = 1500,		buy = 0},
	{name = 'Magma Boots',			id = 7891,		sell = 2500,		buy = 0},
	{name = 'Magma Coat',			id = 7899,		sell = 11000,		buy = 0},
	{name = 'Magma Legs',			id = 7894,		sell = 11000,		buy = 0},
	{name = 'Magma Monocle',		id = 7900,		sell = 2500,		buy = 0},
	{name = 'Mammoth Fur Cape',		id = 7463,		sell = 6000,		buy = 0},
	{name = 'Mammoth Fur Shorts',	id = 7464,		sell = 850,			buy = 0},
	{name = 'Mammoth Whopper',		id = 7381,		sell = 300,			buy = 0},
	{name = 'Mastermind Shield',	id = 2514,		sell = 50000,		buy = 0},
	{name = 'Medusa Shield',		id = 2536,		sell = 9000,		buy = 0},
	{name = 'Mercenary Sword',		id = 7386,		sell = 12000,		buy = 0},
	{name = 'Mycological Bow',		id = 18454,		sell = 35000,		buy = 0},
	{name = 'Mystic Blade',			id = 7384,		sell = 30000,		buy = 0},
	{name = 'Naginata',				id = 2426,		sell = 2000,		buy = 0},
	{name = 'Nightmare Blade',		id = 7418,		sell = 35000,		buy = 0},
	{name = 'Noble axe',			id = 7456,		sell = 10000,		buy = 0},
	{name = 'Norse Shield',			id = 7460,		sell = 1500,		buy = 0},
	{name = 'Orcish Maul',			id = 7392,		sell = 6000,		buy = 0},
	{name = 'Pair of Iron Fists',	id = 20108,		sell = 4000,		buy = 0},
	{name = 'Paladin Armor',		id = 8891,		sell = 15000,		buy = 0},
	{name = 'Patched Boots',		id = 2641,		sell = 2000,		buy = 0},
	{name = 'Pharaoh Sword',		id = 2446,		sell = 23000,		buy = 0},
	{name = 'Pirate Boots',			id = 5462,		sell = 3000,		buy = 0},
	{name = 'Pirate Hat',			id = 6096,		sell = 1000,		buy = 0},
	{name = 'Pirate Knee Breeches',	id = 5918,		sell = 200,			buy = 0},
	{name = 'Pirate Shirt',			id = 6095,		sell = 500,			buy = 0},
	{name = 'Pirate Voodoo Doll',	id = 5810,		sell = 500,			buy = 0},
	{name = 'Platinum Amulet',		id = 2171,		sell = 2500,		buy = 0},
	{name = 'Ragnir Helmet',		id = 7462,		sell = 400,			buy = 0},
	{name = 'Relic Sword',			id = 7383,		sell = 25000,		buy = 0},
	{name = 'Ring of the Sky',		id = 2123,		sell = 30000,		buy = 0},
	{name = 'Royal axe',			id = 7434,		sell = 40000,		buy = 0},
	{name = 'Ruby Necklace',		id = 2133,		sell = 2000,		buy = 0},
	{name = 'Ruthless axe',			id = 6553,		sell = 45000,		buy = 0},
	{name = 'Sacred Tree Amulet',	id = 10219,		sell = 3000,		buy = 0},
	{name = 'Sapphire Hammer',		id = 7437,		sell = 7000,		buy = 0},
	{name = 'Scarab Amulet',		id = 2135,		sell = 200,			buy = 0},
	{name = 'Scarab Shield',		id = 2540,		sell = 2000,		buy = 0},
	{name = 'Shockwave Amulet',		id = 10221,		sell = 3000,		buy = 0},
	{name = 'Silver Brooch',		id = 2134,		sell = 150,			buy = 0},
	{name = 'Silver Dagger',		id = 2402,		sell = 500,			buy = 0},
	{name = 'Skull Helmet',			id = 5741,		sell = 40000,		buy = 0},
	{name = 'Skullcracker Armor',	id = 8889,		sell = 18000,		buy = 0},
	{name = 'Spiked Squelcher',		id = 7452,		sell = 5000,		buy = 0},
	{name = 'Steel Boots',			id = 2645,		sell = 30000,		buy = 0},
	{name = 'Swamplair Armor',		id = 8880,		sell = 16000,		buy = 0},
	{name = 'Taurus Mace',			id = 7425,		sell = 500,			buy = 0},
	{name = 'Tempest Shield',		id = 2542,		sell = 35000,		buy = 0},
	{name = 'Terra Amulet',			id = 7887,		sell = 1500,		buy = 0},
	{name = 'Terra Boots',			id = 7886,		sell = 2500,		buy = 0},
	{name = 'Terra Hood',			id = 7903,		sell = 2500,		buy = 0},
	{name = 'Terra Legs',			id = 7885,		sell = 11000,		buy = 0},
	{name = 'Terra Mantle',			id = 7884,		sell = 11000,		buy = 0},
	{name = 'The Justice Seeker',	id = 7390,		sell = 40000,		buy = 0},
	{name = 'Tortoise Shield',		id = 6131,		sell = 150,			buy = 0},
	{name = 'Vile axe',				id = 7388,		sell = 30000,		buy = 0},
	{name = 'Voodoo Doll',			id = 2322,		sell = 400,			buy = 0},
	{name = 'War axe',				id = 2454,		sell = 12000,		buy = 0},
	{name = 'War Horn',				id = 2079,		sell = 8000,		buy = 0},
	{name = 'Witch Hat',			id = 10570,		sell = 5000,		buy = 0},
	{name = 'Wyvern Fang',			id = 7408,		sell = 1500,		buy = 0}	
}
return list
end

function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(not npcHandler:isFocused(cid)) then
			return false
	end	
		
	if isInArray({"enchanted chicken wing", "boots of haste"}, msg:lower()) then
        npcHandler:say('Do you want to trade Boots of haste for Enchanted Chicken Wind?', cid)
        talk_state = 1 
	elseif isInArray({"warrior Sweat", "warrior helmet"}, msg:lower()) then
        npcHandler:say('Do you want to trade 4 Warrior Helmet for Warrior Sweat?', cid)
        talk_state = 2 
	elseif isInArray({"fighting Spirit", "royal helmet"}, msg:lower()) then
        npcHandler:say('Do you want to trade 2 Royal Helmet for Fighting Spirit', cid)       
        talk_state = 3
	elseif isInArray({"magic sulphur", "fire sword"}, msg:lower()) then
        npcHandler:say('Do you want to trade 3 Fire Sword for Magic Sulphur', cid) 
        talk_state = 4
	elseif isInArray({"job", "items"}, msg:lower()) then
        npcHandler:say('I trade Enchanted Chicken Wing for Boots of Haste, Warrior Sweat for 4 Warrior Helmets, Fighting Spirit for 2 Royal Helmet Magic Sulphur for 3 Fire Swords', cid)
		talk_state = 0
		
	elseif msgcontains(msg,'yes') and talk_state <= 4 and talk_state >= 1 then
	
		local trade = {
				{NeedItem = 2195, Ncount = 1, GiveItem = 5891, Gcount = 1}, -- Enchanted Chicken Wing
				{NeedItem = 2475, Ncount = 4, GiveItem = 5885, Gcount = 1}, -- Flask of Warrior's Sweat
				{NeedItem = 2498, Ncount = 2, GiveItem = 5884, Gcount = 1}, -- Spirit Container
				{NeedItem = 2392, Ncount = 3, GiveItem = 5904, Gcount = 1}, -- Magic Sulphur
				}

        if player:getItemCount(trade[talk_state].NeedItem) >= trade[talk_state].Ncount then
			player:removeItem(trade[talk_state].NeedItem, trade[talk_state].Ncount)
			player:addItem(trade[talk_state].GiveItem, trade[talk_state].Gcount)
			return npcHandler:say(msg,'Here you are')						
        else
            npcHandler:say('Sorry but you don\'t have the item', player)
        end
 
	elseif msgcontains(msg,'no') and (talk_state >= 1 and talk_state <= 5) then
		 npcHandler:say(msg,'Ok then', player)
		 talk_state = 0
		 npcHandler:releaseFocus(cid)
	end
	return true
end

local function onTradeRequest(cid)
	TradeRequest(cid, npcHandler, getTable(), BlueDjinn, 4)
end

npcHandler:setCallback(CALLBACK_ONTRADEREQUEST, onTradeRequest)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())