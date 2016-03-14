local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_g3"

ITEM.Name = "H&K G3A3  "
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =450 
ITEM.Small_Parts =500 
ITEM.Chemicals = 150
ITEM.Chance =100
ITEM.Info = "The G3 is a 7.62×51mm NATO battle rifle developed in the 1950s"
ITEM.Type = "battle"
ITEM.Remove = true
ITEM.Energy = 1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_g3a3.mdl"
ITEM.Model = "models/weapons/w_snip_g3sg1.mdl"
ITEM.Script = ""
ITEM.Weight =9 
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"


function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_g3a3_reciever"]=1, ["part_g3a3_mechanism"]=1, ["part_g3a3_sights"]=1, ["part_g3a3_furniture"]=1}
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