local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m1911"

ITEM.Name = "M1911"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			150 
ITEM.Small_Parts =		80 
ITEM.Chemicals = 		60
ITEM.Chance = 			100
ITEM.Info = "Murica! Nothing be sweeter than this .45ACP pistol. 9MM is for eurofag pussies :D:D:D:D"
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_stalker_m1911.mdl"
ITEM.Icon ="models/weapons/w_stalker_pb.mdl"
ITEM.Script = ""
ITEM.Weight =			 1
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".45 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_m1911_barrel"]=1, ["part_m1911_slide"]=1, ["part_m1911_body"]=1, ["part_m1911_internals"]=1, ["part_m1911_hammer"]=1}
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