//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//		 This will include all parts		//
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
--				H.A.Z.G   Cultivator	Baking Soda				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_bakingsoda"

ITEM.Name = "Sodium bicarbonate"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Sodium Bicarbonate, more commonly known as baking soda, used in a variety of foods "
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_bakingsoda"
ITEM.Model = "models/props_junk/garbage_bag001a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)

-------------------------------------------------------------------
--				H.A.Z.G   Cultivator	 Cooking Salt			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_cookingsalt"

ITEM.Name = "Sodium chloride"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Sodium chloride, more commonly known as table salt."
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_cookingsalt"
ITEM.Model = "models/props_junk/garbage_bag001a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)

-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 Flour					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_flour"

ITEM.Name = "Flour"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Dude, it's totally fucking like flowers were grinned up into a powder!"
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_flour"
ITEM.Model = "models/props_junk/garbage_bag001a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)

-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 seed					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_seeds"

ITEM.Name = "Genetically Modified Seed"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "Seeds designed to survive the post apocalypse.  They do!  If only you could make more..."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_seeds"
ITEM.Model = "models/props_lab/box01a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 sugar					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_sugar"

ITEM.Name = "Sugar"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Man this shit tastes great !"
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_sugar"
ITEM.Model = "models/props_junk/garbage_bag001a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 Empty bottle		     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_water_bottle_empty"

ITEM.Name = "Empty bottle"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A plastic bottle, Woop-dee-fuckin-do"
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_water_bottle_empty"
ITEM.Model = "models/props_junk/garbage_plasticbottle003a.mdl"
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
end

function ITEM.Use( ply )
	return true
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 water jet				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_waterjet"

ITEM.Name = "Waterjet Cutter"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 10
ITEM.Small_Parts = 20
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A surviving waterjet cutter from ages past.  It cuts metal precisely with high pressure water."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_waterjet"
ITEM.Model = "models/gibs/manhack_gib02.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 yeast					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_yeast"

ITEM.Name = "yeast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Pre-War Yeast can be used in Foods and alcohols."
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_yeast"
ITEM.Model = "models/props_junk/garbage_bag001a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Cultivator	 cooking oil			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_zombiecookingoil"

ITEM.Name = "Headcrab Cooking oil"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Used in higher Quality foods"
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombiecookingoil"
ITEM.Model = "models/props_junk/metalgascan.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return {["intm_zombieoilsrefined"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)

///////////////////////////////////////////////////////////////////
//							Engineer							 //
-------------------------------------------------------------------
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer	 Cast					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_cast"

ITEM.Name = "Cast"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 300
ITEM.Small_Parts =25
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = "A cast for a gear set."
ITEM.Type = "machine"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_cast"
ITEM.Model = "models/mechanics/solid_steel/i_beam_4.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer	 dim saw				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_diamsaw"

ITEM.Name = "Diamond-edge Saw"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 5
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A diamond-edged saw, able to cut through most metals."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_diamsaw"
ITEM.Model = "models/props_forest/circularsaw01.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer	engineer				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_engine"

ITEM.Name = "Makeshift Engine"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 75
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "An engine serviced and ready to be installed. (Requires 3 servos)"
ITEM.Type = "machine"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_engine"
ITEM.Model = "models/props_c17/trappropeller_engine.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_servo"]=3}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer large primer				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_largerifleprimers"

ITEM.Name = "Larger rifle primers"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 5
ITEM.Small_Parts = 15
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "Primers for larger calibre munitions"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_largerifleprimers"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer multi tool				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_multitool"

ITEM.Name = "Electronic Multitool"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 15
ITEM.Small_Parts = 30
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A robotic multitool."
ITEM.Type = "machine"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_multitool"
ITEM.Model = "models/gibs/shield_scanner_gib4.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer Munitions press		   	--
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "tool_ammo_press"

ITEM.Name = "Compact Munitions press"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 175
ITEM.Chance = 100
ITEM.Info = "A suit case carrying a variety of tools used to make Ammunition"
ITEM.Type = "tool"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "tool_ammo_press"
ITEM.Model = "models/props/CS_militia/reloadingpress01.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_munitionspress"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer pistol primers			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_pistolprimers"

ITEM.Name = "Pistol primers"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 0
ITEM.Small_Parts = 5
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "Primers for smaller calibre munitions"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_pistolprimers"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer rifle primer				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_rifleprimers"

ITEM.Name = "Rifle primers"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 0
ITEM.Small_Parts = 10
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Primers for Medium calibre munitions"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_rifleprimers"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer servo 					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_servo"

ITEM.Name = "Servo"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 5
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "Small electrical motor."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_servo"
ITEM.Model = "models/gibs/scanner_gib04.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer shotgun primers			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_shotgunprimer"

ITEM.Name = "Shotgun/Anti-material rifle primers"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 5
ITEM.Small_Parts = 5
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "Primers for shotgun/Anti-material calibre munitions"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_shotgunprimer"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer smokeless powder			 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_smokelesspowder"

-- ITEM.Name = "Smokeless Powder"
-- ITEM.ClassSpawn = "Science"
-- ITEM.Scrap = 0
-- ITEM.Small_Parts = 0
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A propellant used in all modern powder munitions"
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_smokelesspowder"
-- ITEM.Model = "models/props_lab/jar01b.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer waterjet					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_waterjet"

ITEM.Name = "Waterjet Cutter"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 10
ITEM.Small_Parts = 20
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A surviving waterjet cutter from ages past.  It cuts metal precisely with high pressure water."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_waterjet"
ITEM.Model = "models/gibs/manhack_gib02.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G   Engineer zombie engine				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_zombiefulengin"

ITEM.Name = "Headcrab Bio-fuel engine"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 75
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "a engine used in Bio-fuel generators and vehicles"
ITEM.Type = "machine"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombiefulengin"
ITEM.Model = "models/props_c17/trappropeller_engine.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_servo"]=3}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer intm_5.45x39_case       	 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_5.45x39_case"

-- ITEM.Name = "5.45X39MM cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 60
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 60 5.45X39MM empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_5.45x39_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_5.56x45_case"

-- ITEM.Name = "5.56X45MM cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 60
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 60 5.56X45MM empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_5.56x45_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_7.62x39_case"

-- ITEM.Name = "7.62X39MM cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 60
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 60 7.62X39MM empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_7.62x39_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_7.62x51_case"

-- ITEM.Name = "7.62X51MM cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 45
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 40 7.62X51MM empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_7.62x51_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_9x18_case"

-- ITEM.Name = "9X18MM cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 50
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 60 9X18 empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_9x18_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_9x19_case"

-- ITEM.Name = "9X19MM cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 50
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 60 9X19 empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_9x19_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_12gauge_case"

-- ITEM.Name = "12Gauge shells"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 5
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 30
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 16 12Gauge shells."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_12gauge_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_44mag_case"

-- ITEM.Name = "44Magnum cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 20
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 12 44Magnum empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_44mag_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------

-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_45acp_case"

-- ITEM.Name = ".45ACP Cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 30
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 30 .45ACP cases empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_45acp_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_50bmg_case"

-- ITEM.Name = "50 BMG Cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 60
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 20 50BMG empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_50bmg_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G engineer case        				 --
-------------------------------------------------------------------
-- local ITEM = {}


-- ITEM.ID = "intm_50ae_case"

-- ITEM.Name = "50AE Cases"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 20
-- ITEM.Small_Parts = 0 
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "A box containing 14 50AE cases empty cases."
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 0
-- ITEM.Ent = "intm_50ae_case"
-- ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end


-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
//				Scavenger 										 //
///////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--				   H.A.Z.G scavenger        					 --
-------------------------------------------------------------------

-------------------------------------------------------------------
//				science										     //
///////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--				   H.A.Z.G science CD-DRIVE         			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_cddrive"

ITEM.Name = "CD Drive"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Spiining thimgs our noice"
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_cddrive"
ITEM.Model = "models/props_lab/reciever01d.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_modernelectronicsbook"]=0, ["intm_servo"]=1}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Chip                      	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_chip"

ITEM.Name = "Chip"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 5
ITEM.Small_Parts = 40
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A Electronic chip used in a variety of machines"
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_chip"
ITEM.Model = "models/bull/gates/microcontroller1.mdl"
ITEM.Script = ""
ITEM.Weight = 0.1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science CPU         					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_cpu"

ITEM.Name = "CPU"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 25
ITEM.Small_Parts = 15
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_cpu"
ITEM.Model = "models/props/cs_office/computer_caseb_p4a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.ToolCheck( p )
	return {["intm_chip"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Graphics card         		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_graphicscard"

ITEM.Name = "Graphics Card"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 200
ITEM.Small_Parts = 200
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "models/props/cs_office/computer_caseb_p2a.mdl"
ITEM.Model = "models/wingf0x/hdmiplug.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_modernelectronicsbook"]=0, ["intm_resistor"]=1, ["intm_chip"]=4,  ["intm_elecboard"]=4}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science  Motherboard        		     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_motherboard"

ITEM.Name = "Completed Motherboard"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 300
ITEM.Small_Parts = 300
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "A pretty advanced piece of technology for this current place in time "
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_motherboard"
ITEM.Model = "models/props/cs_office/computer_caseb_p7a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_sensorpod"]=1, ["intm_elecboard"]=4, ["intm_cpu"]=1, ["intm_chip"]=6, ["intm_ramcard"]=2, ["intm_graphicscard"]=1, ["intm_transistors"]=1, ["intm_resistor"]=4, ["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Power supply         		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_powersupply"

ITEM.Name = "Power Supply"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 100
ITEM.Small_Parts = 80
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "A power Supply used in larger machines"
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_powersupply"
ITEM.Model = "models/props_lab/reciever01b.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_chip"]=1, ["intm_resistor"]=4, ["intm_elecboard"]=8, ["intm_modernelectronicsbook"]=0 }
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science RAM          				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_ramcard"

ITEM.Name = "RAM Card"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "A 2GB RAM Card used in electronics"
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_ramcard"
ITEM.Model = "models/props/cs_office/computer_caseb_p5a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- Items Required to construct 
	return {["intm_chip"]=16, ["intm_resistor"]=1, ["intm_modernelectronicsbook"]=0}
end


function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science RESISTOR         			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_resistor"

ITEM.Name = "Resistor"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_resistor"
ITEM.Model = "models/bull/gates/resistor.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science transistor           		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_transistors"

ITEM.Name = "transistors"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_transistors"
ITEM.Model = "models/kobilica/transistor.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Electronic board         	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_elecboard"

ITEM.Name = "Electronic Board"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 5
ITEM.Small_Parts = 5
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "Pretty modular electrical boards. Mostly for robotics."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_elecboard"
ITEM.Model = "models/wingf0x/isaplug.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Fusion core          		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_fusioncore"

ITEM.Name = "Fusion Core"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 40
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "An extremely rare reactor core for a fusion reactor."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_fusioncore"
ITEM.Model = "models/props_combine/combine_light002a.mdl"
ITEM.Script = ""
ITEM.Weight = 2
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Grubegg         				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_grubegg"

ITEM.Name = "Grub Egg"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "An egg carefully picked from a hive."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_grubegg"
ITEM.Model = "models/props_hive/egg_phy.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science HUD         					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_hudint"

ITEM.Name = "HUD Interface"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 5
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A HUD projector for certain items.  It projects into your vision."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_hudint"
ITEM.Model = "models/gibs/shield_scanner_gib1.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Nuclear rector           	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_nukecore"

ITEM.Name = "Nuclear Reactor Core"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 40
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A rare, heavy part.  It's the reaction chamber for a small nuclear reactor."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_nukecore"
ITEM.Model = "models/combine_helicopter/helicopter_bomb01.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Pulse core          			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_pulsecore"

ITEM.Name = "Pulse Core"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 5
ITEM.Small_Parts = 15
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "A plasma weapon pulse core.  It both generates the pulse, and accelerates it."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_pulsecore"
ITEM.Model = "models/props_combine/headcrabcannister01a_skybox.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Sensor         				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_sensorpod"

ITEM.Name = "Sensorpod"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 20
ITEM.Small_Parts = 20
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "An aging sensor pod from times past."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_sensorpod"
ITEM.Model = "models/gibs/shield_scanner_gib5.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Solar film           		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_solarthinfilm"

ITEM.Name = "Solar Thin Film Roll"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 20
ITEM.Small_Parts = 5
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "A roll of copper indium gallium selenide film, fragile outside of it's protective case."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_solarthinfilm"
ITEM.Model = "models/props/de_nuke/wall_light.mdl"
ITEM.Script = ""
ITEM.Weight = 2
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Zombie oils         	    	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_zombieoils"

ITEM.Name = "Crude Headcrab Oils"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Headcrab oils are a result of extracting the liquid from Headcrab meat."
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombieoils"
ITEM.Model = "models/props_junk/metalgascan.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	-- Items Required to make crude headcrab oil X2 Brick 
	return {["food_rawhead"]=4, ["gidzco_brick"]=0, ["gidzco_brick"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science Refined oils         		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_zombieoilsrefined"

ITEM.Name = "Refined Headcrab Oils"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Refined Headcrab oils have had all the excesses chemicals and solids filtered out and is ready to burn"
ITEM.Type = "fuel"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombieoilsrefined"
ITEM.Model = "models/props_junk/metalgascan.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return {["intm_zombieoils"]=3, ["tool_waterpurifier"]=0, ["tool_paper"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G science          					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_water_bottle_empty"

ITEM.Name = "Empty Bottle"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A plastic bottle. Woop-dee-fuckin-doo."
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_water_bottle_empty"
ITEM.Model = "models/props_junk/garbage_plasticbottle003a.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G tablet         					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "intm_puretablet"

ITEM.Name = "Water Purification Tablets"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 10
ITEM.Small_Parts = 0
ITEM.Chemicals = 75
ITEM.Chance = 100
ITEM.Info = "Seems like these things might even be able to purify poisoned water."
ITEM.Type = "cooking"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_puretablet"
ITEM.Model = "models/stalker/item/medical/antidote.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G Civilian gun safe        			 --
-------------------------------------------------------------------
ITEM.ID = "intm_civilian_gun_safe"

ITEM.Name = "Civilian Gun Safe"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 150
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A Pre-war civilian gun safe, still unopened who knows what goodies it has inside."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_civilian_gun_safe"
ITEM.Model = "models/props/CS_militia/footlocker01_closed.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G intm_law_gun_safe          			 --
-------------------------------------------------------------------
ITEM.ID = "intm_law_gun_safe"

ITEM.Name = "Law Enforcement Firearms Safe"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 150
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A Pre-war Law enforcement safe, still unopened who knows what goodies it has inside."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_law_gun_safe"
ITEM.Model = "models/props/CS_militia/refrigerator01.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G intm_military_gun_safe         		 --
-------------------------------------------------------------------
ITEM.ID = "intm_military_gun_safe"

ITEM.Name = "Military Firearms Crate"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 150
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A Pre-war military firearms crate, still unopened who knows what goodies it has inside."
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_military_gun_safe"
ITEM.Model = "models/items/ammocrate_smg2.mdl"
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
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G 50lb bomb broken      		 --
-------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_50lb_broken"

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
ITEM.Ent = "intm_50lb_broken"
ITEM.Model = "models/thedoctor/50lb.mdl"
ITEM.Icon ="models/thedoctor/50lb.mdl"
ITEM.Script = ""
ITEM.Weight = 20
ITEM.ShopHide = true

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
----------------------------------------------------------------------------------------------------------------------------
-- local ITEM = {}

-- ITEM.ID = "5.45x39_round"

-- ITEM.Name = "5.45X39 Round"
-- ITEM.ClassSpawn = "all"
-- ITEM.Scrap = 0
-- ITEM.Small_Parts = 0
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "Ya fuckin put em in a mag m8"
-- ITEM.Type = "ammopart"
-- ITEM.Remove = true
-- ITEM.Energy = 20
-- ITEM.Ent = "intm_5.45x39_round"
-- ITEM.Model = "models/shells/5_45x39mm.mdl"
-- ITEM.Icon ="models/shells/5_45x39mm.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 0.01
-- ITEM.ShopHide = true

-- function ITEM.ToolCheck( p )
	-- return {["fas2_ammo_545x39"]=1}
-- end

-- function ITEM.Use( ply )
	-- return true	
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create(class)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetModel(ITEM.Model)
	-- ent:SetPos(pos)
	-- ent:Spawn()
-- end

-- PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				   H.A.Z.G Plastic bucket      		             --
-------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_plastic_bucket"

ITEM.Name = "Plastic bucket"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 1
ITEM.Small_Parts = 2
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "Read the title dumb ass"
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_plastic_bucket"
ITEM.Model = "models/props_junk/plasticbucket001a.mdl"
ITEM.Icon ="models/props_junk/plasticbucket001a.mdl"
ITEM.Script = ""
ITEM.Weight = 2
ITEM.ShopHide = true

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
--				   H.A.Z.G 50lb bomb broken      		 --
-------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_bathtub"

ITEM.Name = "Bathtub "
ITEM.ClassSpawn = "none"
ITEM.Scrap = 300
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "If you happen to shit in it, you can always stomp the shit into the drainage"
ITEM.Type = "misc"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_bathtub"
ITEM.Model = "models/props_interiors/BathTub01a.mdl"
ITEM.Icon ="models/props_interiors/BathTub01a.mdl"
ITEM.Script = ""
ITEM.Weight = 25
ITEM.ShopHide = true

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
----------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_soldering_iron"

ITEM.Name = "Pre-war Soldering-iron kit"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 100
ITEM.Small_Parts = 500
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "Still in good condition, the tip is a bit rusty but that could be wiped away."
ITEM.Type = "electric"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_soldering_iron"
ITEM.Model = "models/props_c17/briefcase001a.mdl"
ITEM.Icon ="models/props_c17/briefcase001a.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 9X18 
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_9x18"

ITEM.Name = "9X18 Case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 9x18 case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_9x18"
ITEM.Model = "models/shells/9x18mm.mdl"
ITEM.Icon ="models/shells/9x18mm.mdl"
ITEM.Script = ""
ITEM.Weight = 0.01
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 9X19
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_9x19"

ITEM.Name = "9X19 Case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 9x19 case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_9x19"
ITEM.Model = "models/shells/9x19mm.mdl"
ITEM.Icon ="models/shells/9x19mm.mdl"
ITEM.Script = ""
ITEM.Weight = 0.01
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 50AE
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_50ae"

ITEM.Name = ".50AE Case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 3
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged .50AE case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_50ae"
ITEM.Model = "models/shells/50ae.mdl"
ITEM.Icon ="models/shells/50ae.mdl"
ITEM.Script = ""
ITEM.Weight = 0.05
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 44Magnum
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_44mag"

ITEM.Name = "44Magnum case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 3
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 44Magnum case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_44mag"
ITEM.Model = "models/shells/44mag.mdl"
ITEM.Icon ="models/shells/44mag.mdl"
ITEM.Script = ""
ITEM.Weight = 0.05
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE .45ACP 
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_45acp"

ITEM.Name = ".45ACP case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged .45ACP case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_45acp"
ITEM.Model = "models/shells/45acp.mdl"
ITEM.Icon ="models/shells/45acp.mdl"
ITEM.Script = ""
ITEM.Weight = 0.03
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 5.45X39MM
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_545x39"

ITEM.Name = "5.45X39 case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 5.45X39 case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_545x39"
ITEM.Model = "models/shells/5_45x39mm.mdl"
ITEM.Icon ="models/shells/5_45x39mm.mdl"
ITEM.Script = ""
ITEM.Weight = 0.10
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 5.56X45
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_556x45"

ITEM.Name = "5.56X45 case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 5.56X45 case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_556x45"
ITEM.Model = "models/shells/5_56x45mm.mdl"
ITEM.Icon ="models/shells/5_56x45mm.mdl"
ITEM.Script = ""
ITEM.Weight = 0.10
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 7.62X39
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_762x39"

ITEM.Name = "7.62X39 case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 6
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 7.62X39 case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_762x39"
ITEM.Model = "models/shells/5_56x45mm.mdl"
ITEM.Icon ="models/shells/7_62x39mm.mdl"
ITEM.Script = ""
ITEM.Weight = 0.13
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 7.62X51
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_762x51"

ITEM.Name = "7.62X51 case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 8
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged 7.62X51 case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_762x51"
ITEM.Model = "models/shells/7_62x51mm.mdl"
ITEM.Icon ="models/shells/7_62x51mm.mdl"
ITEM.Script = ""
ITEM.Weight = 0.15
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE 12Gauge case
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_shotgun"

ITEM.Name = "Shotgun case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 6
ITEM.Chance = 100
ITEM.Info = "A discharged Shotgun case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_shotgun"
ITEM.Model = "models/shells/12g_slug.mdl"
ITEM.Icon ="models/shells/12g_slug.mdl"
ITEM.Script = ""
ITEM.Weight = 0.10
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW CASE .50BMG Case
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_case_50bmg"

ITEM.Name = ".50BMG Case"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 15
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A discharged Shotgun case, With the right steps and equipment it can be reloaded"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_case_50bmg"
ITEM.Model = "models/shells/50bmg.mdl"
ITEM.Icon ="models/shells/50bmg.mdl"
ITEM.Script = ""
ITEM.Weight = 0.50
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW PRIMER SMALL PISTOLE PRIMERS
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_primer_small_pis"

ITEM.Name = "Small pistol primers"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 1
ITEM.Chance = 100
ITEM.Info = "This primer can be inserted into 9x18 9x19 and .45ACP Cases"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_primer_small_pis"
ITEM.Model = "models/props/cs_office/cardboard_box03.mdl"
ITEM.Icon ="models/props/cs_office/cardboard_box03.mdl"
ITEM.Script = ""
ITEM.Weight = 0.10
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW PRIMER Large PISTOLE PRIMERS
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_primer_large_pis"

ITEM.Name = "Large pistol primers"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "This primer can be inserted into .50AE and 44Magnum Cases"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_primer_large_pis"
ITEM.Model = "models/props/cs_office/cardboard_box03.mdl"
ITEM.Icon ="models/props/cs_office/cardboard_box03.mdl"
ITEM.Script = ""
ITEM.Weight = 0.20
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW PRIMER SMALL RIFLE PRIMERS
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_primer_small_rif"

ITEM.Name = "Small rifle primers"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "This primer can be inserted into 5.45X39,5.56x45 and 7.62x39 cases"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_primer_small_rif"
ITEM.Model = "models/props/cs_office/cardboard_box03.mdl"
ITEM.Icon ="models/props/cs_office/cardboard_box03.mdl"
ITEM.Script = ""
ITEM.Weight = 0.20
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW PRIMER LARGE RIFLE PRIMERS
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_primer_large_rif"

ITEM.Name = "Largerifle primers"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 3
ITEM.Small_Parts = 0
ITEM.Chemicals = 3
ITEM.Chance = 100
ITEM.Info = "This primer can be inserted into 7.62x51 and 7.62X54MMR cases"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_primer_large_rif"
ITEM.Model = "models/props/cs_office/cardboard_box03.mdl"
ITEM.Icon ="models/props/cs_office/cardboard_box03.mdl"
ITEM.Script = ""
ITEM.Weight = 0.25
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW PRIMER Mutli RIFLE PRIMERS
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_primer_large_muliti"

ITEM.Name = "Large Multi shell primers"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 4
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "This primer can be inserted into 12Gauge .50BMG cases"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_primer_large_muliti"
ITEM.Model = "models/props/cs_office/cardboard_box03.mdl"
ITEM.Icon ="models/props/cs_office/cardboard_box03.mdl"
ITEM.Script = ""
ITEM.Weight = 0.30
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW 12GAUGE WAD
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_shotgun_wad"

ITEM.Name = "12Gauge Wad"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "12Gauge wads are used to hold the shot separate from the powder"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_shotgun_wad"
ITEM.Model = "models/shells/12g_wad.mdl"
ITEM.Icon ="models/shells/12g_wad.mdl"
ITEM.Script = ""
ITEM.Weight = 0.05
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW GRAIN OF SMOKELESS POWDER
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_grain_smokepowder"

ITEM.Name = "Grain of Smokeless powder"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "Smokeless powder is used as the propellant in most cartridges"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_grain_smokepowder"
ITEM.Model = "models/props_lab/jar01b.mdl"
ITEM.Icon ="models/props_lab/jar01b.mdl"
ITEM.Script = ""
ITEM.Weight = 0.05
ITEM.ShopHide = true

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
-------------------------------------------------------------------------------------------------------------------------------
-- NEW 9X18 Bullet
-------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}

ITEM.ID = "intm_bullet_9x18"

ITEM.Name = "9X18 Bullet"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 1
ITEM.Chance = 100
ITEM.Info = "A 9x18 bullet ready to be inserted into a case"
ITEM.Type = "ammopart"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_grain_smokepowder"
ITEM.Model = "models/props_lab/jar01b.mdl"
ITEM.Icon ="models/props_lab/jar01b.mdl"
ITEM.Script = ""
ITEM.Weight = 0.25
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return {["intm_lead_bar"]=1, ["intm_brass_bar"]=1}
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
