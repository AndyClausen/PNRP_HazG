local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mp5sd6"

ITEM.Name = "H&K MP5AS6"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =200 
ITEM.Small_Parts = 175
ITEM.Chemicals =125 
ITEM.Chance =100 
ITEM.Info = "MP5AS6 Has a Retractable butt stock,3-round burst trigger group, integrated suppressor,perfect for sneaky stuff."
ITEM.Type = "smg"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_mp5.mdl"
ITEM.Icon ="models/weapons/w_mp5.mdl"
ITEM.Script = ""
ITEM.Weight =5.6
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "9X19MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {[" part_uni_9x19_barrel_sd"]=1, ["part_mp5_furniture"]=1, ["part_mp5_gas_block"]=1, ["part_mp5_sights"]=1, ["part_mp5_internals"]=1, ["part_mp5_receiver"]=1}
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