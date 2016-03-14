local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m79"

ITEM.Name = "M76"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =				1200
ITEM.Small_Parts = 			1000
ITEM.Chemicals = 			800
ITEM.Chance = 				100
ITEM.Info = "A tube with an 40MM HE grenade"
ITEM.Type = "explosives"
ITEM.Remove = true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_m79_grenadelauncher.mdl"
ITEM.Icon ="models/weapons/w_m79.mdl"
ITEM.Script = ""
ITEM.Weight = 				12
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "40MM HE"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {[""]=1, [""]=1, [""]=1, [""]=1}
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
		ply:GetWeapon(WepName):SetClip1(1)
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