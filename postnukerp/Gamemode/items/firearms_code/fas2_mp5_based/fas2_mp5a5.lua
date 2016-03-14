local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mp5a5"

ITEM.Name = "H&K MP5A5"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =150 
ITEM.Small_Parts =200 
ITEM.Chemicals = 75
ITEM.Chance =100 
ITEM.Info = "The Heckler & Koch MP5 (from German: Maschinenpistole machine pistol model 5 is a 9mm submachine gun"
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_stalker_mp5_new.mdl"
ITEM.Icon ="models/weapons/w_stalker_mp5_new.mdl"
ITEM.Script = ""
ITEM.Weight =5
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9X19MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_uni_9x19_barrel  "]=1, ["part_mp5_furniture"]=1, ["part_mp5_gas_block"]=1, ["part_mp5_sights"]=1, ["part_mp5_internals"]=1, ["part_mp5_receiver"]=1}
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
	ent:SetNWString("WepClass", ITEM.Ent)
	ent:SetModel(ITEM.Model)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)