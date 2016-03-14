//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//	   This will include all misc items		//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
// 		My genocide crusade begins here  	//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							   Fuel								 //
-------------------------------------------------------------------

-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  Gas Can					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_gas"

ITEM.Name = "Gas Can"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 30
ITEM.Small_Parts = 4
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Big Bada Boom!"
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "prop_physics"
ITEM.Model = "models/props_junk/gascan001a.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent.CanF2 = true
	ent.ID = "fuel_gas"
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  grub food  				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_grubfood"

ITEM.Name = "Grub Food"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 35
ITEM.Chance = 100
ITEM.Info = "A strange concoction of organic material that the antlions use to feed their young."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_grubfood"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return false
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)



-------------------------------------------------------------------
--					  H.A.Z.G   Fuel deuterium					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_h2"

ITEM.Name = "Deuterium Fuel"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "An H-2 isotope, ready to be loaded into a reactor."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_h2"
ITEM.Model = "models/items/combine_rifle_ammo01.mdl"
ITEM.Script = ""
ITEM.Weight = 0.1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return false
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)



-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  deuterium pod  			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_h2pod"

ITEM.Name = "Deuterium Fuel Pod"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "A fuel pod filled with an H-2 isotope, or Deuterium."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_h2pod"
ITEM.Model = "models/items/combine_rifle_ammo01.mdl"
ITEM.Script = ""
ITEM.Weight = 6
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local actWeight = PNRP.InventoryWeight( ply )
	local actCapacity
	if team.GetName(ply:Team()) == "Scavenger" then
		actCapacity = GetConVarNumber("pnrp_packCapScav") + (ply:GetSkill("Backpacking")*10)
	else
		actCapacity = GetConVarNumber("pnrp_packCap") + (ply:GetSkill("Backpacking")*10)
	end
	
	if actCapacity >= actWeight + 6 then
		local sound = Sound("items/ammo_pickup.wav")
		self.Entity:EmitSound( sound )
		
		ply:AddToInventory("fuel_h2", 60)
		
		return true
	else
		ply:ChatPrint("You cannot carry the contents of the fuel pod!")
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)



-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  Uranium 					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_uran"

ITEM.Name = "Uranium Fuel"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "If it glows you don't touch it, But it does look tasty."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_uran"
ITEM.Model = "models/items/crossbowrounds.mdl"
ITEM.Script = ""
ITEM.Weight = 0.1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return false
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  Gas Can					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_uranrods"

ITEM.Name = "Uranium Fuel Rods"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Uranium-235 fuel rods, extremely rare to find today."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_uranrods"
ITEM.Model = "models/items/crossbowrounds.mdl"
ITEM.Script = ""
ITEM.Weight = 6
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local actWeight = PNRP.InventoryWeight( ply )
	local actCapacity
	if team.GetName(ply:Team()) == "Scavenger" then
		actCapacity = GetConVarNumber("pnrp_packCapScav") + (ply:GetSkill("Backpacking")*10)
	else
		actCapacity = GetConVarNumber("pnrp_packCap") + (ply:GetSkill("Backpacking")*10)
	end
	
	if actCapacity >= actWeight + 6 then
		local sound = Sound("items/ammo_pickup.wav")
		self.Entity:EmitSound( sound )
		
		ply:AddToInventory("fuel_uran", 60)
		
		return true
	else
		ply:ChatPrint("You cannot carry the contents of the fuel pod!")
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  uranium rods				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_uranrods"

ITEM.Name = "Uranium Fuel Rods"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Uranium-235 fuel rods, extremely rare to find today."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_uranrods"
ITEM.Model = "models/items/crossbowrounds.mdl"
ITEM.Script = ""
ITEM.Weight = 6
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local actWeight = PNRP.InventoryWeight( ply )
	local actCapacity
	if team.GetName(ply:Team()) == "Scavenger" then
		actCapacity = GetConVarNumber("pnrp_packCapScav") + (ply:GetSkill("Backpacking")*10)
	else
		actCapacity = GetConVarNumber("pnrp_packCap") + (ply:GetSkill("Backpacking")*10)
	end
	
	if actCapacity >= actWeight + 6 then
		local sound = Sound("items/ammo_pickup.wav")
		self.Entity:EmitSound( sound )
		
		ply:AddToInventory("fuel_uran", 60)
		
		return true
	else
		ply:ChatPrint("You cannot carry the contents of the fuel pod!")
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					  H.A.Z.G   Fuel  zombie fuel    			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fuel_zombiefule"

ITEM.Name = "Headcrab Bio-Fule"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 2
ITEM.Small_Parts = 2
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Fule made from Headcrab meat, Smells like rotten flesh."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_zombiefule"
ITEM.Model = "models/props_junk/gascan001a.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.ToolCheck( p )
	return {["intm_zombieoilsrefined"]=3}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent.CanF2 = true
	ent.ID = "fuel_Zombiefule"
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
//																 //
///////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							  Junk								 //
-------------------------------------------------------------------


-------------------------------------------------------------------
--				 H.A.Z.G   Junk	 Explosive Oil Drum				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "exp_oil_drum"

ITEM.Name = "Explosive Oil Drum"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Big Bada Boom!"
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "prop_physics"
ITEM.Model = "models/props_c17/oildrum001_explosive.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Junk	 Propane        				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "exp_propane_tank"

ITEM.Name = "Explosive Propane Tank"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 8
ITEM.Chance = 100
ITEM.Info = "Big Bada Boom!"
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "prop_physics"
ITEM.Model = "models/props_junk/propane_tank001a.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Junk	 Nerve gas          			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "m9k_ammo_nervegas"

ITEM.Name = "Pre-War Chemical Weapons Crate"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 200
ITEM.Small_Parts = 10
ITEM.Chemicals = 800
ITEM.Chance = 100
ITEM.Info = "A Crate full of Dangerous Pre-War Chemical weapons."
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "m9k_ammo_nervegas"
ITEM.Model = "models/items/ammocrates/cratenervegas.mdl"
ITEM.Icon ="models/items/ammocrates/cratenervegas.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   G-bomb undetonated         			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "models/thedoctor/50lb.mdl"

ITEM.Name = "Undetonated 50LB Bomb"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 100
ITEM.Small_Parts = 5
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = "A pre-war 50LB bomb, don't drop it, it still may be dangerous"
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "models/thedoctor/50lb.mdl"
ITEM.Model = "models/thedoctor/50lb.mdl"
ITEM.Icon ="models/thedoctor/50lb.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)

-------------------------------------------------------------------
//																 //
///////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							  Medical							 //
-------------------------------------------------------------------


-------------------------------------------------------------------
--				 H.A.Z.G   Medical	Armor Battery				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "battery"

ITEM.Name = "Armor Battery"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 10
ITEM.Small_Parts = 0
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "hp_battery"
ITEM.Model = "models/items/battery.mdl"
ITEM.Script = ""
ITEM.Weight = 2

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local armor = ply:Armor()
		
	if not ( armor == 100 ) then
		local sound = Sound("items/battery_pickup.wav")
		ply:EmitSound( sound )
		
		ply:SetArmor( armor + 20 )
		if ( 100 < armor + 20 ) then
			ply:SetArmor( 100 )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Medical	healthvial     				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "healthvial"

ITEM.Name = "Health Vial"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 20
ITEM.Small_Parts = 5
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "A glass tube with a strange liquid with pharmaceutical properties"
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "hp_smallhealthkit"
ITEM.Model = "models/healthvial.mdl"
ITEM.Script = ""
ITEM.Weight = 2

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/smallmedkit1.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 10 )
		if ( ply:GetMaxHealth() < health + 10  ) then
			ply:SetHealth( ply:GetMaxHealth() )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Medical	health kit   				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "healthkit"

ITEM.Name = "Health Kit"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 40
ITEM.Small_Parts = 4
ITEM.Chemicals = 120
ITEM.Chance = 100
ITEM.Info = "May the power of science heal you !"
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "hp_healthkit"
ITEM.Model = "models/stalker/item/medical/medkit1.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/medshot4.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 30 )
		if ( ply:GetMaxHealth() < health + 30  ) then
			ply:SetHealth( ply:GetMaxHealth() )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Medical	pre war paracetamol 		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "drug_pre_war_paracetamol"

ITEM.Name = "Pre-war Paracetamol"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "The NHS is strong in this one."
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "drug_pre_war_paracetamol"
ITEM.Model = "models/stalker/item/medical/psy_pills.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/medshot4.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 5 )
		if ( ply:GetMaxHealth() < health + 5  ) then
			ply:SetHealth( ply:GetMaxHealth() )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Medical	pre war ibuprofen	     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "drug_pre_war_ibuprofen"

ITEM.Name = "Pre-war Ibuprofen"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "Still safe to consume"
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "drug_pre_war_ibuprofen"
ITEM.Model = "models/stalker/item/medical/psy_pills.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/medshot4.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 5 )
		if ( ply:GetMaxHealth() < health + 5  ) then
			ply:SetHealth( ply:GetMaxHealth() )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				 H.A.Z.G   Medical	pre war paracetamol 		 --
-------------------------------------------------------------------

-------------------------------------------------------------------
--				 H.A.Z.G   Medical	pre war paracetamol 		 --
-------------------------------------------------------------------

-------------------------------------------------------------------
--				 H.A.Z.G   Medical	pre war paracetamol 		 --
-------------------------------------------------------------------

-------------------------------------------------------------------
--				 H.A.Z.G   Medical	pre war paracetamol 		 --
-------------------------------------------------------------------
-------------------------------------------------------------------
//																 //
///////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							  Vehicle							 //
-------------------------------------------------------------------


-------------------------------------------------------------------
--					H.A.Z.G   Vehicle	Airboat					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "vehicle_airboat"

ITEM.Name = "Airboat"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 1200
ITEM.Small_Parts = 600
ITEM.Chemicals = 350
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "vehicle"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "prop_vehicle_airboat"
ITEM.Model = "models/airboat.mdl"
ITEM.Script = "scripts/vehicles/airboat.txt"
ITEM.Weight = 200

function ITEM.ToolCheck( p )
	return {["intm_engine"]=1}
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(ITEM.Ent)
	
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	Msg(tostring(ITEM.Model).."\n")
	//This fixes the seating animation for the seats
	if(ITEM.Ent == "prop_vehicle_prisoner_pod") then
		Msg("Seat fix ran. \n")
		local vname = ITEM.ID
		local VehicleList = list.Get( "Vehicles" )
		local vehicle = VehicleList[ vname ]
		
		ent:SetModel(ITEM.Model)
		
		-- Not a valid vehicle to be spawning..
		if ( vehicle ) then 
			for k, v in pairs( vehicle.KeyValues ) do
				ent:SetKeyValue( k, v )
			end	 
			ent:Spawn()
			ent:Activate()
			
			ent.VehicleName 	= vname
			ent.VehicleTable 	= vehicle
			ent.ClassOverride 	= vehicle.Class
			-- This is the main part that fixes the animation.
			if ( vehicle.Members ) then
				table.Merge( ent, vehicle.Members )
				duplicator.StoreEntityModifier( ent, "VehicleMemDupe", vehicle.Members );
			end
			
			PNRP.SetOwner(ply, ent)
		end
	else
	
		ent:SetModel(ITEM.Model)
		ent:SetKeyValue( "actionScale", 1 ) 
		ent:SetKeyValue( "VehicleLocked", 0 ) 
		ent:SetKeyValue( "solid", 6 ) 
		ent:SetKeyValue( "vehiclescript", ITEM.Script ) 
		
		ent:SetKeyValue( "model", ITEM.Model )
		ent:Spawn()
		ent:Activate()
		PNRP.SetOwner(ply, ent)
		PNRP.AddWorldCache( ply,ITEM.ID )
	end
	
	ent.gas = 0
	ent.tank = 5
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   Vehicle	Jalopy					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "vehicle_jalopy"

ITEM.Name = "Jalopy"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 1200
ITEM.Small_Parts = 600
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "vehicle"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "prop_vehicle_jeep"
ITEM.Model = "models/vehicle.mdl"
ITEM.Script = "scripts/vehicles/jalopy.txt"
ITEM.Weight = 500

function ITEM.ToolCheck( p )
	return {["intm_engine"]=1}
end

function ITEM.Use( ply )
	return true	
end


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(ITEM.Ent)
	
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	Msg(tostring(ITEM.Model).."\n")
	//This fixes the seating animation for the seats
	if(ITEM.Ent == "prop_vehicle_prisoner_pod") then
		Msg("Seat fix ran. \n")
		local vname = ITEM.ID
		local VehicleList = list.Get( "Vehicles" )
		local vehicle = VehicleList[ vname ]
		
		ent:SetModel(ITEM.Model)
		
		-- Not a valid vehicle to be spawning..
		if ( vehicle ) then 
			for k, v in pairs( vehicle.KeyValues ) do
				ent:SetKeyValue( k, v )
			end	 
			ent:Spawn()
			ent:Activate()
			
			ent.VehicleName 	= vname
			ent.VehicleTable 	= vehicle
			ent.ClassOverride 	= vehicle.Class
			-- This is the main part that fixes the animation.
			if ( vehicle.Members ) then
				table.Merge( ent, vehicle.Members )
				duplicator.StoreEntityModifier( ent, "VehicleMemDupe", vehicle.Members );
			end
			
			PNRP.SetOwner(ply, ent)
		end
	else
	
		ent:SetModel(ITEM.Model)
		ent:SetKeyValue( "actionScale", 1 ) 
		ent:SetKeyValue( "VehicleLocked", 0 ) 
		ent:SetKeyValue( "solid", 6 ) 
		ent:SetKeyValue( "vehiclescript", ITEM.Script ) 
		
		ent:SetKeyValue( "model", ITEM.Model )
		ent:Spawn()
		ent:Activate()
		PNRP.SetOwner(ply, ent)
		PNRP.AddWorldCache( ply,ITEM.ID )
	end
	
	ent.gas = 0
	ent.tank = 10
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   Vehicle	jeep     				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "vehicle_jeep"

ITEM.Name = "Jeep"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 1200
ITEM.Small_Parts = 600
ITEM.Chemicals = 350
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "vehicle"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "prop_vehicle_jeep_old"
ITEM.Model = "models/buggy.mdl"
ITEM.Script = "scripts/vehicles/jeep_test.txt"
ITEM.Weight = 300

function ITEM.ToolCheck( p )
	return {["intm_engine"]=1}
end

function ITEM.Use( ply )
	return true	
end


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(ITEM.Ent)
	
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	Msg(tostring(ITEM.Model).."\n")
	//This fixes the seating animation for the seats
	if(ITEM.Ent == "prop_vehicle_prisoner_pod") then
		Msg("Seat fix ran. \n")
		local vname = ITEM.ID
		local VehicleList = list.Get( "Vehicles" )
		local vehicle = VehicleList[ vname ]
		
		ent:SetModel(ITEM.Model)
		
		-- Not a valid vehicle to be spawning..
		if ( vehicle ) then 
			for k, v in pairs( vehicle.KeyValues ) do
				ent:SetKeyValue( k, v )
			end	 
			ent:Spawn()
			ent:Activate()
			
			ent.VehicleName 	= vname
			ent.VehicleTable 	= vehicle
			ent.ClassOverride 	= vehicle.Class
			-- This is the main part that fixes the animation.
			if ( vehicle.Members ) then
				table.Merge( ent, vehicle.Members )
				duplicator.StoreEntityModifier( ent, "VehicleMemDupe", vehicle.Members );
			end
			
			PNRP.SetOwner(ply, ent)		
		end
	else
	
		ent:SetModel(ITEM.Model)
		ent:SetKeyValue( "actionScale", 1 ) 
		ent:SetKeyValue( "VehicleLocked", 0 ) 
		ent:SetKeyValue( "solid", 6 ) 
		ent:SetKeyValue( "vehiclescript", ITEM.Script ) 
		
		ent:SetKeyValue( "model", ITEM.Model )
		ent:Spawn()
		ent:Activate()
		PNRP.SetOwner(ply, ent)
		PNRP.AddWorldCache( ply,ITEM.ID )
		
	end
	
	ent.IsGasSystem = true
	ent.gas = 0
	ent.tank = 8
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   50LB BOMB          				 --
-------------------------------------------------------------------
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "gb5_light_b_50lb"

ITEM.Name = "50LB Bomb"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 10
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "Be careful Ahmed we're not at the towers yet."
ITEM.Type = "explosives"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "gb5_light_b_50lb"
ITEM.Model = "models/thedoctor/50lb.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_elecboard"]=1, ["tool_bomb_defuser"]=0 ,["intm_50lb_broken"]=1 }
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent.CanF2 = true
	ent.ID = "gb5_light_b_50lb"
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   100LB BOMB          				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "junk_100lb_bomb"

ITEM.Name = "Undetonated 100LB Bomb"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 200
ITEM.Small_Parts = 10
ITEM.Chemicals = 400
ITEM.Chance = 100
ITEM.Info = "'Muffled Jihad in the distance'"
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "junk_100lb_bomb"
ITEM.Model = "models/thedoctor/100lb.mdl"
ITEM.Script = ""
ITEM.Weight = 40

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent.CanF2 = true
	ent.ID = "junk_100lb_bomb"
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   100LB BOMB          				 --
-------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "gb5_light_b_100lb"

ITEM.Name = "100 LB Bomb"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 100
ITEM.Small_Parts = 20
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "Virgins await"
ITEM.Type = "explosives"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "gb5_light_b_100lb"
ITEM.Model = "models/thedoctor/100lb.mdl"
ITEM.Icon ="models/thedoctor/100lb.mdl"
ITEM.Script = ""
ITEM.Weight = 40

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_elecboard"]=1, ["tool_bomb_defuser"]=0, ["junk_100lb_bomb"]=1 }
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   500LB BOMB          				 --
-------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "junk_500lb_bomb"

ITEM.Name = "Undetonated 500LB Bomb"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 1000
ITEM.Small_Parts = 100
ITEM.Chemicals = 1600
ITEM.Chance = 100
ITEM.Info = "A pre-war Bizzclaw straight from the rubble"
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "junk_500lb_bomb"
ITEM.Model = "models/thedoctor/500lb.mdl"
ITEM.Icon ="models/thedoctor/500lb.mdl"
ITEM.Script = ""
ITEM.Weight = 100

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G   500LB BOMB          				 --
-------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "gb5_medium_b_500lb"

ITEM.Name = "500 LB Bomb"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 700
ITEM.Small_Parts = 400
ITEM.Chemicals = 1000
ITEM.Chance = 100
ITEM.Info = "Tactical Bizzclaw, once you drop it its going to leave a dam big hole"
ITEM.Type = "explosives"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "gb5_medium_b_500lb"
ITEM.Model = "models/thedoctor/500lb.mdl"
ITEM.Icon ="models/thedoctor/500lb.mdl"
ITEM.Script = ""
ITEM.Weight = 100

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_elecboard"]=1, ["tool_bomb_defuser"]=0, ["junk_500lb_bomb"]=1 }
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
------------------------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "hp_m_kit"

ITEM.Name = "Military health kit"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 80
ITEM.Small_Parts = 8
ITEM.Chemicals = 160
ITEM.Chance = 100
ITEM.Info = "A Military variant of the standard medkit, great for gun wounds and injuries"
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "hp_m_kit"
ITEM.Model = "models/stalker/item/medical/medkit2.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/medshot4.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 50 )
		if ( ply:GetMaxHealth() < health + 50  ) then
			ply:SetHealth( ply:GetMaxHealth() )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
--------------------------------------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "hp_s_kit"

ITEM.Name = "Universal Health kit"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 120
ITEM.Small_Parts = 20
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "This Health kit has the right tools for all injuries"
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "hp_s_kits"
ITEM.Model = "models/stalker/item/medical/medkit3.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/medshot4.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 70 )
		if ( ply:GetMaxHealth() < health + 70 ) then
			ply:SetHealth( ply:GetMaxHealth() )
		end
		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)