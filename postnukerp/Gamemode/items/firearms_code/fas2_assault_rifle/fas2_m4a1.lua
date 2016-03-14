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