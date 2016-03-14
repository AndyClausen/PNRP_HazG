local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_famas"

ITEM.Name = "FAMAS"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 250
ITEM.Chance = 100
ITEM.Info = "The FAMAS was issued to French units across Ukraine as standard issue rifle across all units"
ITEM.Type = "assault"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_rif_famas.mdl"
ITEM.Icon ="models/weapons/w_famas.mdl"
ITEM.Script = ""
ITEM.Weight =8 
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"


function ITEM.ToolCheck( p )
	-- combine drop only 
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
		ply:GetWeapon(WepName):SetClip1(26)
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