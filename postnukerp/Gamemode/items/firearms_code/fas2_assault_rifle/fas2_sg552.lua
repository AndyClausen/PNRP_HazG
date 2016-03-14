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