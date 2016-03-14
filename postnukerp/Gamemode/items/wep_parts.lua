//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//	  This will include all weapon parts	//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////
// fuck order in this folder, the original  //
// is to much of a mess, and this would be  //
// a far greater mess to clean up.-wiktor   //
//////////////////////////////////////////////
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 380 acp barrel                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_380_barrel"

ITEM.Name = "Barrel 380ACP"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Barrel 380ACP"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_380_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 9X19 Barrel                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_9x18_barrel"

ITEM.Name = "9x18 Barrel SD"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "9X18 barrel"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_9x18_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 5.45x39 receiver              --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_5.45x39_receiver"

ITEM.Name = "AK 5.45X39 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AK 5.45X39 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_5.45x39_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 5.45x39 barrel                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_5.45x39mm_barral"

ITEM.Name = "5.45X39MM Barrel"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "A barrel used in 5.62X45MM weapons."
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_5.45x39mm_barral"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 7.62x39 barrel                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_7.62x39_barrel"

ITEM.Name = "AK 7.62X39MM Barrel"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "A barrel used in AK 7.62X39MM weapons."
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_7.62x39_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 7.62x39 receiver               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_7.62x39_receiver"

ITEM.Name = "AK 7.62X39MM Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AK 7.62X39MM Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_7.62x39_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 9x18 ak receiver              --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_9x18_receiver"

ITEM.Name = "AK 9X18MM Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AK 9X19MM Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_9x18_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part AK BOLT                       --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_bolt"

ITEM.Name = "AK bolt"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 150
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AK bolt"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_bolt"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Gas block AK                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_gas_block"

ITEM.Name = "AK gas block"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "AK gas block"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_gas_block"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part ak mech                       --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_mech"

ITEM.Name = "AK mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 150
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AK mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_mech"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part plastic polymer furniture     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_plastic_furniture"

ITEM.Name = "Plastic AK furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Plastic AK furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_plastic_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part ak rear sight                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_sights"

ITEM.Name = "AK Rear Sights"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 20
ITEM.Small_Parts = 10
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "AK Rear Sights"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_sights"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part skelly stock                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_skeleton_stock"

ITEM.Name = "AK Skeleton Stock"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 35
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AK Skeleton Stock"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_skeleton_stock"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part wood furniture                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak_wood_furniture"

ITEM.Name = "Wooden AK furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Wooden AK furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_wood_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part AK-12 furniture               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ak-12_furniture"

ITEM.Name = "AK-12 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "AK-12 furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak-12_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part AN-94 Internals               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_an-94_internal"

ITEM.Name = "AN-94 mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 150
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AN-94 mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_an-94_internals  "
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 5.56x45 Flash                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar_5.62x45_flash_hider"

ITEM.Name = "5.56X45 Flash hider"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "5.62X45 Flash hider"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar_5.62x45_flash_hider"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part 7.62x51 barrel                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar_7.62x51_barrel"

ITEM.Name = "7.62X51 Barrel"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "A barrel used in a 7.62X51MM"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar_7.62x51_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part AR-15 Furniture               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar-15_furniture"

ITEM.Name = "AR-15 furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "AR-15 furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar-15_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part ar-15 grip                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar-15_grip"

ITEM.Name = "AR-15 Grip"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AR-15 Grip"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar-15_grip"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part ar-15 internals               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar-15_internals"

ITEM.Name = "AR-15 mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 150
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AR-15 mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar-15_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part AR-15 receiver                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar-15_receiver"

ITEM.Name = "AR-15 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AR-15 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar-15_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part AR-15 Stock                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ar-15_stock"

ITEM.Name = "AR-15 Stock"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 35
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AR-15 Stock"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar-15_stock"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part G36 furniture                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_g36c_furniture"

ITEM.Name = "G36C Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "G36C Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g36c_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part g36 receiver                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_g36c_receiver"

ITEM.Name = "G36C Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "G36C Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g36c_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part g36 sights                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_g36c_sights"

ITEM.Name = "G36C Sights"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 20
ITEM.Small_Parts = 10
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "G36C Sights"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g36c_sights"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part G3 furniture                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_g3a3_furniture"

ITEM.Name = "G3A3 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 300
ITEM.Small_Parts = 25
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "G3A3 furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g3a3_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part G3 Mech                       --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_g3a3_mechanism"

ITEM.Name = "G3A3 Mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "G3A3 Mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g3a3_mechanism"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part g3 receiver                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_g3a3_reciever"

ITEM.Name = "G3A3 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 350
ITEM.Small_Parts = 150
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "G3A3 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g3a3_reciever"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part GALIL                         --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_galil_accessories"

ITEM.Name = "GALIL accessories"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "GALIL accessories"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_galil_accessories"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Galil furniture               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_galil_furniture"

ITEM.Name = "GALIL Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "GALIL Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_galil_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Galil internals               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_galil_internals"

ITEM.Name = "GALIL mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 150
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "GALIL mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_galil_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part galil reciver                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_galil_receiver"

ITEM.Name = "GALIL Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "GALIL Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_galil_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part glock body                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_glock_body"

ITEM.Name = "GLOCK body"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "GLOCK Body"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_glock_body"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Glock mech                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_glock_mech"

ITEM.Name = "Glock Internals"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 125
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Glock Internals"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_glock_mech"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Glock slide                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_glock_slide"

ITEM.Name = "Glock Slide"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Glock Slide"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_glock_slide"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part KS-23 furniture               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ks23_furniture"

ITEM.Name = "KS-23 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 50
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "KS-23 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ks23_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part KS-23 internals               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ks-23_internals"

ITEM.Name = "KS-23 Internals"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 200
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "KS-23 Internals"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ks-23_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part ks-23 receiver                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ks-23_receiver"

ITEM.Name = "KS-23 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "KS-23 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ks-23_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part m14 internals                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m14_internals"

ITEM.Name = "M14 Mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "M14 Mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m14_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part m14 receiver                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m14_wood_frame_metal_receiver"

ITEM.Name = "M14 Body/Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 650
ITEM.Small_Parts = 500
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "M14 Body/Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m14_wood_frame_metal_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M1911 Barrel                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m1911_barrel"

ITEM.Name = "Barrel 45ACP"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Barrel 45ACP"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m1911_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M1911 Body                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m1911_body"

ITEM.Name = "M1911 Body"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "M1911 Body"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m1911_body"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M1911 Hammer                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m1911_hammer"

ITEM.Name = "M1911 Hammer"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "M1911 Hammer"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m1911_hammer"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M1911 internals               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m1911_internals"

ITEM.Name = "M1911 Internals"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 125
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "M1911 Internals"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m1911_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M1911 Slide                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m1911_slide"

ITEM.Name = "M1911 Slide"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "M1911 Slide"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m1911_slide"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M21 Furniture                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m21_furniture"

ITEM.Name = "M21 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 300
ITEM.Small_Parts = 25
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "M21 furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m21_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part m21 mag                       --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m21_mag"

ITEM.Name = "M21 Magazine"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 150
ITEM.Chemicals = 75
ITEM.Chance = 100
ITEM.Info = "M21 Magazine"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m21_mag"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M24 Stock                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m24_stock"

ITEM.Name = "M24 stock"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "M24 stock"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m24_stock"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M3 furniture                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m3_furniture"

ITEM.Name = "M3 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 50
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "M3 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m3_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part M3 receiver                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_m3_reciver"

ITEM.Name = "M3 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "M3 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m3_reciver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part mp5 furniture                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_mp5_furniture"

ITEM.Name = "MP5 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 25
ITEM.Chemicals = 125
ITEM.Chance = 100
ITEM.Info = "MP5 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_mp5_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part mp5 gas block                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_mp5_gas_block"

ITEM.Name = "MP5 Gas block"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "MP5 Gas block"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_mp5_gas_block"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part MP5 internals                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_mp5_internals"

ITEM.Name = "MP5 mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 225
ITEM.Chemicals = 35
ITEM.Chance = 100
ITEM.Info = "MP5 mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_mp5_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part mp5 receiver                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_mp5_receiver"

ITEM.Name = "MP5 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "MP5 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_mp5_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part mp5 sights                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_mp5_sights"

ITEM.Name = "MP5 sights"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 25
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "MP5 sights"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_mp5_sights"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part P226                          --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_pp226_body"

ITEM.Name = "PP226 Body"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "PP226 Body"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_pp226_body"
ITEM.Model = "models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part P226 Slide                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_pp226_slide"

ITEM.Name = "PP226 Slide"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "PP226 Slide"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_pp226_slide"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part P226 Hammer                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_pp266_hammer"

ITEM.Name = "PP226 Hammer"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "PP226 Hammer"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_pp266_hammer"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Raging bull cylinder          --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_raging_bull_cylinder"

ITEM.Name = "Raging Bull Cylinder"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Raging Bull Cylinder"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_raging_bull_cylinder"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part raging bull hammer            --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_raging_bull_hammer"

ITEM.Name = "Raging bull Hammer"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Raging bull Hammer"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_raging_bull_hammer"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part raging bull internals         --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_raging_bull_internals"

ITEM.Name = "Raging bull Internals"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 125
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Raging bull Internals"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_raging_bull_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part raging bull body              --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_ragingbull_body"

ITEM.Name = "Raging bull body"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Raging bull Body"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ragingbull_body"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part REM 870 Furniture             --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_remington_870_furniture"

ITEM.Name = "Remington 870 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 50
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "Remington 870 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_remington_870_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part REM 870 Internals             --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_remington_870_internals"

ITEM.Name = "Remington 870 Internals"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 200
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Remington 870 Internals"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_remington_870_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part Rem 870 receiver              --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_remington_870_receiver"

ITEM.Name = "Remington 870 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Remington 870 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_remington_870_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part rpk barrel                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_rpk_7.62x39_barrel"

ITEM.Name = "7.62X39 Barrel RPK"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "A barrel used in a RPK"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_rpk_7.62x39_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part rpk wood                      --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_rpk_wood_furniture"

ITEM.Name = "RPK Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "RPK Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_rpk_wood_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part sg550 rec                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_sg_550_reciever"

ITEM.Name = "SG550/552 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "SG550/552 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_sg_550_reciever"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part sg550 furniture               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_sg550_furniture"

ITEM.Name = "SG550 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "SG550 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_sg550_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part SG550 internals               --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_sg550_internals"

ITEM.Name = "SG550/552 mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 150
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "SG550/552 mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_sg550_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part SG-552 Furniture              --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_sg552_furniture"

ITEM.Name = "SG552 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "SG552 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_sg552_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part shotgun mag                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_shotgun_mag"

ITEM.Name = "Shotgun internal magazine"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 150
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Shotgun internal magazine"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_shotgun_mag"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part shotgun pump                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_shotgun_pump"

ITEM.Name = "Shotgun Pump"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 200
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Shotgun Pump"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_shotgun_pump"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part SKS BODY                      --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_sks_body"

ITEM.Name = "SKS Body/Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 650
ITEM.Small_Parts = 500
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "SKS Body/Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_sks_body"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part SKS internals                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_sks_internals"

ITEM.Name = "SKS Mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "SKS Mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_sks_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part TOZ mech                      --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_toz-34_mechanism"

ITEM.Name = "TOZ-34 Internals"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 200
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "TOZ-34 Internals"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_toz-34_mechanism"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part toz rec                       --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_toz-34_reciver"

ITEM.Name = "TOZ-34 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "TOZ-34 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_toz-34_reciver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part toz furniture                --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_toz-34_wooden_furniture"

ITEM.Name = "TOZ-34 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 50
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "TOZ-34 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_toz-34_wooden_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part                              --
-------------------------------------------------------------------

-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part uni barrel                    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_uni_9x19_barrel"

ITEM.Name = "9X19 Barrel"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "9X19 barrel"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_uni_9x19_barrel"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part  sd barrel                   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_uni_9x19_barrel_sd"

ITEM.Name = "9X19 Barrel SD"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "9X19 barrel SD"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_uni_9x19_barrel_sd"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part UZI                           --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_uzi_internals"

ITEM.Name = "UZI mechanism"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 225
ITEM.Chemicals = 35
ITEM.Chance = 100
ITEM.Info = "UZI mechanism"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_uzi_internals"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part UZI REC                       --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_uzi_receiver"

ITEM.Name = "UZI Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 25
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "UZI Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_uzi_receiver"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--			 H.A.Z.G   Weapon Part UZI STCOK                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "part_uzi_stock"

ITEM.Name = "UZI Stock"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 25
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "UZI stock"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_uzi_stock"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)



