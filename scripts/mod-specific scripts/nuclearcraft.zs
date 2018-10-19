import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <nuclearcraft:water_source>,
  <nuclearcraft:water_source_compact>,
  <nuclearcraft:water_source_dense>,
  //Note: Disabled because there are more fun ways to make water
  <nuclearcraft:cobblestone_generator>,
  <nuclearcraft:cobblestone_generator_compact>,
  //Note: Cobblestone generators are intended to be done in world with block breakers or with quarries, etc
  <nuclearcraft:solar_panel_basic>,
  //Note: There are more fun ways to generate power
  <nuclearcraft:manufactory_idle>,
  //note: Disabled in favor of other ore processing setups
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);


#recipes
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <botania:manaresource>, <ore:plateTin>],
	 [<botania:manaresource>, null, <botania:manaresource>],
	 [<ore:plateTin>, <botania:manaresource>, <ore:plateTin>]]);
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <tconstruct:ingots:1>, <ore:plateTin>],
	 [<tconstruct:ingots:1>, null, <tconstruct:ingots:1>],
	 [<ore:plateTin>, <tconstruct:ingots:1>, <ore:plateTin>]]);

//## disabled through config:
//Disabled the abilitiy for nuclearcraft's machines to process ores; see https://git.io/vxQWi for more info

#Renames
scripts.functions.rename(<nuclearcraft:part:6>,"Plastic Sheet");
scripts.functions.rename(<nuclearcraft:ore:5>,"Borax Ore");
scripts.functions.rename(<nuclearcraft:ore:3>,"Thorite Ore");

#Ore dict


//Make obtaining Nuclearcraft glowing mushrooms more interesting
recipes.removeShapeless(<nuclearcraft:glowing_mushroom>);
recipes.addShapeless(<nuclearcraft:glowing_mushroom>, [<ore:mushroomAny>, <ore:mushroomAny>, <natura:nether_glowshroom:*>, <natura:nether_glowshroom:*>]);

// Alternate recipe for copper solenoid that uses nickel instead of iron
recipes.addShapedMirrored(<nuclearcraft:part:4> * 2,
    [[<ore:ingotCopper>, <ore:ingotCopper>, null],
    [<ore:ingotNickel>, <ore:ingotNickel>, null],
    [<ore:ingotCopper>, <ore:ingotCopper>, null]]);
	
// Decay Generator recipe removal
recipes.remove(<nuclearcraft:decay_generator>);

// Decay Generator: Lead -> Nickel
recipes.addShaped(<nuclearcraft:decay_generator>, 
	[[<ore:ingotNickel>, <minecraft:cobblestone>, <ore:ingotNickel>],
	[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>], 
	[<ore:ingotNickel>, <minecraft:cobblestone>, <ore:ingotNickel>]]);
	
// Machine Chassis recipe removal
recipes.remove(<nuclearcraft:part:10>);

// Machine chassis: Lead -> Nickel
recipes.addShaped(<nuclearcraft:part:10>, 
	[[<ore:ingotNickel>, <ore:ingotSteel>, <ore:ingotNickel>],
	[<ore:ingotSteel>, <nuclearcraft:alloy:1>, <ore:ingotSteel>], 
	[<ore:ingotNickel>, <ore:ingotSteel>, <ore:ingotNickel>]]);