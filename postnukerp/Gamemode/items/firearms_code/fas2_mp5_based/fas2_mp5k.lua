local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mp5k"

ITEM.Name = "H&K MP5K"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 130
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "A Compact Version of the Famous MP5"
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_mp5k_silenced.mdl"
ITEM.Icon ="models/weapons/w_mp5k_silenced.mdl"
ITEM.Script = ""
ITEM.Weight =3 
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9X19MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_mp5_receiver"]=1, ["part_mp5_internals"]=1, ["part_mp5_furniture"]=1, ["part_mp5_gas_block"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(16)
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