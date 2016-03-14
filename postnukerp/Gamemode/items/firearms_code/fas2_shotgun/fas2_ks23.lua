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