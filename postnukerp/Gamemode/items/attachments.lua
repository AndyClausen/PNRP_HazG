//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//		This will include attachments		//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



-------------------------------------------------------------------
--fas2 attachment ACOG x4 Zoom				                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_acog"

ITEM.Name = "ACOG x4 Zoom"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Standard issue ACOG x4 zoom scope,fits right onto a standard Picatinny rail"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_acog"
ITEM.Model = "models/weapons/upgrades/a_4x_02.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_introductiontomodernoptics"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)


-------------------------------------------------------------------
--fas2 attachment ELCAN C79				                         --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_c79"

ITEM.Name = "ELCAN C79"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "The C79 Optical sight is a small arms telescopic sight of 3.4×28 magnification. A tritium illuminated reticle"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_c79"
ITEM.Model = "models/weapons/upgrades/a_4x_02.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	return {["intm_introductiontomodernoptics"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)


-------------------------------------------------------------------
--fas2 attachment CompM4				                         --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_compm4"

ITEM.Name = "CompM4"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 60
ITEM.Chemicals = 90
ITEM.Chance = 100
ITEM.Info = "the Aimpoint CompM4 is a tubed style reflector or reflex sight that uses a red light-emitting diode"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_compm4"
ITEM.Model = "models/weapons/upgrades/a_4x_02.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_introductiontomodernoptics"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--fas2 attachment EOtech 553			                         --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_eotech"

ITEM.Name = "EOtech 553"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "EOTech 553 A65 Holographic Weapon Sights is its holographic reticle patterns that are instantly visible in any light condition"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_eotech"
ITEM.Model = "models/wystan/attachments/doctorrds.mdl"
ITEM.Script = ""
ITEM.Weight = 1


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_introductiontomodernoptics"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--fas2 attachment Fore grip	                                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_foregrip"

ITEM.Name = "Fore-grip"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Makes it easier to handle the recoil of firearms."
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_foregrip"
ITEM.Model = "models/props_docks/dock01_pole01a_128.mdl"
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
--fas2 attachment Bi-Pod                                        --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_harrisbipod"

ITEM.Name = "Bi-Pod"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "This item lets you to mount firearms to walls or other objects."
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_harrisbipod"
ITEM.Model = "models/props_lab/box01a.mdl"
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
--fas2 attachment Leupold Scope                                  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_leupold"

ITEM.Name = "Leupold Scope"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 100
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "Leupold Scope"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_leupold"
ITEM.Model = "models/weapons/upgrades/a_4x_02.mdl"
ITEM.Script = ""
ITEM.Weight = 1


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_introductiontomodernoptics"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--fas2 attachment M21 Conversion magazine                        --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_m2120mag"

ITEM.Name = "M21 Conversion Mag"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Standard M14 magazine"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_m2120mag"
ITEM.Model = "models/stalker_mags/lr300_mag.mdl"
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
--fas2 attachment PSO-1                                          --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_pso1"

ITEM.Name = "PSO-1"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 100
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "Standard issue Warsaw pact Sniper scope."
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_pso1"
ITEM.Model = "models/weapons/upgrades/a_4x_02.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_introductiontomodernoptics"]=0}
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
--fas2 attachment SG550/552 30round magazine                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_sg55x30mag"

ITEM.Name = "SG550-552 5.62X45MM mag"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "SG550-552 5.62X45MM mag"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_sg55x30mag"
ITEM.Model = "models/stalker_mags/sg550_mag.mdl"
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
--fas2 attachment SKS-30round magazine                           --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_sks30mag"

ITEM.Name = "SKS 7.62X39MM mag"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "SKS 7.62X39MM mag"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_sks30mag"
ITEM.Model = "models/stalker_mags/ak74u_mag.mdl"
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
--fas2 attachment Suppressor                                     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_suppressor"

ITEM.Name = "Suppressor"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Suppressor,its in the name"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_suppressor"
ITEM.Model = "models/props_docks/dock01_pole01a_128.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_anarchistcookbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--fas2 attachment tritium-sights                                 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_att_tritiumsights"

ITEM.Name = "tritium sights"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 5
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "It glows......Nooo radiation poisoning! "
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_tritiumsights"
ITEM.Model = "models/props_lab/box01a.mdl"
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
--fas2 attachment END END END END END END END END END END END END--
-------------------------------------------------------------------