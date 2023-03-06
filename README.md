# BOII | DEVELOPMENT - UTILITY: CONSUMABLES V3.0.0

Here we have a simple to use consumables script to allow additional customisation to eating/drinking.
Includes a custom sickness chance for those risky looking food items.
Includes alcoholic drinks and drunk effects.
Enjoy!

### INSTALL

1. Customise `shared/config.lua` & `shared/language.lua` to your liking
2. Drag and drop `boii-consumables` into your server resources ensuring your load order is correct **Refer to our f-a-q if unsure**
3. Copy example items provided under **QB-CORE/SHARED/ITEMS.LUA** into your `qb-core/shared/items.lua` if you are keeping the example items; If not you can skip this
4. Copy images provided from `boii-consumables/html/images` into your `qb-inventory/html/images` if you are keeping the example items; If not you can skip this
5. Restart server

### QB-CORE/SHARED/ITEMS.LUA

    --<!>-- CONSUMABLES --<!>--
    -- Return items
    ['empty_glass_bottle'] 			= {['name'] = 'empty_glass_bottle', 			 	['label'] = 'Empty Glass Bottle', 		['weight'] = 750, 		['type'] = 'item', 		['image'] = 'empty_glass_bottle.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A scrap glass drinking bottle..'},
    ['empty_plastic_bottle'] 			= {['name'] = 'empty_plastic_bottle', 			 	['label'] = 'Empty Plastic Bottle', 		['weight'] = 750, 		['type'] = 'item', 		['image'] = 'empty_plastic_bottle.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A scrap plastic drinking bottle..'},
    ['empty_can'] 			= {['name'] = 'empty_can', 			 	['label'] = 'Empty Can', 		['weight'] = 450, 		['type'] = 'item', 		['image'] = 'empty_can.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A scrap aluminum drinks can..'},
    ['cardboard'] 					= {['name'] = 'cardboard', 			 	 		['label'] = 'Cardboard', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'cardboard.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'Some scrap cardboard..'},
    ['wrapper'] 					= {['name'] = 'wrapper', 			 	 		['label'] = 'Wrapper', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'wrapper.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A used candy wrapper..'},
    
    -- Alcohol
    ['beer_am'] 				 		= {['name'] = 'beer_am', 			  	  		['label'] = 'beer_am', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_am.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of AM Beer!'},
    ['beer_logger'] 				 		= {['name'] = 'beer_logger', 			  	  		['label'] = 'beer_logger', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_logger.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Logger!'},
    ['beer_piss'] 				 		= {['name'] = 'beer_piss', 			  	  		['label'] = 'beer_piss', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_piss.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Pisshwasser!'},
    ['beer_dusche'] 				 		= {['name'] = 'beer_dusche', 			  	  		['label'] = 'beer_dusche', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_dusche.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Dusche Gold!'},
    ['beer_patriot'] 				 		= {['name'] = 'beer_patriot', 			  	  		['label'] = 'beer_patriot', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_patriot.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Patriot!'},
    ['beer_stz'] 				 		= {['name'] = 'beer_stz', 			  	  		['label'] = 'beer_stz', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_stz.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Stronzo!'},
    ['beer_pride'] 				 		= {['name'] = 'beer_pride', 			  	  		['label'] = 'beer_pride', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_pride.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Pride!'},
    ['beer_jakey'] 				 		= {['name'] = 'beer_jakey', 			  	  		['label'] = 'beer_jakey', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_jakey.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Jakeys!'},
    ['beer_bar'] 				 		= {['name'] = 'beer_bar', 			  	  		['label'] = 'beer_bar', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_bar.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Barracho!'},
    ['beer_blr'] 				 		= {['name'] = 'beer_blr', 			  	  		['label'] = 'beer_blr', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_blr.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Blarneys!'},
    ['whiskey_mount'] 				 		= {['name'] = 'whiskey_mount', 			  	  		['label'] = 'Mount Whiskey', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'whiskey_mount.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Mount Whiskey!'},
    ['whiskey_macbeth'] 				 		= {['name'] = 'whiskey_macbeth', 			  	  		['label'] = 'Macbeth Whiskey', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'whiskey_mount.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Macbeth Whiskey!'},
    ['whiskey_richards'] 				 		= {['name'] = 'whiskey_richards', 			  	  		['label'] = 'Richards Whiskey', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'whiskey_richards.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Richards Whiskey!'},
    ['vodka'] 				 		= {['name'] = 'vodka', 			  	  		['label'] = 'Vodka', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'vodka.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Vodka!'},
    ['rum'] 				 		= {['name'] = 'rum', 			  	  		['label'] = 'Rum', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'rum.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Rum!'},
    ['tequila'] 				 		= {['name'] = 'tequila', 			  	  		['label'] = 'Tequila', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'tequila.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Tequila!'},
    ['brandy_cardi'] 				 		= {['name'] = 'brandy_cardi', 			  	  		['label'] = 'Cardiaque Brandy', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'brandy_cardi.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Cardiaque Brandy!'},
    ['brandy_cognac'] 				 		= {['name'] = 'brandy_cognac', 			  	  		['label'] = 'Cognac Brandy', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'brandy_cognac.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Cognac Brandy!'},
    ['wine_red'] 				 		= {['name'] = 'wine_red', 			  	  		['label'] = 'Red Wine', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'wine_red.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Red Wine!'},
    ['wine_rose'] 				 		= {['name'] = 'wine_rose', 			  	  		['label'] = 'Rose Wine', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'wine_rose.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Rose Wine!'},
    ['wine_white'] 				 		= {['name'] = 'wine_white', 			  	  		['label'] = 'White Wine', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'wine_white.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of White Wine!'},

    -- Drinks
    ['water'] 						= {['name'] = 'water', 			  	  			['label'] = 'Water', 					['weight'] = 800, 		['type'] = 'item', 		['image'] = 'water.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Water the way nature intended.'},
    ['dirtywater'] 						= {['name'] = 'dirtywater', 			  	  			['label'] = 'Dirty Water', 					['weight'] = 800, 		['type'] = 'item', 		['image'] = 'dirtywater.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Water the way nature intended. Sort of..'},
    ['ecola'] 						= {['name'] = 'ecola', 			  	  			['label'] = 'E-Cola', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ecola.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Deliciously Infectious!'},
    ['sprunk'] 						= {['name'] = 'sprunk', 			  	  			['label'] = 'Sprunk', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'sprunk.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'The Essence of Life!'},
    ['orangotang'] 						= {['name'] = 'orangotang', 			  	  			['label'] = 'Orang-O-Tang', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'orangotang.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'The New Munkey Juice!'},
    ['coffee'] 						= {['name'] = 'coffee', 			  	  			['label'] = 'Coffee', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Free The Bean!'},
    ['tea'] 						= {['name'] = 'tea', 			  	  			['label'] = 'Tea', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'tea.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Not as good as yorkshire tea..'},

    -- Food items
	['eggsandwich'] 				= {['name'] = 'eggsandwich', 			 	  	['label'] = 'Egg Sandwich', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'eggsandwich.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A risky looking egg mayonaise sandwich..'},
	['hamsandwich'] 				= {['name'] = 'hamsandwich', 			 	  	['label'] = 'Ham Sandwich', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'hamsandwich.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A risky looking ham sandwich..'},
	['tunasandwich'] 				= {['name'] = 'tunasandwich', 			 	  	['label'] = 'Tuna Sandwich', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'tunasandwich.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A risky looking tuna mayonaise sandwich..'},
    ['psnqs'] 				= {['name'] = 'psnqs', 			 	  	['label'] = 'Ps & Qs', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'psnqs.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A packet of Ps & Qs!'},
    ['meteorite'] 				= {['name'] = 'meteorite', 			 	  	['label'] = 'Meteorite', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'meteorite.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Meteorite chocolate bar!'},
    ['egochaser'] 				= {['name'] = 'egochaser', 			 	  	['label'] = 'Egochaser', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'egochaser.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Egochaser chocolate bar!'},

### PREVIEW
UPDATED PREVIEW COMING SOON

### SUPPORT
https://discord.gg/MUckUyS5Kq
