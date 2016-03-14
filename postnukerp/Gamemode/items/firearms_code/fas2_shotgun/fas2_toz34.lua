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
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_sv10.mdl"
ITEM.Model = "models/weapons/w_sv10.mdl"
ITEM.Script = ""
ITEM.Weight = 9
ITEM.ShopHide = true

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