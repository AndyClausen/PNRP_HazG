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