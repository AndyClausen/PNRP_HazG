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
ITEM.Type = "weapon"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rif_ak47.mdl"
ITEM.Icon ="models/warz/items/lootcrate.mdl"
ITEM.Script = ""
ITEM.Weight = 10.8
ITEM.ShopHide = true

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