//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//		 This will include all tools		//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							Cultivator							 //
-------------------------------------------------------------------

-------------------------------------------------------------------
--				H.A.Z.G   Cultivator	Auto Airator			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_airator"

ITEM.Name = "Automated Airator"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 240
ITEM.Small_Parts = 40
ITEM.Chemicals = 120
ITEM.Chance = 100
ITEM.Info = "Airates; the tough wasteland soil for today's plants."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_airator"
ITEM.Model = "models/maxofs2d/light_tubular.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_elecboard"]=1, ["intm_resistor"]=1}
end


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)

-------------------------------------------------------------------
--				  H.A.Z.G   Cultivator	Coffee Pot				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_coffeepot"

ITEM.Name = "Coffee Pot"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 90
ITEM.Small_Parts = 20
ITEM.Chemicals = 160
ITEM.Chance = 100
ITEM.Info = "A coffee pot.  Always there to keep you awake... If you put coffee in it."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_coffeepot"
ITEM.Model = "models/props_interiors/pot01a.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	--PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)

-------------------------------------------------------------------
--					H.A.Z.G	 Cultivator	 Deep Pot				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_deeppot"

ITEM.Name = "Deep Pot"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 240
ITEM.Small_Parts = 10
ITEM.Chemicals = 120
ITEM.Chance = 100
ITEM.Info = "A deep pot.  Can't make anything with it alone."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_deeppot"
ITEM.Model = "models/props_c17/metalpot001a.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	--PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G	 Cultivator	 Hopper			     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_hopper"

ITEM.Name = "Item Hopper"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 150
ITEM.Small_Parts = 100
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "Grabs and stores, hell if we know where the items go..."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_hopper"
ITEM.Model = "models/props_wasteland/laundry_cart002.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()

	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G	 Cultivator	 Potted plant			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_pottedplant"

ITEM.Name = "Potted Plant"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 450
ITEM.Small_Parts = 250
ITEM.Chemicals = 1700
ITEM.Chance = 100
ITEM.Info = "A slowly raised, but now useful plant.  Grows fruits if taken care of."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_pottedplant"
ITEM.Model = "models/props/cs_office/plant01.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_seeds"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G	 Cultivator	 Saucepan   			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_saucepan"

ITEM.Name = "Tin Saucepan"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 180
ITEM.Small_Parts = 25
ITEM.Chemicals = 140
ITEM.Chance = 100
ITEM.Info = "A sauce pan.  Useful for the growing cook."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_saucepan"
ITEM.Model = "models/props_interiors/pot02a.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	--PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G	 Cultivator	 Skillet     			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_skillet"

ITEM.Name = "Iron Skillet"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 200
ITEM.Small_Parts = 15
ITEM.Chemicals = 80
ITEM.Chance = 100
ITEM.Info = "A skillet!  Always useful!"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_skillet"
ITEM.Model = "models/props_c17/metalpot002a.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	--PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--					H.A.Z.G	 Cultivator	Water purifier			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_waterpurifier"

ITEM.Name = "Water Purifier"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 240
ITEM.Small_Parts = 160
ITEM.Chemicals = 320
ITEM.Chance = 100
ITEM.Info = "Water purifier for making your plants healthier."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_waterpurifier"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return {["intm_servo"]=2, ["intm_elecboard"]=1 ,["intm_resistor"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
//																 //
///////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							Engineer							 //
-------------------------------------------------------------------


-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 CNC					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_cnc"

ITEM.Name = "CNC Mill"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 800
ITEM.Small_Parts = 1200
ITEM.Chemicals = 400
ITEM.Chance = 100
ITEM.Info = "Used to machine the heaviest weaponry of the wasteland."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_cnc"
ITEM.Model = "models/props_lab/reciever_cart.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	return {["intm_waterjet"]=2, ["intm_multitool"]=1, ["intm_elecboard"]=6, ["intm_servo"]=10, ["intm_ramcard"]=1, ["intm_motherboard"]=1, ["book_modernelectronicsbook"]=0, ["intm_powersupply"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos+Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 gas gen				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_gasgen"

ITEM.Name = "Gas Generator"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 900
ITEM.Small_Parts = 1200
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = "A Gas Generator with a 250V output, Fuck em hippies I like my Environment hot."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_gasgen"
ITEM.Model = "models/props_vehicles/generatortrailer01.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	return {["intm_engine"]=1, ["intm_elecboard"]=2, ["intm_multitool"]=1}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 smelter				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_smelter"

ITEM.Name = "Smelting Furnace"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 800
ITEM.Small_Parts = 300
ITEM.Chemicals = 1200
ITEM.Chance = 100
ITEM.Info = "A metal smelting furnace.  Can convert small parts into scrap."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_smelter"
ITEM.Model = "models/props_forest/furnace01.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 smelter+cast			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_smeltery_caster"

ITEM.Name = "Smelting Furnace with Cast"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 800
ITEM.Small_Parts = 300
ITEM.Chemicals = 1200
ITEM.Chance = 100
ITEM.Info = "A modified smelting furnace which melts scrap and converts it into small parts. "
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_smeltery_caster"
ITEM.Model = "models/props_forest/furnace01.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	return {["intm_cast"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 storage				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_storage"

ITEM.Name = "Player Storage Container"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 1000
ITEM.Small_Parts = 100
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "For Player Personal Storage."
ITEM.Type = "tool"
ITEM.Remove = false
ITEM.Energy = 0
ITEM.Ent = "tool_storage"
ITEM.Model = "models/props_c17/Lockers001a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.Capacity = 600
ITEM.ProfileCost = "500 150 100"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetModel("models/props_c17/Lockers001a.mdl")
				  
	ent:SetAngles( ply:GetAngles()-Angle(0,180,0) )
	ent:SetPos(pos + Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	ent:SetNetworkedString("pid", ply.pid)
	ent:SetNetworkedString("name", ply:Nick().."'s Storage")
	ent:SetNetworkedString("storageid", nil)
	
	ent:GetPhysicsObject():Wake()
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 vendor					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_vendor"

ITEM.Name = "Vending Machine"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 2000
ITEM.Small_Parts = 600
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "A vending machine to sell items."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_vendor"
ITEM.Model = "models/props/cs_office/vending_machine.mdl"
ITEM.Script = ""
ITEM.Weight = 10
ITEM.Capacity = 600
ITEM.ProfileCost = "500 150 100"
ITEM.Persistent = true

function ITEM.ToolCheck( p )
	return {["intm_hudint"]=1,["intm_sensorpod"]=15, ["intm_elecboard"]=8, ["intm_servo"]=12, ["intm_powersupply"]=1, ["book_modernelectronicsbook"]=0, ["intm_motherboard"]=1, ["intm_cddrive"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetModel("models/props_interiors/vendingmachinesoda01a.mdl")
	ent:SetAngles( ply:GetAngles()-Angle(0,180,0) )
	ent:SetPos(pos + Vector(0,0,30))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	ent:SetNetworkedString("pid", ply.pid)
	ent:SetNetworkedString("name", ply:Nick().."'s Vending Machine")
	ent:SetNetworkedString("vendorid", nil)
	
	ent:GetPhysicsObject():Wake()
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	 workbench				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_workbench"

ITEM.Name = "Workbench"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 600
ITEM.Small_Parts = 850
ITEM.Chemicals = 400
ITEM.Chance = 100
ITEM.Info = "A workbench with different tools for better items."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_workbench"
ITEM.Model = "models/props_canal/winch02.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	return {["intm_diamsaw"]=1, ["intm_elecboard"]=4, ["intm_servo"]=8}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	zombie gen				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_zombiegen"

ITEM.Name = "Bio-fuel Generator"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 900
ITEM.Small_Parts = 1200
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = "A Bio-fuel generator with a 250V output, Its Carbon-neutral so the hippies should fuck off"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_zombiegen"
ITEM.Model = "models/props_vehicles/generatortrailer01.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	return {["intm_Zombiefulengin"]=1, ["intm_elecboard"]=2, ["intm_multitool"]=1}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Engineer	PAPER   				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_paper"

ITEM.Name = "Paper"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 0
ITEM.Small_Parts = 1
ITEM.Chemicals =5
ITEM.Chance = 100
ITEM.Info = "Maybe if I write some shit down on here and slide it under Senpai's door he will notice me. Desu Desu"
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_paper"
ITEM.Model = "models/props_c17/paper01.mdl"
ITEM.Script = ""
ITEM.Weight = 0

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)

	ent:SetAngles( ply:GetAngles()-Angle(0,180,0) )
	ent:SetPos(pos + Vector(0,0,30))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	ent:SetNetworkedString("pid", ply.pid)
	ent:SetNetworkedString("name", ply:Nick().."'s Paper")
	ent:SetNetworkedString("text", " ")
	ent.name = ent.Entity:GetNWString("name", "")
	ent.text = ent.Entity:GetNWString("text", "")
	
	ent:GetPhysicsObject():Wake()
	
--	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
//							PET									 //
///////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--				    H.A.Z.G   PET	HEADCRAB       				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_petcrab"

ITEM.Name = "Pet Headcrab"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A neutered headcrab."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_hdvermin"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
--	ent:SetModel( "models/headcrabclassic.mdl" )
	ent:Spawn()
	
	PNRP.SetOwner(ply, ent)
	
	ent:SetNetworkedString("name", ply:Nick().."'s Pet Headcrab")
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   PET CROW           				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_petcrow"

ITEM.Name = "Pet Crow"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Pet Crow. He said Nevermore."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_petbird_crow"
ITEM.Model = "models/crow.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	
	PNRP.SetOwner(ply, ent)
	
	ent:SetNetworkedString("name", ply:Nick().."'s Pet Crow")
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   PET FASTCRAB  					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_petfastcrab"

ITEM.Name = "Pet Fast Headcrab"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A neutered fast headcrab."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_hdvermin_fast"
ITEM.Model = "models/headcrab.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
--	ent:SetModel( "models/headcrab.mdl" )

	ent:Spawn()
	
	PNRP.SetOwner(ply, ent)
	
	ent:SetNetworkedString("name", ply:Nick().."'s Pet Headcrab")
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   SEAGUL        					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_petgull"

ITEM.Name = "Pet Seagull"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Pet Seagull. Mine?"
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_petbird_gull"
ITEM.Model = "models/seagull.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	
	PNRP.SetOwner(ply, ent)
	
	ent:SetNetworkedString("name", ply:Nick().."'s Pet Seagull")
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   PET PIGION      					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_petpigeon"

ITEM.Name = "Pet Pigeon"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A rat with wings, also known as a Pigeon."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_petbird_pigeon"
ITEM.Model = "models/pigeon.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	
	PNRP.SetOwner(ply, ent)
	
	ent:SetNetworkedString("name", ply:Nick().."'s Pet Pigeon")
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   POISEN CRAB    					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_petpoisoncrab"

ITEM.Name = "Pet Poison Headcrab"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A neutered poison headcrab."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_hdvermin_poison"
ITEM.Model = "models/headcrabblack.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
--	ent:SetModel( "models/headcrabblack.mdl" )
	ent:Spawn()
	
	PNRP.SetOwner(ply, ent)
	
	ent:SetNetworkedString("name", ply:Nick().."'s Pet Headcrab")
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
///////////////////////////////////////////////////////////////////
//							Scavenger 							 //
-------------------------------------------------------------------
--				    H.A.Z.G   Scavenger GPR    					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_gpr"

ITEM.Name = "Ground-Penetrating Radar"
ITEM.ClassSpawn = "Wastelander"
ITEM.Scrap = 240
ITEM.Small_Parts = 40
ITEM.Chemicals = 120
ITEM.Chance = 100
ITEM.Info = "Great for the resource-hoarding strongman!"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_gpr"
ITEM.Model = "models/props_rooftop/satellitedish02.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Scavenger Miner    				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_miner"

ITEM.Name = "Automated Sonic Miner"
ITEM.ClassSpawn = "Scavenger"
ITEM.Scrap = 950
ITEM.Small_Parts = 1150
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "Gives antlions one hell of a head ache."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_miner"
ITEM.Model = "models/props_combine/combinethumper002.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_sensorpod"]=2, ["intm_elecboard"]=6, ["intm_servo"]=8 ,["intm_powersupply"]=1, ["book_modernelectronicsbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G   Scavenger Supper miner   			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_super_miner"

ITEM.Name = "Automated Super Sonic Miner"
ITEM.ClassSpawn = "Scavenger"
ITEM.Scrap = 2000
ITEM.Small_Parts = 2200
ITEM.Chemicals = 1000
ITEM.Chance = 100
ITEM.Info = "Forget the antlion headache, bring on the migrane.."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_super_miner"
ITEM.Model = "models/props_combine/combinethumper001a.mdl"
ITEM.Script = ""
ITEM.Weight = 40

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_sensorpod"]=4, ["intm_elecboard"]=12, ["intm_servo"]=16, ["intm_powersupply"]=1, ["book_modernelectronicsbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
///////////////////////////////////////////////////////////////////
//							Science 							 //
-------------------------------------------------------------------
--				    H.A.Z.G Science battery                  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_battery"

ITEM.Name = "Battery"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 120
ITEM.Small_Parts = 60
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = "A small battery."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_battery"
ITEM.Model = "models/items/car_battery01.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_hudint"]=1, ["intm_elecboard"]=2}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(ply:GetAngles())
	ent:SetPos(pos + Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science charger                 	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_batterycharger"

ITEM.Name = "Battery Charger"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 400
ITEM.Small_Parts = 200
ITEM.Chemicals = 800
ITEM.Chance = 100
ITEM.Info = "A charger for high-capacity batteries."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_batterycharger"
ITEM.Model = "models/props_lab/tpplugholder_single.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_hudint"]=1, ["intm_elecboard"]=2}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(ply:GetAngles())
	ent:SetPos(pos + Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Battery conductor            --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_batteryconductor"

ITEM.Name = "Battery Conductor"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 200
ITEM.Small_Parts = 120
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "A conductor in which current is transferred"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_batteryconductor"
ITEM.Model = "models/props_lab/tpplug.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_hudint"]=1, ["intm_elecboard"]=4}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(ply:GetAngles())
	ent:SetPos(pos + Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Grub                 		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_chemgrub"

ITEM.Name = "Wasteland Worm"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 400
ITEM.Small_Parts = 400
ITEM.Chemicals = 1500
ITEM.Chance = 100
ITEM.Info = "Long poly-carbonate chained excretions and fluorescent reactions!  Dream come true!"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_chemgrub"
ITEM.Model = "models/antlion_grub.mdl"
ITEM.Script = ""
ITEM.Weight = 4

function ITEM.ToolCheck( p )
	return {["intm_grubegg"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_chemgrub D_LI 99")
	ent:AddRelationship("player D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_turret_floor")) do
		v:AddEntityRelationship(ent, D_LI, 99 )
	end
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Fusion rec                	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_fusion"

ITEM.Name = "Fusion Power Generator"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 2000
ITEM.Small_Parts = 2200
ITEM.Chemicals = 1500
ITEM.Chance = 100
ITEM.Info = "A fusion generator.  Whoop de fuckin' do."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_fusion"
ITEM.Model = "models/props_combine/combine_generator01.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_fusioncore"]=1, ["intm_elecboard"]=15, ["intm_servo"]=6, ["intm_multitool"]=1, ["intm_motherboard"]=2, ["intm_resistor"]=10, ["book_modernelectronicsbook"]=0}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	local ent = ents.Create(class)
	ent:SetAngles(ply:GetAngles()+Angle(0,90,0))
	ent:SetPos(pos + Vector(0,0,75))
	ent:Spawn()
	ent:Activate()
	ent:GetPhysicsObject():EnableMotion(false)

	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Nuclear rector               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_nuclear"

ITEM.Name = "Nuclear Power Generator"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 1200
ITEM.Small_Parts = 1400
ITEM.Chemicals = 800
ITEM.Chance = 100
ITEM.Info = "A nuclear generator.  All hail the Atom!"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_nuclear"
ITEM.Model = "models/props_lab/cornerunit2.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_nukecore"]=1, ["intm_elecboard"]=10, ["intm_servo"]=6, ["intm_multitool"]=2, ["intm_motherboard"]=1, ["intm_resistor"]=6, ["book_modernelectronicsbook"]=0}
	--return true
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Relay                 		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_relay"

ITEM.Name = "Power Relay"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 200
ITEM.Small_Parts = 80
ITEM.Chemicals = 120
ITEM.Chance = 100
ITEM.Info = "A power relay to extend cable distance."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_relay"
ITEM.Model = "models/props_c17/substation_transformer01d.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	-- This one returns required items.
	--return {["intm_hudint"]=1, ["intm_elecboard"]=2, ["intm_servo"]=1}
	return true
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(ply:GetAngles())
	ent:SetPos(pos + Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Solar panel                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_solar"

ITEM.Name = "Solar Panel"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 600
ITEM.Small_Parts = 200
ITEM.Chemicals = 500
ITEM.Chance = 100
ITEM.Info = "A solar panel.  A loner's best friend."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_solar"
ITEM.Model = "models/hunter/plates/plate1x2.mdl"
ITEM.Script = ""
ITEM.Weight = 15
ITEM.UnBlock = true

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_solarthinfilm"]=2, ["intm_elecboard"]=3}
	--return true
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Turret                 		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_turret"

ITEM.Name = "Portable Turret"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 2200
ITEM.Small_Parts = 3800
ITEM.Chemicals = 700
ITEM.Chance = 100
ITEM.Info = "You'd be lost without your portable turret!  Just $1999.95!"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "npc_turret_floor"
ITEM.Model = "models/combine_turrets/floor_turret.mdl"
ITEM.Script = ""
ITEM.Weight = 18

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_sensorpod"]=6, ["intm_pulsecore"]=1, ["intm_elecboard"]=16, ["intm_servo"]=12, ["intm_powersupply"]=1, ["intm_resistor"]=4, ["intm_ramcard"]=2, ["intm_motherboard"]=1, ["intm_graphicscard"]=1, ["book_modernelectronicsbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,180,0))
	ent:SetPos(pos)
	ent:SetKeyValue( "spawnflags", 0 )
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	ent:AddRelationship("npc_floor_turret D_LI 99")
	ent:AddRelationship("npc_chemgrub D_LI 99")
	ent:AddRelationship("player D_LI 99")
	ent:AddRelationship("npc_hdvermin D_LI 99")
	ent:AddRelationship("npc_hdvermin_fast D_LI 99")
	ent:AddRelationship("npc_hdvermin_poison D_LI 99")
	ent:AddRelationship("npc_petbird_crow D_LI 99")
	ent:AddRelationship("npc_petbird_gull D_LI 99")
	ent:AddRelationship("npc_petbird_pigeon D_LI 99")
	
	-- Turned off, so friendly with all.
	ent:AddRelationship("npc_zombie D_LI 99")
	ent:AddRelationship("npc_fastzombie D_LI 99")
	ent:AddRelationship("npc_poisonzombie D_LI 99")
	ent:AddRelationship("npc_antlion D_LI 99")
	ent:AddRelationship("npc_antlionguard D_LI 99")
	ent:AddRelationship("npc_headcrab_poison D_LI 99")
	ent:AddRelationship("npc_headcrab_fast D_LI 99")
	ent:AddRelationship("npc_headcrab D_LI 99")
	
	for k, v in pairs(ents.FindByClass("npc_chemgrub")) do
		ent:AddEntityRelationship(v, D_LI, 99 )
	end
	
	for _, class in pairs(PNRP.friendlies) do
		for k, v in pairs(ents.FindByClass(class)) do
			ent:AddEntityRelationship(v, D_LI, 99 )
		end
	end
	
	-- Important power vars!
	ent.PowerItem = true
	ent.PowerLevel = -50
	ent.Entity:SetNWString("PowerUsage", ent.PowerLevel)	
	ent.NetworkContainer = nil
	ent.LinkedItems = {}
	ent.DirectLinks = {}
	
	-- Turret programming vars
	ent.Whitelist = false
	ent.ProgTable = {}
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Wasteland radio              --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_wastelandradio"

ITEM.Name = "Wasteland Radio"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 80
ITEM.Small_Parts = 8
ITEM.Chemicals =30
ITEM.Chance = 100
ITEM.Info = "A Radio."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_wastelandradio"
ITEM.Model = "models/props_lab/citizenradio.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return {["intm_elecboard"]=3}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)

	ent:SetAngles( ply:GetAngles()-Angle(0,180,0) )
	ent:SetPos(pos + Vector(0,0,0))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	ent:SetNetworkedString("pid", ply.pid)
	ent:SetNetworkedString("name", ply:Nick().."'s Radio")
	ent.name = ent.Entity:GetNWString("name", "")
	ent.text = ent.Entity:GetNWString("text", "")
	
	ent:GetPhysicsObject():Wake()
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science Transmitter                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_wastelandtransmitter"

ITEM.Name = "Wasteland FM Transmitter"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 800
ITEM.Small_Parts = 1200
ITEM.Chemicals =250
ITEM.Chance = 100
ITEM.Info = "FM Transmiter."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_wastelandtransmitter"
ITEM.Model = "models/props_lab/workspace003.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	return {["intm_sensorpod"]=1, ["intm_elecboard"]=10}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)

	ent:SetAngles( ply:GetAngles()-Angle(0,180,0) )
	ent:SetPos(pos + Vector(0,0,20))
	ent:Spawn()
	ent:Activate()
	
	PNRP.SetOwner(ply, ent)
	ent:SetNetworkedString("pid", ply.pid)
	ent:SetNetworkedString("name", ply:Nick().."'s Transmitter")
	ent.name = ent.Entity:GetNWString("name", "")
	
	ent:GetPhysicsObject():Wake()
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science radio                		 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}

ITEM.ID = "wep_radio"

ITEM.Name = "Home-made Radio"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 40
ITEM.Small_Parts = 200
ITEM.Chemicals = 80
ITEM.Chance = 100
ITEM.Info = "A radio to talk to other Waste landers  "
ITEM.Type = "weapon"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "weapon_radio"
ITEM.Model = "models/stalker/item/handhelds/radio.mdl"
ITEM.Icon ="models/stalker/item/handhelds/radio.mdl"
ITEM.Script = ""
ITEM.Weight = 4

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "none"

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_hudint"]=1, ["intm_elecboard"]=2}
end

function ITEM.Use( ply )
	local WepName = "weapon_radio"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		-- ply:GetWeapon(WepName):SetClip1(0)
		return true
	else
		ply:ChatPrint("Weapon already equipped.")
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:SetNWString("WepClass", ITEM.Ent)
	ent:SetModel(ITEM.Model)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--				    H.A.Z.G Science shaped charge                --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "wep_shapedcharge"

ITEM.Name = "Shaped Charge"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 20
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Apply to a door or Mound and scream AL AKHBAR for added effect."
ITEM.Type = "explosives"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = "weapon_pnrp_charge"
ITEM.Model = "models/weapons/w_slam.mdl"
ITEM.Icon ="models/weapons/w_slam.mdl"
ITEM.Script = ""
ITEM.Weight = 1

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "slam"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_pnrp_charge"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		
		return true
	else
		ply:GiveAmmo(1, "slam")
		return true
	end
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_AnarchistCookbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:SetNWString("WepClass", ITEM.Ent)
	ent:SetModel(ITEM.Model)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--				    H.A.Z.G Science radar                        --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_radar"

ITEM.Name = "Wastelander Radar"
ITEM.ClassSpawn = "Wastelander"
ITEM.Scrap = 1000
ITEM.Small_Parts = 600
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "The SCXU 8034. The machine that goes... Ping!"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_radar"
ITEM.Model = "models/props_combine/combine_mortar01b.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_hudint"]=1, ["intm_elecboard"]=4, ["intm_servo"]=4}
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				    H.A.Z.G Science radar                        --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_bomb_defuser"

ITEM.Name = "Bomb-Defuser"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 100
ITEM.Small_Parts = 300
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "A pre-war bomb defuser, now it serves a more deadly purpose"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_bomb_defuser"
ITEM.Model = "models/props_lab/reciever01b.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	-- This one returns required items.
	--return {["intm_hudint"]=1, ["intm_elecboard"]=4, ["intm_servo"]=3}
	return true
end

function ITEM.Create( ply, class, pos )	
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
--------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_banana_plant"

ITEM.Name = "Banana tree"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 450
ITEM.Small_Parts = 250
ITEM.Chemicals = 1700
ITEM.Chance = 100
ITEM.Info = "A slowly raised, but now useful plant.  Grows fruits if taken care of."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_banana_plant"
ITEM.Model = "models/props/cs_office/plant01.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_seeds"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-----------------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_cabbage_pot"

ITEM.Name = "Cabbage pot"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 450
ITEM.Small_Parts = 250
ITEM.Chemicals = 1700
ITEM.Chance = 100
ITEM.Info = "A slowly raised, but now useful plant. Grows cabbage comrade !"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_cabbage_pot"
ITEM.Model = "models/props_c17/pottery06a.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_seeds"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-----------------------------------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_water_melon"

ITEM.Name = "Watermelon pot"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 450
ITEM.Small_Parts = 250
ITEM.Chemicals = 1700
ITEM.Chance = 100
ITEM.Info = "A pot which shits out water mellons happy ?"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_water_melon"
ITEM.Model = "models/props_c17/pottery06a.mdl"
ITEM.Script = ""
ITEM.Weight = 10

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_seeds"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
----------------------------------------------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_science_bench"

ITEM.Name = "Science workbench"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 850
ITEM.Small_Parts = 950
ITEM.Chemicals = 1000
ITEM.Chance = 100
ITEM.Info = "Preety fancy bench, its used to make freedom shooters and computer parts billy."
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_science_bench"
ITEM.Model = "models/props_combine/combine_interface001.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_soldering_iron"]=1, ["book_modernelectronicsbook"]=0, ["intm_elecboard"]=4, ["intm_servo"]=2, ["intm_hudint"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-----------------------------------------------------------------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_parts_bench"

ITEM.Name = "Firearms parts bench"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 1150
ITEM.Small_Parts = 800
ITEM.Chemicals = 750
ITEM.Chance = 100
ITEM.Info = "Ya pop some scrap in and some parts pop out, how does it work ?"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_parts_bench"
ITEM.Model = "models/props_combine/combine_lock01.mdl"
ITEM.Script = ""
ITEM.Weight = 15

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["tool_workbench"]=0, ["intm_elecboard"]=2, ["intm_servo"]=8, ["intm_hudint"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:Activate()
	--ent:SetNetworkedString("Owner", ply:Nick())
	PNRP.SetOwner(ply, ent)
	
	PNRP.AddWorldCache( ply,ITEM.ID )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)