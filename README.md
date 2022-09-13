# BOII | DEVELOPMENT - CONSUMABLES SCRIPT [QB] #

Here we have a simple script consumables script for your city.
You can customise your food animations, bars, text, timers, etc.
Some real world items and re-textured props have been provided, however I would urge that you make your own images/props, be unique!
Comes with alocohol effects and a sickness effect.
Sickness effect applied to alcohol, and "risky food" or "risky drinks".
Beware of that dodgy egg sandwich or that drink you find in dumpster..

## USAGE ##

- Consume food as normal
- Risky food or drinks have a chance to make you sick which removes HP
- Alcohol effects for light and heavy drunk
- Alcohol also has a chance to make you sick

## INSTALL ##

1) Rename the resource to `boii-consumables` and drag into your server resources
2) Add `ensure boii-consumables` into your `server.cfg`
2) Edit the `config.lua` to suit your liking, ensuring to add all the food items required for your server
3) Edit the `consumables_c.lua` to match your config items `(pay attention to the args == "number")`, edit everything to suit your server
4) Edit the `consumables_s.lua` adding in all of your items, ensure that the args match the client side; refer to notes below if unsure
--  TriggerClientEvent('boii-consumables:client:EatFood', source, 1, item.name) -- The number server side is your `args == "number"` ensure this matches your client
--  TriggerClientEvent('eventname', source, args, item.name)
5) If you are using the provided items copy the information provided under `### QBCORE/SHARED/ITEMS.LUA ###` into your `qb-core/shared/items.lua` or create your own items
6) If you are using the provided items drag the images provided into your `qb-inventory/html/images`
7) Restart your server and enjoy!

## QBCORE/SHARED/ITEMS.LUA ##
```
	-- Food
	['eggsandwich'] 				= {['name'] = 'eggsandwich', 			 	  	['label'] = 'Egg Sandwich', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'eggsandwich.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A risky looking egg mayonaise sandwich..'},
	['hamsandwich'] 				= {['name'] = 'hamsandwich', 			 	  	['label'] = 'Ham Sandwich', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'hamsandwich.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A risky looking ham sandwich..'},
	['tunasandwich'] 				= {['name'] = 'tunasandwich', 			 	  	['label'] = 'Tuna Sandwich', 			['weight'] = 380, 		['type'] = 'item', 		['image'] = 'tunasandwich.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A risky looking tuna mayonaise sandwich..'},
	
	-- Snacks
	['mandms'] 		 				= {['name'] = 'mandms', 			  			['label'] = 'M&Ms', 					['weight'] = 120, 		['type'] = 'item', 		['image'] = 'mandms.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'It melts in your mouth, not in your hands!'},
	['peanutmandms'] 		 		= {['name'] = 'peanutmandms', 			  		['label'] = 'Peanut M&Ms', 				['weight'] = 120, 		['type'] = 'item', 		['image'] = 'peanutmandms.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'It melts in your mouth, not in your hands!'},
	['hersheysbar'] 		 		= {['name'] = 'hersheysbar', 			  		['label'] = 'Hersheys Bar', 			['weight'] = 120, 		['type'] = 'item', 		['image'] = 'hersheysbar.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Pure happiness. The great American chocolate bar!'},

	-- Drinks
	['cocacola'] 				 	= {['name'] = 'cocacola', 			  	  		['label'] = 'CocaCola', 				['weight'] = 330, 		['type'] = 'item', 		['image'] = 'cocacola.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'CocaCola, Taste The Feeling!'},
	['pepsi'] 				 		= {['name'] = 'pepsi', 			  	  			['label'] = 'Pepsi', 					['weight'] = 330, 		['type'] = 'item', 		['image'] = 'pepsi.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Every Pepsi Refreshes The World!'},
	['drpepper'] 				 	= {['name'] = 'drpepper', 			  	  		['label'] = 'Dr Pepper', 				['weight'] = 330, 		['type'] = 'item', 		['image'] = 'drpepper.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Dr Pepper, whats the worst that can happen!'},
	['mountaindew'] 				= {['name'] = 'mountaindew', 			  	  	['label'] = 'Mountain Dew', 			['weight'] = 330, 		['type'] = 'item', 		['image'] = 'mountaindew.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Do the DEW!'},
	['water'] 						= {['name'] = 'water', 			  	  			['label'] = 'Water', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Water the way nature intended.'},
	['coffee'] 				 		= {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 400, 		['type'] = 'item', 		['image'] = 'coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'No ordinary coffee!'},
	['tea'] 				 		= {['name'] = 'tea', 			  	  			['label'] = 'Tea', 						['weight'] = 400, 		['type'] = 'item', 		['image'] = 'tea.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Keep it Tea!'},
	['hotchocolate'] 				= {['name'] = 'hotchocolate', 			  	  	['label'] = 'Hot Chocolate', 			['weight'] = 400, 		['type'] = 'item', 		['image'] = 'hotchocolate.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Moments of Joy!'},
	['dirtywater'] 					= {['name'] = 'dirtywater', 			  	  	['label'] = 'Dirty Water', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'dirtywater.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of dirty water, drink at your own risk!'},
	['yellowliquid'] 				= {['name'] = 'yellowliquid', 			  	  	['label'] = 'Yellow Liquid', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'yellowliquid.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of fanta.. maybe.. who knows..'},

	-- Alcohol
	['corona'] 				 		= {['name'] = 'corona', 			  	  		['label'] = 'Corona', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'corona.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of the Finest Beer!'},
	['corona6pack'] 				= {['name'] = 'corona6pack', 			  	  	['label'] = 'Corona 6 Pack', 			['weight'] = 3000, 		['type'] = 'item', 		['image'] = 'corona6pack.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A 6 pack of the Finest Beer!'},
	['budweiser'] 				 	= {['name'] = 'budweiser', 			  	  		['label'] = 'Budweiser', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'budweiser.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of the King of Beers!'},
	['budweiser6pack'] 				= {['name'] = 'budweiser6pack', 			  	['label'] = 'Budweiser 6 Pack', 		['weight'] = 3000, 		['type'] = 'item', 		['image'] = 'budweiser6pack.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A 6 pack of the King of Beers!'},
	['whiskey'] 				 	= {['name'] = 'whiskey', 			  	  		['label'] = 'Whiskey', 					['weight'] = 750, 		['type'] = 'item', 		['image'] = 'whiskey.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Make It Count!'},
	['vodka'] 				 		= {['name'] = 'vodka', 			  	  			['label'] = 'Vodka', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'vodka.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'Vodka as it should be!'},
```

## PREVIEW ##
https://www.youtube.com/watch?v=G86Idiu12EI

## SUPPORT ##
https://discord.gg/MUckUyS5Kq
