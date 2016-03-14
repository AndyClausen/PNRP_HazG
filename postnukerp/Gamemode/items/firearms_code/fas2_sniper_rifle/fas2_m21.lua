local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m21"

ITEM.Name = "M21"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			400
ITEM.Small_Parts =		450 
ITEM.Chemicals = 		350
ITEM.Chance = 			100
ITEM.Info = "The M21 Found its way into NATO Units as the US tried to decrease the costs of the war by modernizing surplus M14's"
ITEM.Type = "battle"
ITEM.Remove = 										true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_m14_scope.mdl"
ITEM.Icon ="models/weapons/w_m14_scope.mdl"
ITEM.Script = ""
ITEM.Weight =9.4 
ITEM.ShopHide =									    true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_m21_mag"]=1, ["part_m14_parts"]=1, ["part_m21_furniture"]=1, ["part_m14_internals"]=1, ["part_m14_wood_frame_metal_receiver"]=1}
end

function ITEM.Use( ply )
	local 	WepName = ITEM.ID
	local 	gotWep = false
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
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
	return ent
end

			PNRP.AddItem(ITEM)
			PNRP.AddWeapon(WEAPON)