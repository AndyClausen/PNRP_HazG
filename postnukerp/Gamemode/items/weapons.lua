//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//		This will include all weapons		//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							  Melee								 //
-------------------------------------------------------------------

/////////////////////////////
//////////  Blunt  //////////
/////////////////////////////

-------------------------------------------------------------------
--				H.A.Z.G   Melee	 Blunt  Brick					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "gidzco_brick"

ITEM.Name = "Brick"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "Am I the only one who thinks bricks are sexy ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "gidzco_brick"
ITEM.Model = "models/props_junk/CinderBlock01a.mdl"
ITEM.Icon = "models/props_junk/CinderBlock01a.mdl"
ITEM.Script = ""
ITEM.Weight = 2
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "gidzco_brick"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt  Skull					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "skullwep"

ITEM.Name = "Human Skull"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A Human Skull, Where did you get one of these you sick fuck ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "skullwep"
ITEM.Model = "models/Gibs/HGIBS.mdl"
ITEM.Icon ="models/Gibs/HGIBS.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "skullwep"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt  Bat						 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_bat"

ITEM.Name = "Bat"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "Bat as in base-ball bat not an actual Bat,Please don't sue me."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_bat"
ITEM.Model = "models/weapons/w_bat.mdl"
ITEM.Icon ="models/weapons/w_bat.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_bat"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
-------------------------------------------------------------------
--				H.A.Z.G   Melee	 Blunt  Keyboard				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_keyboard"

ITEM.Name = "Keyboard"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 5
ITEM.Small_Parts = 10
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "A majestic keyboard, Perfect weapon for the Beta-Uprising"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_keyboard"
ITEM.Model = "models/props/cs_office/computer_keyboard.mdl"
ITEM.Icon = "models/props/cs_office/computer_keyboard.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_keyboard"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt  Brass Knuckles			 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_knuckles"

ITEM.Name = "Brass Knuckles"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 30
ITEM.Small_Parts = 5
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Brass knuckles are pieces of metal shaped to fit around the knuckles to make the fists a more effective weapon"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_knuckles"
ITEM.Model = "models/props_lab/box01a.mdl"
ITEM.Icon ="models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_knuckles"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt Plank With nails			 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_plank"

ITEM.Name = "Plank With nails"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A Plank with nails what else is there to say,its side is a bit moldy."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_plank"
ITEM.Model = "models/props_phx/construct/wood/wood_boardx1.mdl"
ITEM.Icon ="models/props_phx/construct/wood/wood_boardx1.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_plank"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt  Shovel					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_shovel"

ITEM.Name = "Shovel"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts = 2
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Used to bury hookers or kill hookers."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_shovel"
ITEM.Model = "models/weapons/w_shovel.mdl"
ITEM.Icon ="models/weapons/w_shovel.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_shovel"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt  Sledgehammer    		 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_sledgehammer"

ITEM.Name = "Sledgehammer"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 70
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Used to destroy stuff,Whats not to love ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_sledgehammer"
ITEM.Model = "models/weapons/w_sledgehammer.mdl"
ITEM.Icon ="models/weapons/w_sledgehammer.mdl"
ITEM.Script = ""
ITEM.Weight = 7
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_sledgehammer"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 Blunt  Wrench					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_wrench"

ITEM.Name = "Wrench"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 35
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A rusty Wrench."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_wrench"
ITEM.Model = "models/props_c17/tools_wrench01a.mdl"
ITEM.Icon ="models/props_c17/tools_wrench01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_wrench"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
/////////////////////////////
//////////  sharp  //////////
/////////////////////////////
-------------------------------------------------------------------
--				H.A.Z.G   Melee	 sharp  axe						 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_axe"

ITEM.Name = "Axe"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 55
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "This apparatus used to be used to cut wood. Now it has a more interesting use"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_axe"
ITEM.Model = "models/weapons/w_axe.mdl"
ITEM.Icon ="models/weapons/w_axe.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_axe"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 sharp  Pizza Cutter			 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_pizzacutter"

ITEM.Name = "Pizza Cutter"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 5
ITEM.Small_Parts = 10
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "This Incredible device cuts Zombie meat marvellously I declare  "
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "weapon_pizzacutter"
ITEM.Model = "models/props_lab/box01a.mdl"
ITEM.Icon ="models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_pizzacutter"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 sharp  axe						 --
-------------------------------------------------------------------
-- local ITEM = {}
-- local WEAPON = {}


-- ITEM.ID = "weapon_screwdriver"

-- ITEM.Name = "Flat-Head Screwdriver"
-- ITEM.ClassSpawn = "Engineer"
-- ITEM.Scrap = 70
-- ITEM.Small_Parts = 5
-- ITEM.Chemicals = 0
-- ITEM.Chance = 100
-- ITEM.Info = "Inserts Screws"
-- ITEM.Type = "melee"
-- ITEM.Remove = true
-- ITEM.Energy = 20
-- ITEM.Ent = "weapon_screwdriver"
-- ITEM.Model = "models/props_lab/box01a.mdl"
-- ITEM.Icon ="models/props_lab/box01a.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1
-- ITEM.ShopHide = true

-- WEAPON.ID = ITEM.ID
-- WEAPON.AmmoType = ""

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Use( ply )
	-- local WepName = "weapon_screwdriver"
	-- local gotWep = false
	-- for k, v in pairs(ply:GetWeapons()) do
		-- if v:GetClass() == WepName then gotWep = true end
	-- end
	-- if gotWep == false then 
		-- ply:Give(WepName) 
		-- ply:GetWeapon(WepName):SetClip1(0)
		-- return true
	-- else
		-- ply:ChatPrint("Weapon already equipped.")
		-- return false
	-- end
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create("ent_weapon")
	-- --ent:SetNetworkedInt("Ammo", self.Energy)
	-- ent:SetNWString("WepClass", ITEM.Ent)
	-- ent:SetModel(ITEM.Model)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
	
	-- return ent
-- end


-- PNRP.AddItem(ITEM)
-- PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_coltjungle"

ITEM.Name = "Colt jungle commander knife"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 30
ITEM.Small_Parts = 10
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Back in nam"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_coltjungle"
ITEM.Model = "models/weapons/w_jungle_t.mdl"
ITEM.Icon ="models/weapons/w_jungle_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_coltjungle"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_powerframe"

ITEM.Name = "Gerber Power frame knife"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 10
ITEM.Small_Parts = 15
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Edgy as fuck m8"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_powerframe"
ITEM.Model = "models/weapons/w_pwrfm_t.mdl"
ITEM.Icon ="models/weapons/w_pwrfm_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_powerframe"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_tridagger"

ITEM.Name = "Jagdkommando tri-edge"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 25
ITEM.Small_Parts = 5
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Anything can be a didlo if your brave enough"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_tridagger"
ITEM.Model = "models/weapons/w_tridg_t.mdl"
ITEM.Icon ="models/weapons/w_tridg_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_tridagger"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_kitchenknife"

ITEM.Name = "Kitchen knife"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 20
ITEM.Small_Parts = 2
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "UK favourite"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_kitchenknife"
ITEM.Model = "models/weapons/w_kitch_ct.mdl"
ITEM.Icon ="models/weapons/w_kitch_ct.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_kitchenknife"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_kukriknife"

ITEM.Name = "Kukri"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 40
ITEM.Small_Parts = 5
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "KUKRI-SANA, sounds like weeb shit does it not ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_kukriknife"
ITEM.Model = "models/weapons/w_kukr1_t.mdl"
ITEM.Icon ="models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_kukriknife"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_coltjungle"

ITEM.Name = "Colt jungel commander knife"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 30
ITEM.Small_Parts = 5
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Back in nam"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_coltjungle"
ITEM.Model = "models/props_lab/box01a.mdl"
ITEM.Icon ="models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_coltjungle"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_m7bae"

ITEM.Name = "M7 Bayonet"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 40
ITEM.Small_Parts = 5
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "More effective then what it was mounted on."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_m7bae"
ITEM.Model = "models/weapons/w_m7bae_t.mdl"
ITEM.Icon ="models/weapons/w_m7bae_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_m7bae"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_meatcleaver"

ITEM.Name = "Meat Cleaver"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 100
ITEM.Small_Parts = 5
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Were you scavenging in Chinatown ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_meatcleaver"
ITEM.Model = "models/weapons/w_cleaver_t.mdl"
ITEM.Icon ="models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_meatcleaver"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_pipe"

ITEM.Name = "Pipe"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 15
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "If you blow into it maybe a Unicorn will pope out."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_pipe"
ITEM.Model = "models/props_canal/mattpipe.mdl"
ITEM.Icon ="models/props_canal/mattpipe.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_pipe"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_campingozark"

ITEM.Name = "Ozark trail hunting knife"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 35
ITEM.Small_Parts = 20
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "Because who does not hunt with a knife ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_campingozark"
ITEM.Model = "models/weapons/w_ozark_t.mdl"
ITEM.Icon ="models/weapons/w_ozark_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_campingozark"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_pipewrench"

ITEM.Name = "Pipe Wrench"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 40
ITEM.Small_Parts = 20
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Pipes how do they work ?"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_pipewrench"
ITEM.Model = "models/weapons/w_piprw_t.mdl"
ITEM.Icon ="models/weapons/w_piprw_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_pipewrench"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_fasthawk"

ITEM.Name = "SOG Fasthawk"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "It's every Americans duty as a citizen of this country to own a minimum of 5"
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_fasthawk"
ITEM.Model = "models/weapons/w_fasthawk.mdl"
ITEM.Icon ="models/weapons/w_fasthawk.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_fasthawk"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_tomatoknife"

ITEM.Name = "Tomato knife"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 30
ITEM.Small_Parts = 10
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Its used to cut kikes,I mean tomatoes officer."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_tomatoknife"
ITEM.Model = "models/weapons/w_tomato_t.mdl"
ITEM.Icon ="models/weapons/w_tomato_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_tomatoknife"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "ptp_rollingpin"

ITEM.Name = "Rolling pin"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Yow moma sure be scary."
ITEM.Type = "melee"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "ptp_rollingpin"
ITEM.Model = "models/weapons/w_beater_t.mdl"
ITEM.Icon ="models/weapons/w_beater_t.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ""

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "ptp_rollingpin"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
--				H.A.Z.G   Melee	 				 --
-------------------------------------------------------------------
-------------------------------------------------------------------
/////////////////////////////
//////////  other  //////////
/////////////////////////////
-------------------------------------------------------------------
--				T.B.U Other                   					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "wep_flaregun"

ITEM.Name = "Verey Flaregun "
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 0
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "One use, disposable flaregun."
ITEM.Type = "weapon"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "weapon_pnrp_flaregun"
ITEM.Model = "models/weapons/w_pistol.mdl"
ITEM.Icon ="models/weapons/w_pistol.mdl"
ITEM.Script = ""
ITEM.Weight = 2
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "none"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "weapon_pnrp_flaregun"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
		ply:ChatPrint("ALUHAKBAR!")
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
--				T.B.U Other                   					 --
-------------------------------------------------------------------
-- local ITEM = {}
-- local WEAPON = {}


-- ITEM.ID = "fas2_m67"

-- ITEM.Name = "Frag Grenade"
-- ITEM.ClassSpawn = "Science"
-- ITEM.Scrap = 5
-- ITEM.Small_Parts = 2
-- ITEM.Chemicals = 5
-- ITEM.Chance = 100
-- ITEM.Info = "Hand grenades,fun for the whole family"
-- ITEM.Type = "explosives"
-- ITEM.Remove = true
-- ITEM.Energy = 1
-- ITEM.Ent = "weapon_frag"
-- ITEM.Model = "models/weapons/w_grenade.mdl"
-- ITEM.Script = ""
-- ITEM.Weight = 1

-- WEAPON.ID = ITEM.ID
-- WEAPON.AmmoType = "grenade"

-- function ITEM.ToolCheck( p )
	-- return true
-- end

-- function ITEM.Use( ply )
	-- local WepName = "weapon_frag"
	-- local gotWep = false
	-- for k, v in pairs(ply:GetWeapons()) do
		-- if v:GetClass() == WepName then gotWep = true end
	-- end
	-- if gotWep == false then 
		-- ply:Give(WepName) 
		
		-- return true
	-- else
		-- ply:GiveAmmo(1, "grenade")
		-- return true
	-- end
-- end

-- function ITEM.ToolCheck( p )
	-- -- return true
	-- return {["intm_AnarchistCookbook"]=0}
-- end

-- function ITEM.Create( ply, class, pos )
	-- local ent = ents.Create("ent_weapon")
	-- --ent:SetNetworkedInt("Ammo", self.Energy)
	-- ent:SetNWString("WepClass", ITEM.Ent)
	-- ent:SetModel(ITEM.Model)
	-- ent:SetAngles(Angle(0,0,0))
	-- ent:SetPos(pos)
	-- ent:Spawn()
	
	-- return ent
-- end

-- PNRP.AddItem(ITEM)
-- PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--				T.B.U Other                   					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}

ITEM.ID = "wep_turretprog"

ITEM.Name = "L.O.S.T. Turret Programmer"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 40
ITEM.Small_Parts = 200
ITEM.Chemicals = 80
ITEM.Chance = 100
ITEM.Info = "An IFF programmer for turrets."
ITEM.Type = "weapon"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "weapon_turretprog"
ITEM.Model = "models/stalker/item/handhelds/mini_pda.mdl"
ITEM.Icon ="models/stalker/item/handhelds/mini_pda.mdl"
ITEM.Script = ""
ITEM.Weight = 2

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "none"

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_elecboard"]=4}
end

function ITEM.Use( ply )
	local WepName = "weapon_turretprog"
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
///////////////////////////////////////////////////////////////////
/// Projectile based weapons //////////////////////////////////////
////========================///////////////////////////////////////
///////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
///// Assault rifle //////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--Assault rifle AK-12                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ak12"

ITEM.Name = "AK-12"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 450
ITEM.Small_Parts = 350
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "Standard issue assault rifle issued to Moscow pact Units by 2014 replacing the AK-74M"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/rifles/ak12.mdl"
ITEM.Icon ="models/weapons/w_ak107.mdl"
ITEM.Script = ""
ITEM.Weight = 7.4
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.45x39MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_5.45x39mm_barral"]=1, ["part_ak-12_furniture"]=1, ["part_ak_mech"]=1, ["part_ak_5.45x39_receiver"]=1, ["part_ak_bolt"]=1, ["part_ak_gas_block"]=1, ["part_ak_sights"]=1, ["part_an-94_flash_hider"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle AKM                         					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ak47"

ITEM.Name = "AKM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 350
ITEM.Small_Parts =400 
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "The AKM Is a modernized version of the AK-47 Chambered in 7.62x39 "
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_ak47.mdl"
ITEM.Icon ="models/weapons/w_ak47.mdl"
ITEM.Script = ""
ITEM.Weight =6.9 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x39MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
		return true
	else
		ply:ChatPrint("Weapon already equipped.")
		return false
	end
end

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_7.62x39_barrel"]=1, ["part_ak_wood_furniture"]=1, ["part_ak_mech"]=1, ["part_ak_7.62x39_receiver"]=1, ["part_ak_bolt"]=1, ["part_ak_gas_block"]=1, ["part_ak_sights"]=1}
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
--Assault rifle AK-74M                      					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ak74"

ITEM.Name = "AK-74M"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 300
ITEM.Small_Parts = 450
ITEM.Chemicals = 290
ITEM.Chance = 100
ITEM.Info = "The AK-74M is a Re-chambered variant of the AKM with Polymer furniture"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_ak107.mdl"
ITEM.Icon ="models/weapons/w_ak107.mdl"
ITEM.Script = ""
ITEM.Weight = 6.8
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.45x39MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_5.45x39mm_barral"]=1, ["part_ak_plastic_furniture"]=1, ["part_ak_mech"]=1, ["part_ak_5.45x39_receiver"]=1, ["part_ak_gas_block"]=1, ["part_ak_bolt"]=1, ["part_ak_sights"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle AN-94                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_an94"

ITEM.Name 	  = "AN-94"
ITEM.ClassSpawn= "Engineer"
ITEM.Scrap    = 250
ITEM.Small_Parts= 500
ITEM.Chemicals= 450
ITEM.Chance   = 100
ITEM.Info     = "This rare rifle was issued to Moscow-pact special forces because of its impressive firing rate and accuracy"
ITEM.Type 	  = "assault"
ITEM.Remove   = true
ITEM.Energy   = 1
ITEM.Ent  	  = ITEM.ID
ITEM.Icon  	  = "models/weapons/w_rif_abakan.mdl"
ITEM.Model    = "models/weapons/w_stalker_an94.mdl"
ITEM.Script   = ""
ITEM.Weight   = 8.5
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.45x39MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_5.45x39mm_barral"]=1, ["part_ak_plastic_furniture"]=1, ["part_an-94_internals "]=1, ["part_ak_5.45x39_receiver"]=1, ["part_ak_bolt"]=1, ["part_ak_gas_block"]=1, ["part_ak_sights"]=1, ["part_an-94_flash_hider"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle civilian AKM                  					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_civilian_ak47"

ITEM.Name = "Civilian AKM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 300
ITEM.Small_Parts = 400
ITEM.Chemicals = 500
ITEM.Chance = 100
ITEM.Info = "A Civilian variant of the Famous Avtomat Kalashnikova Modernizirovanniy"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_ak47.mdl"
ITEM.Icon ="models/weapons/w_ak47.mdl"
ITEM.Script = ""
ITEM.Weight =8
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x39MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_7.62x39_barrel"]=1, ["part_ak_wood_furniture"]=1, ["part_ak_mech"]=1, ["part_ak_7.62x39_receiver"]=1, ["part_ak_bolt"]=1, ["part_ak_gas_block"]=1, ["part_ak_sights"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle   RK-95                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_rk95"

ITEM.Name = "RK-95"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 							450
ITEM.Small_Parts =						475 
ITEM.Chemicals = 						250
ITEM.Chance = 							100
ITEM.Info = "The RK-95 was issued to NATO infiltrators special forces and spies as it uses 7.62X39MM which is commonly found in Russia "
ITEM.Type = "assault "
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/rifles/rk95.mdl"
ITEM.Icon ="models/weapons/world/rifles/rk95.mdl"
ITEM.Script = ""
ITEM.Weight = 8.2
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x39MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_7.62x39_receiver"]=1, ["part_ak_plastic_furniture"]=1, ["part_ak_mech"]=1, ["part_ak_7.62x39_receiver"]=1, ["part_ak_gas_block"]=1, ["part_ak_bolt"]=1}
end

		function ITEM.ToolCheck( p )
		return true
		end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString("WepClass", ITEM.Ent)
	ent:	SetModel(ITEM.Model)
	ent:	SetAngles(Angle(0,0,0))
	ent:	SetPos(pos)
	ent:	Spawn()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--Assault rifle Civilian SG550                          		 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_civilian_sg550"

ITEM.Name = "Civilian SG550"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 350
ITEM.Small_Parts = 475
ITEM.Chemicals = 450
ITEM.Chance = 100
ITEM.Info = "A Civilian variant of the SG550,Whoever owned kept is preserved very well."
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_sg550.mdl"
ITEM.Icon ="models/weapons/w_sg550.mdl"
ITEM.Script = ""
ITEM.Weight = 9
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_5.62x45mm_barrel"]=1, ["part_sg550_furniture"]=1, ["part_sg550_internals"]=1, ["part_sg_550_reciever"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(21)
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
--Assault rifle FAMAS                        					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_famas"

ITEM.Name = "FAMAS"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "The FAMAS was issued to French units across Ukraine as standard issue rifle across all units"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rif_famas.mdl"
ITEM.Icon ="models/weapons/w_famas.mdl"
ITEM.Script = ""
ITEM.Weight =8 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"


function ITEM.ToolCheck( p )
	-- combine drop only 
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(26)
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
--Assault rifle G36C                         					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_g36c"

ITEM.Name = "G36C "
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =150
ITEM.Small_Parts =450
ITEM.Chemicals = 250
ITEM.Chance =100
ITEM.Info = "H&K G36C Replica This sub-carbine model is a further development of the G36K."
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_hk_g36c.mdl"
ITEM.Icon ="models/weapons/w_hk_g36c.mdl"
ITEM.Script = ""
ITEM.Weight =6.2
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_5.62x45mm_barrel"]=1, ["part_g36c_furniture"]=1, ["part_g3a3_mechanism"]=1, ["part_g3a3_reciever"]=1, ["part_g36c_sights"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle   GALIL                      					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_galil"

ITEM.Name = "IMI Galil Replica"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =350 
ITEM.Small_Parts = 400
ITEM.Chemicals =175 
ITEM.Chance = 100
ITEM.Info = "The Galil is a family of Israeli small arms designed by Yisrael Galil and Yaacov Lior in the late 1960s"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rif_galil.mdl"
ITEM.Icon ="models/weapons/w_rif_galil.mdl"
ITEM.Script = ""
ITEM.Weight = 8.6
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"


function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_5.62x45mm_barrel"]=1, ["part_galil_furniture"]=1, ["part_galil_internals"]=1, ["part_galil_receiver"]=1, ["part_galil_accessories"]=1, ["part_ak_skeleton_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle   HK 293C                       				 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_hk_293c"

ITEM.Name = "HK 293C"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =150
ITEM.Small_Parts =450
ITEM.Chemicals = 250
ITEM.Chance =100
ITEM.Info = "The HK 293C is a truly rare find in todays world."
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_g36c.mdl"
ITEM.Icon ="models/weapons/w_g36c.mdl"
ITEM.Script = ""
ITEM.Weight =6.2
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_5.62x45mm_barrel"]=1, ["part_g36c_furniture"]=1, ["part_g3a3_mechanism"]=1, ["part_g3a3_reciever"]=1, ["part_g36c_sights"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle Kbk wz. 1988 Tantal                   			 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_kbk_wz._ 1988_tantal"

ITEM.Name = "Kbk wz. 1988 Tantal"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 300
ITEM.Small_Parts = 400
ITEM.Chemicals = 500
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_ak107.mdl"
ITEM.Icon ="models/weapons/w_ak107.mdl"
ITEM.Script = ""
ITEM.Weight =8
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle LESCOM                      					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_lesocom"

ITEM.Name = "LESOCOM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 375
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "As close as an civilian can get to owning a M4 Variant legally"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rif_m4a1.mdl"
ITEM.Icon ="models/weapons/w_m4.mdl"
ITEM.Script = ""
ITEM.Weight =6.3 
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar-15_receiver"]=1, ["part_ar_5.62x45mm_barrel"]=1, ["part_ar-15_furniture"]=1, ["part_ar-15_internals"]=1, ["part_ar-15_receiver"]=1, ["part_ar-15_grip"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle M16A2                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m16a2"

ITEM.Name = "M16A2"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 500
ITEM.Small_Parts = 650
ITEM.Chemicals = 400
ITEM.Chance = 100
ITEM.Info = "More Modern variant of the M16"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_dmg_m16ag.mdl"
ITEM.Icon = "models/weapons/w_dmg_m16ag.mdl"
ITEM.Script = ""
ITEM.Weight =6.3 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar-15_receiver"]=1, ["part_ar_5.62x45mm_barrel"]=1, ["part_ar-15_furniture"]=1, ["part_ar-15_internals"]=1, ["part_ar-15_receiver"]=1, ["part_ar-15_grip"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle M4A1                        					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m4a1"

ITEM.Name = "M4A1"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 375
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "The M4A1 carbine is a fully automatic variant of the basic M4 carbine intended for special operations use"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rif_m4a1.mdl"
ITEM.Icon ="models/weapons/w_m4.mdl"
ITEM.Script = ""
ITEM.Weight =6.3 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar-15_receiver"]=1, ["part_ar_5.62x45mm_barrel"]=1, ["part_ar-15_furniture"]=1, ["part_ar-15_internals"]=1, ["part_ar-15_receiver"]=1, ["part_ar-15_grip"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--Assault rifle SG550                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_sg550"

ITEM.Name = "SG-550"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 350
ITEM.Small_Parts = 475
ITEM.Chemicals = 450
ITEM.Chance = 100
ITEM.Info = "The SG 550 is an assault rifle manufactured by Swiss Arms and is also known as the Fass 90"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_sg550.mdl"
ITEM.Icon ="models/weapons/w_sg550.mdl"
ITEM.Script = ""
ITEM.Weight = 9
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_5.62x45mm_barrel"]=1, ["part_sg550_furniture"]=1, ["part_sg550_internals"]=1, ["part_sg_550_reciever"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(21)
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
--Assault rifle SG552                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_sg552"

ITEM.Name = "SG552"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 350
ITEM.Small_Parts = 475
ITEM.Chemicals = 450
ITEM.Chance = 100
ITEM.Info = "The SG552 was occasionally issued to NATO tank Crews and mechanized infantry because of its small size"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_sg552.mdl"
ITEM.Icon ="models/weapons/w_sg552.mdl"
ITEM.Script = ""
ITEM.Weight = 9
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_5.62x45mm_barrel"]=1, ["part_sg552_furniture"]=1, ["part_sg550_internals"]=1, ["part_sg_550_reciever"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(21)
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
//////////////////////////////////////////////////////////////////
///// BATTAL rifle //////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--BATTAL rifle G3                          					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_g3"

ITEM.Name = "H&K G3A3  "
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =450 
ITEM.Small_Parts =500 
ITEM.Chemicals = 150
ITEM.Chance =100
ITEM.Info = "The G3 is a 7.62×51mm NATO battle rifle developed in the 1950s"
ITEM.Type = "battle"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_hk_g3.mdl"
ITEM.Model = "models/weapons/w_hk_g3.mdl"
ITEM.Script = ""
ITEM.Weight =9 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"


function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_g3a3_reciever"]=1, ["part_g3a3_mechanism"]=1, ["part_g3a3_sights"]=1, ["part_g3a3_furniture"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
--BATTAL rifle M14                         					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m14"

ITEM.Name = "M14"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			400 
ITEM.Small_Parts = 		375
ITEM.Chemicals = 		100
ITEM.Chance = 			100
ITEM.Info = "M14 rifle, officially the United States Rifle, 7.62 mm, M14 is an American selective fire automatic rifle"
ITEM.Type = "battle"
ITEM.Remove = 							true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_m14.mdl"
ITEM.Icon ="models/weapons/w_m14.mdl"
ITEM.Script = ""
ITEM.Weight =		    9.2
ITEM.ShopHide = 						true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_7.62x51_barrel"]=1, ["part_m14_wood_frame_metal_receiver"]=1, ["part_m14_internals"]=1, ["part_m14_parts"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(21)
		return true
	else
		ply:ChatPrint("Weapon already equipped.")
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString			("WepClass", ITEM.Ent)
	ent:	SetModel			(ITEM.Model)
	ent:	SetAngles			(Angle(0,0,0))
	ent:	SetPos				(pos)
	ent:	Spawn				()
	
	return ent
end

			PNRP.AddItem(ITEM)
			PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--battle rifle SKS                       					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_sks"

ITEM.Name = "SKS"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =350 
ITEM.Small_Parts = 225
ITEM.Chemicals = 185
ITEM.Chance = 100
ITEM.Info = "The SKS is a Soviet semi-automatic carbine chambered for the 7.62×39mm round, designed in 1943"
ITEM.Type = "battle"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/rifles/sks.mdl"
ITEM.Icon ="models/weapons/world/rifles/sks.mdl"
ITEM.Script = ""
ITEM.Weight = 8.1
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x39MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_mech"]=1, ["part_ak_7.62x39_barrel"]=1, ["part_ak_sights"]=1, ["part_sks_body"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(10)
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
--BATTLE rifle G3A1                          					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_g3a1"

ITEM.Name = "G3A1"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =350 
ITEM.Small_Parts = 225
ITEM.Chemicals = 185
ITEM.Chance = 100
ITEM.Info = "G3A1"
ITEM.Type = "battle"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_snip_g3sg1.mdl"
ITEM.Icon ="models/weapons/w_snip_g3sg1.mdl"
ITEM.Script = ""
ITEM.Weight = 8.1
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x39MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_mech"]=1, ["part_ak_7.62x39_barrel"]=1, ["part_ak_sights"]=1, ["part_sks_body"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(10)
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
------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
///// Handguns ///////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--Hand guns Deagle                            					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_deagle"

ITEM.Name = "IMI deagle"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			235
ITEM.Small_Parts = 		175
ITEM.Chemicals = 		80 
ITEM.Chance =			100
ITEM.Info = "Desert Eagle is a large-framed gas-operated semi-automatic pistol designed by IMI"
ITEM.Type = "pistol"
ITEM.Remove = 			true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_pist_deagle.mdl"
ITEM.Icon ="models/weapons/w_deserteagle.mdl"
ITEM.Script = ""
ITEM.Weight =			 4
ITEM.ShopHide = 		true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".50 AE"

function ITEM.ToolCheck( p )
	-- Combine drop only
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(8)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--Hand guns Glock                           					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_glock20"

ITEM.Name = "Glock 21"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 80
ITEM.Small_Parts = 130
ITEM.Chemicals = 90
ITEM.Chance = 100
ITEM.Info = "The Glock pistol is a series of polymer-framed, short recoil operated, locked breech semi-automatic pistols "
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_dmg_glock.mdl"
ITEM.Icon ="models/weapons/w_dmg_glock.mdl"
ITEM.Script = ""
ITEM.Weight =1 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".45 ACP"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- -- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
return {["part_glock_mech"]=1, ["part_glock_body"]=1, ["part_glock_slide"]=1, [""]=1}
 end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(16)
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
--Hand guns M1911                           					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m1911"

ITEM.Name = "M1911"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			150 
ITEM.Small_Parts =		80 
ITEM.Chemicals = 		60
ITEM.Chance = 			100
ITEM.Info = "Murica! Nothing be sweeter than this .45ACP pistol. 9MM is for eurofag pussies :D:D:D:D"
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/s_dmgf_co1911.mdl"
ITEM.Icon ="models/weapons/s_dmgf_co1911.mdl"
ITEM.Script = ""
ITEM.Weight =			 1
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".45 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_m1911_barrel"]=1, ["part_m1911_slide"]=1, ["part_m1911_body"]=1, ["part_m1911_internals"]=1, ["part_m1911_hammer"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(8)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--Machine pistol                     					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mac11"

ITEM.Name = "MAC-10"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 				65
ITEM.Small_Parts = 			120
ITEM.Chemicals =			60 
ITEM.Chance = 				100
ITEM.Info = "The MAC-10 is a compact, blowback operated machine pistol"
ITEM.Type = "pistol"
ITEM.Remove = 				true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_mac11.mdl"
ITEM.Model = "models/weapons/w_mac10.mdl"
ITEM.Script = ""
ITEM.Weight = 				6.3
ITEM.ShopHide = 			true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".380 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_380_barrel"]=1, ["part_uzi_internals"]=1, ["part_uzi_receiver"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
			if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(33)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString		("WepClass", ITEM.Ent)
	ent:	SetModel		(ITEM.Model)
	ent:	SetAngles(Angle	(0,0,0))
	ent:	SetPos			(pos)
	ent:	Spawn			()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--Hand guns OTS-33                          					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ots33"

ITEM.Name = "OTS-33"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			45
ITEM.Small_Parts = 		150
ITEM.Chemicals = 		100
ITEM.Chance = 			100
ITEM.Info = "The OTs-33 Pernach ( Russian for 'multivaned mace, pernach') is a Russian 9x18 Makarov machine pistol"
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/pistols/ots33.mdl"
ITEM.Icon ="models/weapons/world/pistols/ots33.mdl"
ITEM.Script = ""
ITEM.Weight = 			1
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9x18"

function ITEM.ToolCheck( p )
	-- COMBINE DROP ONLY COMBINE DROP ONLY COMBINE DROP ONLY COMBINE DROP ONLY 
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(19)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create	( ply, class, pos )
		local ent = ents.Create	("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString			("WepClass", ITEM.Ent)
	ent:	SetModel			(ITEM.Model)
	ent:	SetAngles			(Angle(0,0,0))
	ent:	SetPos				(pos)
	ent:	Spawn				()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--Hand guns P226                            					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_p226"

ITEM.Name = "PP226"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 				80
ITEM.Small_Parts = 			130
ITEM.Chemicals = 			130
ITEM.Chance = 				100
ITEM.Info = "The SIG P226 is a full-sized, service-type pistol made by SIG Sauer. It is chambered for the 9×19m"
ITEM.Type = "pistol"
ITEM.Remove = 												true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_pist_p228.mdl"
ITEM.Icon ="models/weapons/w_pist_p228.mdl"
ITEM.Script = ""
ITEM.Weight =				1 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".380 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_uni_9x19_barrel "]=1, ["part_pp226_slide"]=1, ["part_pp226_body"]=1, ["part_glock_mech"]=1, ["part_pp266_hammer"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = 											false
	for k, v in pairs(ply:GetWeapons()) 					do
		if v:GetClass() == WepName then gotWep = true end
															end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(14)
		return true
															else
		ply:ChatPrint("Weapon already equipped.")
													return false
															end
															end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:		SetNWString	("WepClass", ITEM.Ent)
	ent:		SetModel	(ITEM.Model)
	ent:		SetAngles	(Angle(0,0,0))
	ent:		SetPos		(pos)
	ent:		Spawn		()
	
							return ent
															end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
--Hand guns Raging bull                      					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ragingbull"

ITEM.Name = "Raging bull"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			200
ITEM.Small_Parts = 		160
ITEM.Chemicals =		120 
ITEM.Chance =		    100
ITEM.Info = "A High quality Revolver Remake based on some other Weapon"
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Icon = "models/weapons/w_taurus.mdl"
ITEM.Model = "models/weapons/w_taurus.mdl"
ITEM.Script = ""
ITEM.Weight =			 5
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".44 Magnum"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_raging_bull_internals"]=1, ["part_ragingbull_body"]=1, ["part_raging_bull_cylinder"]=1, ["part_raging_bull_hammer"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(5)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
///// Sub machine gun ////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
-- Sub machine gun PP-19                    					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_pp19"

ITEM.Name = "PP-19"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =				150 
ITEM.Small_Parts = 			200
ITEM.Chemicals = 			125
ITEM.Chance = 				100
ITEM.Info = "The Bizon ('Bison') is a 9X18MM Submachine-gun developed in the early 1990s at Izhmash "
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_smg_biz.mdl"
ITEM.Icon ="models/weapons/w_smg_biz.mdl"
ITEM.Script = ""
ITEM.Weight = 				4.6
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9x18"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_9x18_barre"]=1, ["part_ak_skeleton_stock"]=1, ["part_ak_gas_block"]=1, ["part_ak_bolt"]=1, ["part_ak_9x18_receiver"]=1, ["part_ak_mech"]=1, ["part_ak_plastic_furniture"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(65)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
-- Sub machine gun MP5A5                    					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mp5a5"

ITEM.Name = "H&K MP5A5"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =150 
ITEM.Small_Parts =200 
ITEM.Chemicals = 75
ITEM.Chance =100 
ITEM.Info = "The Heckler & Koch MP5 (from German: Maschinenpistole machine pistol model 5 is a 9mm submachine gun"
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_hk_mp5.mdl"
ITEM.Icon ="models/weapons/w_hk_mp5.mdl"
ITEM.Script = ""
ITEM.Weight =5
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9X19MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_uni_9x19_barrel  "]=1, ["part_mp5_furniture"]=1, ["part_mp5_gas_block"]=1, ["part_mp5_sights"]=1, ["part_mp5_internals"]=1, ["part_mp5_receiver"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
-- Sub machine gun MP5K                     					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mp5k"

ITEM.Name = "H&K MP5K"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 130
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "A Compact Version of the Famous MP5"
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_smg_mp5.mdl"
ITEM.Icon ="models/weapons/w_smg_mp5.mdl"
ITEM.Script = ""
ITEM.Weight =3 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9X19MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_mp5_receiver"]=1, ["part_mp5_internals"]=1, ["part_mp5_furniture"]=1, ["part_mp5_gas_block"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(16)
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
-- Sub machine gun MP5SD6                   					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mp5sd6"

ITEM.Name = "H&K MP5AS6"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =200 
ITEM.Small_Parts = 175
ITEM.Chemicals =125 
ITEM.Chance =100 
ITEM.Info = "MP5AS6 Has a Retractable butt stock,3-round burst trigger group, integrated suppressor,perfect for sneaky stuff."
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_hk_mp5sd.mdl"
ITEM.Icon ="models/weapons/w_hk_mp5sd.mdl"
ITEM.Script = ""
ITEM.Weight =5.6
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9X19MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {[" part_uni_9x19_barrel_sd"]=1, ["part_mp5_furniture"]=1, ["part_mp5_gas_block"]=1, ["part_mp5_sights"]=1, ["part_mp5_internals"]=1, ["part_mp5_receiver"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(31)
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
-- Sub machine gun UZI                      					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_uzi"

ITEM.Name = "UZI"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 				150
ITEM.Small_Parts = 			100
ITEM.Chemicals =			 90
ITEM.Chance = 				100
ITEM.Info = "The UZI is an Israeli open-bolt, blowback-operated submachine gun, Sorta Rusty."
ITEM.Type = "smg"
ITEM.Remove = 					true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_uzi_imi.mdl"
ITEM.Icon ="models/weapons/w_uzi_imi.mdl"
ITEM.Script = ""
ITEM.Weight = 				7.2
ITEM.ShopHide = 				true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".380 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_uzi_receiver"]=1, ["part_uzi_internals"]=1, ["100 25 10"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = 				false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(33)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString("WepClass", ITEM.Ent)
	ent:	SetModel(ITEM.Model)
	ent:	SetAngles(Angle(0,0,0))
	ent:	SetPos(pos)
	ent:	Spawn()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
///// Shotgun ////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
-- Shotgun KS-23                            					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ks23"

ITEM.Name = "KS-23"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 450
ITEM.Small_Parts = 500
ITEM.Chemicals = 160
ITEM.Chance = 100
ITEM.Info = "The KS-23 is a Russian shotgun but officially designated by the Russian military as a carbine."
ITEM.Type = "shotgun"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/shotguns/ks23.mdl"
ITEM.Icon ="models/weapons/world/shotguns/ks23.mdl"
ITEM.Script = ""
ITEM.Weight =8.5 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "12 Gauge"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ks23_furniture"]=1, ["part_ks-23_internals"]=1, ["part_shotgun_mag"]=1, ["part_shotgun_pump"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(4)
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
-- Shotgun M3                               					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m3s90"

ITEM.Name = "M3"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			 350
ITEM.Small_Parts =		 250
ITEM.Chemicals =		 175
ITEM.Chance = 			 100
ITEM.Info = "The Benelli M3 (Super 90) is a dual-mode (both pump-action and semi-automatic) shotgun."
ITEM.Type = "shotgun"
ITEM.Remove = true
ITEM.Energy =			  1
ITEM.Ent = ITEM.ID
ITEM.Icon = "models/weapons/w_m3.mdl" --models/weapons/w_benelli_m3.mdl
ITEM.Model = "models/weapons/w_shot_m3super90.mdl" 
ITEM.Script = ""
ITEM.Weight = 			7.3
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "12 Gauge"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_m3_furniture"]=1, ["part_m3_reciver"]=1, ["part_remington_870_internals"]=1, ["part_shotgun_mag"]=1, ["part_shotgun_pump"]=1}
end


		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(8)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
-- Shotgun REM870                           					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_rem870"

ITEM.Name = "Remington 870 "
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			250
ITEM.Small_Parts = 		200
ITEM.Chemicals = 		150
ITEM.Chance = 			100
ITEM.Info = "Remington Model 870 is a pump-action shotgun manufactured by Remington Arms Company,"
ITEM.Type = "shotgun"
ITEM.Remove = true
ITEM.Energy = 			0
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_stalker_winchester.mdl"
ITEM.Icon ="models/weapons/v_m590.mdl"
ITEM.Script = ""
ITEM.Weight =7 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "12 Gauge"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_remington_870_furniture"]=1, ["part_remington_870_receiver"]=1, ["part_remington_870_internals"]=1, ["part_shotgun_mag"]=1, ["part_shotgun_pump"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(8)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

	function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
-- Shotgun TOZ-34                           					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_toz34"

ITEM.Name = "TOZ-34"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 75
ITEM.Chemicals = 75
ITEM.Chance = 100
ITEM.Info = "This TOZ-34 shows a degree of excellence in its craftsmanship."
ITEM.Type = "shotgun"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_sv10.mdl"
ITEM.Model = "models/weapons/w_sv10.mdl"
ITEM.Script = ""
ITEM.Weight = 9
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "12 Gauge"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_toz-34_wooden_furniture"]=1, ["part_toz-34_reciver"]=1, ["part_ks-23_internals"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(2)
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
-- Shotgun TOZ-34                           					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_saiga"

ITEM.Name = "Saiga-12"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 75
ITEM.Chemicals = 75
ITEM.Chance = 100
ITEM.Info = "Adam Lanza's weapon of choice."
ITEM.Type = "shotgun"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_ak54.mdl"
ITEM.Model = "models/weapons/w_ak54.mdl"
ITEM.Script = ""
ITEM.Weight = 9
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "12 Gauge"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {[""]=0, [""]=0, [""]=0}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(10)
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
//////////////////////////////////////////////////////////////////
///// Sniper  ////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
-- Sniper M21                               					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m21"

ITEM.Name = "M21"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			400
ITEM.Small_Parts =		450 
ITEM.Chemicals = 		350
ITEM.Chance = 			100
ITEM.Info = "The M21 Found its way into NATO Units as the US tried to decrease the costs of the war by modernizing surplus M14's"
ITEM.Type = "sniper"
ITEM.Remove = 										true
ITEM.Energy = 			0
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_m14_scope.mdl"
ITEM.Icon ="models/weapons/w_m14_scope.mdl"
ITEM.Script = ""
ITEM.Weight =9.4 
ITEM.ShopHide =									    true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_m21_mag"]=1, ["part_m14_parts"]=1, ["part_m21_furniture"]=1, ["part_m14_internals"]=1, ["part_m14_wood_frame_metal_receiver"]=1}
end

function ITEM.Use( ply )
	local 	WepName = ITEM.ID
	local 	gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(11)
		return true
	else
		ply:ChatPrint("Weapon already equipped.")
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

			PNRP.AddItem(ITEM)
			PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
-- Sniper M24                               					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m24"

ITEM.Name = "M24"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =        675
ITEM.Small_Parts =  350
ITEM.Chemicals =    100
ITEM.Chance =       100
ITEM.Info = "The M24 Sniper Weapon System (SWS) is a Incredibly deadly sniper rifle"
ITEM.Type = "sniper"
ITEM.Remove =       true
ITEM.Energy =       0
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_m24.mdl"
ITEM.Model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.Script = ""
ITEM.Weight =       12
ITEM.ShopHide = 											  true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_7.62x51_barrel"]=1, ["part_m24_stock"]=1, ["part_m24_body"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
			for k, v in pairs(ply:GetWeapons()) do
			if v:GetClass() == WepName then gotWep = true 		end
																end
			if gotWep == false then 
			ply:Give(WepName) 
			ply:GetWeapon(WepName):SetClip1(5)
													return true
														   else
		ply:ChatPrint("Weapon already equipped.")
													return false
																end
																end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
-- Sniper M82                               					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m82"

ITEM.Name = "M82"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			850
ITEM.Small_Parts = 		750
ITEM.Chemicals = 		575
ITEM.Chance = 			100
ITEM.Info = "The M82 was issued across all US units across Ukraine and by there allies because of there lack of Anti-Material rifle"
ITEM.Type = "sniper"
ITEM.Remove =			 true
ITEM.Energy =			 0
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_snip_sg550.mdl"
ITEM.Icon ="models/weapons/w_m82.mdl"
ITEM.Script = ""
ITEM.Weight =			30 
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".50 BMG"

function ITEM.ToolCheck( p )
	-- Combine Drop only,Rarest Combine drop  
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(11)
		return true
	else
		ply:ChatPrint("Weapon already equipped.")
		return false
	end
end
	
		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)
-------------------------------------------------------------------
-- Sniper SR-25                             					 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_sr25"

ITEM.Name = "SR-25"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 600
ITEM.Small_Parts = 650
ITEM.Chemicals = 350
ITEM.Chance = 100
ITEM.Info = "The SR-25 (Stoner Rifle-25) is a semi-automatic special application sniper rifle, not Shit Sherlock." 
ITEM.Type = "sniper"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_sr25.mdl"
ITEM.Model = "models/weapons/b_m16a2.mdl"
ITEM.Script = ""
ITEM.Weight = 10.3
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar-15_receiver"]=1, ["part_ar_7.62x51_barrel"]=1, ["part_ar-15_furniture"]=1, ["part_ar-15_internals"]=1, ["part_ar-15_receiver"]=1, ["part_ar-15_grip"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(11)
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
-- Sniper svd                  				                 	 --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_svd"

ITEM.Name = "SVD"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 600
ITEM.Small_Parts = 650
ITEM.Chemicals = 350
ITEM.Chance = 100
ITEM.Info = "Muh Warsaw pact,such reliability very strong." 
ITEM.Type = "sniper"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_dragunov__.mdl"
ITEM.Model = "models/weapons/w_dragunov__.mdl"
ITEM.Script = ""
ITEM.Weight = 10.3
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "762x54r"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(11)
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
//////////////////////////////////////////////////////////////////
///// Light machine gun //////////////////////////////////////////
//////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--Light machine gun rpk                				             --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_rpk"

ITEM.Name = "RPK"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 650
ITEM.Small_Parts = 375
ITEM.Chemicals = 225
ITEM.Chance = 100
ITEM.Info = "he RPK  is a 7.62x39mm light machine gun of Soviet design,developed by Mikhail Kalashnikov in the late 1950s"
ITEM.Type = "lmg"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rpd.mdl"
ITEM.Icon ="models/weapons/w_rpd.mdl"
ITEM.Script = ""
ITEM.Weight = 10.8
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_rpk_7.62x39_barrel"]=1, ["part_rpk_wood_furniture"]=1, ["part_ak_mech "]=1, ["part_ak_7.62x39_receiver"]=1, ["part_ak_gas_block"]=1, ["part_ak_bolt"]=1}
end

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x39MM"

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(46)
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
--Light machine gun M60 NOT DONE               				     --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m60"

ITEM.Name = "M60"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 650
ITEM.Small_Parts = 375
ITEM.Chemicals = 225
ITEM.Chance = 100
ITEM.Info = " love the smell of napalm in tbe morning."
ITEM.Type = "lmg"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/b_m60e3.mdl"
ITEM.Icon ="models/weapons/b_m60e3.mdl"
ITEM.Script = ""
ITEM.Weight = 10.8
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {[""]=1, [""]=1, [" "]=1, [""]=1, [""]=1, [""]=1}
end

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(46)
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
--Rape swep                              		                --
-------------------------------------------------------------------

-------------------------------------------------------------------
-- Pulse GPMG                          		    --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_pulsemg"

ITEM.Name = "P-GPMG"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 600
ITEM.Small_Parts = 750
ITEM.Chemicals = 400
ITEM.Chance = 100
ITEM.Info = "The Pulse general purpose machine gun is used by all parts of the combine army."
ITEM.Type = "lmg"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "weapon_pulsemg"
ITEM.Model = "models/weapons/w_pulsemg.mdl"
ITEM.Icon ="models/weapons/w_pulsemg.mdl"
ITEM.Script = ""
ITEM.Weight = 7
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "ar2"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["intm_pulsecore"]=1, ["book_modernelectronicsbook"]=0, ["intm_elecboard"]=2, ["intm_powersupply"]=2, ["intm_resistor"]=1}
end

function ITEM.Use( ply )
	local WepName = "weapon_pulsemg"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
-- Pulse Sniper                         		    --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "m9k_combinesniper"

ITEM.Name = "Pulse Sniper"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 1000
ITEM.Small_Parts = 650
ITEM.Chemicals = 700
ITEM.Chance = 100
ITEM.Info = "Only used by specicilized parts of the combine army."
ITEM.Type = "sniper"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "m9k_combinesniper"
ITEM.Model = "models/weapons/w_combinesniper_e2.mdl"
ITEM.Icon ="models/weapons/w_combinesniper_e2.mdl"
ITEM.Script = ""
ITEM.Weight = 7
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "ar2"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["intm_pulsecore"]=1, ["book_modernelectronicsbook"]=0, ["intm_elecboard"]=2, ["intm_powersupply"]=1, ["book_introductiontomodernoptics"]=0, ["intm_resistor"]=1}
end

function ITEM.Use( ply )
	local WepName = "m9k_combinesniper"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
-- Pulse Sniper                         		    --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_racsa_rpk"

ITEM.Name = "RPK-74"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 750
ITEM.Small_Parts = 350
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "The backbone of the Chinese/Russian army,mounted on every tank heli and trench"
ITEM.Type = "lmg"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_racsa_rpk"
ITEM.Model = "models/weapons/w_rpd.mdl"
ITEM.Icon ="models/weapons/w_rpd.mdl"
ITEM.Script = ""
ITEM.Weight = 10.6
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.45x39MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local WepName = "fas2_racsa_rpk"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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
-- Pulse Sniper                         		    --
-------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_racsa_sks"

ITEM.Name = "вариант 2 SKS"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 350 
ITEM.Small_Parts = 225
ITEM.Chemicals = 185
ITEM.Chance = 100
ITEM.Info = "вариант 2 SKS was rechamberd to use the 5.45X39, this weapon served a DMR role."
ITEM.Type = "battle"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/rifles/sks.mdl"
ITEM.Icon ="models/weapons/world/rifles/sks.mdl"
ITEM.Script = ""
ITEM.Weight = 8.1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.45x39MM"

function ITEM.ToolCheck()
	return true
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(10)
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
--------------------------------------------------------------------------------------------------------------------------------
--- Pulse assault --------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_pnrp_pulserifle"

ITEM.Name = "Pulse Assault rifle"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 500
ITEM.Small_Parts = 650
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "Standard assault rifle for combine infantry"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "weapon_pnrp_pulserifle"
ITEM.Model = "models/weapons/w_irifle.mdl"
ITEM.Icon ="models/weapons/w_irifle.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "ar2"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["intm_pulsecore"]=1, ["book_modernelectronicsbook"]=0, ["intm_elecboard"]=2, ["intm_powersupply"]=1, ["book_introductiontomodernoptics"]=0, ["intm_resistor"]=1}
end

function ITEM.Use( ply )
	local WepName = "Pulse assault rifle"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(0)
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