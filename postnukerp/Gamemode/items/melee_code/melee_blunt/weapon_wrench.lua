local ITEM = {}
local WEAPON = {}


ITEM.ID = "weapon_wrench"

ITEM.Name = "Wrench"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 70
ITEM.Small_Parts = 5
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
ITEM.Weight = 5

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