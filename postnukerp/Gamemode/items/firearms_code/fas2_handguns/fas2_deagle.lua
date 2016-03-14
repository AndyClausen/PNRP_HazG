local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_deagle"

ITEM.Name = "IMI deagle"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			235
ITEM.Small_Parts = 		175
ITEM.Chemicals = 		80 
ITEM.Chance =			100
ITEM.Info = "Desert Eagle is a large-framed gas-operated semi-automatic pistol designed by IMI"
ITEM.Type = "pistol"
ITEM.Remove = 			true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_pist_deagle.mdl"
ITEM.Icon ="models/weapons/w_deserteagle.mdl"
ITEM.Script = ""
ITEM.Weight =			 4
ITEM.ShopHide = 		true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".50 AE"

function ITEM.ToolCheck( p )
	-- Combine drop only
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(8)
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