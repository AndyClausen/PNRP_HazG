local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_sr25"

ITEM.Name = "SR-25"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 600
ITEM.Small_Parts = 650
ITEM.Chemicals = 350
ITEM.Chance = 100
ITEM.Info = "The SR-25 (Stoner Rifle-25) is a semi-automatic special application sniper rifle, not Shit Sherlock." 
ITEM.Type = "sniper"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_sr25.mdl"
ITEM.Model = "models/weapons/w_snip_sg550.mdl"
ITEM.Script = ""
ITEM.Weight = 10.3
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.56x45MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar-15_receiver"]=1, ["part_ar_7.62x51_barrel"]=1, ["part_ar-15_furniture"]=1, ["part_ar-15_internals"]=1, ["part_ar-15_receiver"]=1, ["part_ar-15_grip"]=1, ["part_ar-15_stock"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
	for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
	end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(11)
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