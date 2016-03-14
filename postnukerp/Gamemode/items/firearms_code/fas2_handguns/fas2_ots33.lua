local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ots33"

ITEM.Name = "OTS-33"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			45
ITEM.Small_Parts = 		150
ITEM.Chemicals = 		100
ITEM.Chance = 			100
ITEM.Info = "The OTs-33 Pernach ( Russian for 'multivaned mace, pernach') is a Russian 9x18 Makarov machine pistol"
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/world/pistols/ots33.mdl"
ITEM.Icon ="models/weapons/world/pistols/ots33.mdl"
ITEM.Script = ""
ITEM.Weight = 			1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9x18"

function ITEM.ToolCheck( p )
	-- COMBINE DROP ONLY COMBINE DROP ONLY COMBINE DROP ONLY COMBINE DROP ONLY 
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
		ply:GetWeapon(WepName):SetClip1(19)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

		function ITEM.Create	( ply, class, pos )
		local ent = ents.Create	("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString			("WepClass", ITEM.Ent)
	ent:	SetModel			(ITEM.Model)
	ent:	SetAngles			(Angle(0,0,0))
	ent:	SetPos				(pos)
	ent:	Spawn				()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)