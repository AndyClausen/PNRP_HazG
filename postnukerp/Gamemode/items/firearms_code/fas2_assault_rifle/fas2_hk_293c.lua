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