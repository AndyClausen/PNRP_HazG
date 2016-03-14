local ITEM = {}
local WEAPON = {}

ITEM.ID = "wep_turretprog"

ITEM.Name = "L.O.S.T. Turret Programmer"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 40
ITEM.Small_Parts = 200
ITEM.Chemicals = 80
ITEM.Chance = 100
ITEM.Info = "An IFF programmer for turrets."
ITEM.Type = "weapon"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "weapon_turretprog"
ITEM.Model = "models/stalker/item/handhelds/mini_pda.mdl"
ITEM.Icon ="models/stalker/item/handhelds/mini_pda.mdl"
ITEM.Script = ""
ITEM.Weight = 2

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "none"

function ITEM.ToolCheck( p )
	-- This one returns required items.
	return {["intm_elecboard"]=4}
end

function ITEM.Use( ply )
	local WepName = "weapon_turretprog"
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		-- ply:GetWeapon(WepName):SetClip1(0)
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