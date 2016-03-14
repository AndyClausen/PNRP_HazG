local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_pp19"

ITEM.Name = "PP-19"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =				150 
ITEM.Small_Parts = 			200
ITEM.Chemicals = 			125
ITEM.Chance = 				100
ITEM.Info = "The Bizon ('Bison') is a 9X18MM Submachine-gun developed in the early 1990s at Izhmash "
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_smg_biz.mdl"
ITEM.Icon ="models/weapons/w_smg_biz.mdl"
ITEM.Script = ""
ITEM.Weight = 				4.6
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9x18"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_9x18_barre"]=1, ["part_ak_skeleton_stock"]=1, ["part_ak_gas_block"]=1, ["part_ak_bolt"]=1, ["part_ak_9x18_receiver"]=1, ["part_ak_mech"]=1, ["part_ak_plastic_furniture"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(65)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create( ply, class, pos )
		local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)