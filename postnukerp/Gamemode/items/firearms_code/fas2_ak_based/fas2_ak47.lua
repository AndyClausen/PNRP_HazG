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
ITEM.Model = "models/weapons/w_akm.mdl"
ITEM.Icon ="models/weapons/w_akm.mdl"
ITEM.Script = ""
ITEM.Weight =6.9 
ITEM.ShopHide = true

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