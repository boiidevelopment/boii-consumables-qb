# BOII | DEVELOPMENT - UTILITY: CONSUMABLES #

Here we have our updated consumables script!
You can customise your food animations, bars, text, timers, etc.
Some real world items and re-textured props have been provided, however I would urge that you make your own images/props, be unique!
Comes with alcohol effects and a sickness effect.
Sickness effect applied to alcohol, and "risky food" or "risky drinks".
Beware of that dodgy egg sandwich or that drink you find in dumpster..

### INSTALL ###

1) Drag and drop `boii-consumables` into your server resources
2) Add `ensure boii-consumables` into your server.cfg before any resources that will be using the events
3) Edit the core information inside `config.lua` if required
4) Copy images from `boii-consumables/images` into your inventory script. Default; `qb-inventory/html/images` if you are using the example items. If not then skip this step.
5) Add the item information under **SHARED** into your servers `qb-core/shared/items.lua` if you are using the example items. If not then skip this step.

### USAGE ###

- Trigger the client events from any script by following the example format below!
- Use `'boii-consumables:cl:Consumables'` to consume regular food and drinks
- Use `'boii-consumables:cl:ConsumablesSickness'` to consume regular food and drinks with a chance to get sick
- Use `'boii-consumables:cl:ConsumablesAlcohol'` to consume alcoholic drinks

```
- Consumables event example, used for regular food/drink
- "EVENT", "SOURCE", "ITEM TO REMOVE", "ITEM TO ADD", "METADATA", "AMOUNT TO INCREASE META", "AMOUNT TO DECREASE STRESS", "PROGRESS BAR TEXT", "PROGRESS BAR TIMER IN SECONDS", "ANIMATION DICTIONARY", "ANIMATION", "ANIMATION FLAGS", "PROP", "BONE INDEX", "PROP COORDS", "PROP ROTATION"
 
Core.Functions.CreateUseableItem('cocacola', function(source, item)
	TriggerClientEvent('boii-consumables:cl:Consumables', source, item.name, 'emptycan', 'thirst', math.random(10,40), math.random(5,10), 'Drinking CocaCola..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_ecola_can', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
```

```
- Sickness event example, used for risky food/drink 
- "EVENT", "SOURCE", "ITEM TO REMOVE", "ITEM TO ADD", "METADATA", "AMOUNT TO INCREASE META", "AMOUNT TO DECREASE STRESS", "SICKNESS CHANCE", "PROGRESS BAR TEXT", "PROGRESS BAR TIMER IN SECONDS", "ANIMATION DICTIONARY", "ANIMATION", "ANIMATION FLAGS", "PROP", "BONE INDEX", "PROP COORDS", "PROP ROTATION"
 
Core.Functions.CreateUseableItem('dirtywater', function(source, item)
	TriggerClientEvent('boii-consumables:cl:ConsumablesSickness', source, item.name, 'emptybottle', 'thirst', math.random(10,40), math.random(5,10), 50, 'Drinking Dirty Water..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_ecola_can', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
```

```
- Alcohol event example, used by alcoholic drinks
- "EVENT", "SOURCE", "ITEM TO REMOVE", "ITEM TO ADD", "METADATA", "AMOUNT TO INCREASE META", "AMOUNT TO DECREASE STRESS", "SICKNESS CHANCE", "PROGRESS BAR TEXT", "PROGRESS BAR TIMER IN SECONDS", "ANIMATION DICTIONARY", "ANIMATION", "ANIMATION FLAGS", "PROP", "BONE INDEX", "PROP COORDS", "PROP ROTATION"
 
Core.Functions.CreateUseableItem('vodka', function(source, item)
	TriggerClientEvent('boii-consumables:cl:ConsumablesAlcohol', source, item.name, 'emptyglassbottle', 'thirst', math.random(10,40), math.random(5,10), 50, 'Drinking Vodka..', math.random(3,5), 'mp_player_intdrink', 'loop_bottle', 49, 'prop_ecola_can', 60309, vector3(0.0, 0.0, 0.05), vector3(0.0, 0.0, 0.0))
end)
```

### SHARED ###

```

	--<!>-- CONSUMABLES --<!>--
	-- Scrap
	['emptycan'] 					= {['name'] = 'emptycan', 			 	  		['label'] = 'Empty Can', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'emptycan.png', 		    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A scrap aliuminum can..'},
	['emptybottle'] 				= {['name'] = 'emptybottle', 			 	  	['label'] = 'Empty Bottle', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'emptybottle.png', 		    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A scrap plastic bottle..'},	
	['emptyglassbottle'] 			= {['name'] = 'emptyglassbottle', 			 	['label'] = 'Empty Glass Bottle', 		['weight'] = 750, 		['type'] = 'item', 		['image'] = 'emptyglassbottle.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A scrap glass bottle..'},
	['emptypapercup'] 				= {['name'] = 'emptypapercup', 			 	 	['label'] = 'Empty Paper Cup', 			['weight'] = 180, 		['type'] = 'item', 		['image'] = 'emptypapercup.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'Some scrap cardboard..'},
	['usedwrapper'] 				= {['name'] = 'usedwrapper', 			 		['label'] = 'Used Wrapper', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'usedwrapper.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'A used aluminum wrapper ..'},
	['cardboard'] 					= {['name'] = 'cardboard', 			 	 		['label'] = 'Cardboard', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'cardboard.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  ['combinable'] = nil,   ['description'] = 'Some scrap cardboard..'},

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

### PREVIEW ###
updated preview coming soon
v1.0.0 - https://www.youtube.com/watch?v=G86Idiu12EI
### SUPPORT ###
https://discord.gg/MUckUyS5Kq
