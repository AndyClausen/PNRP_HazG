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