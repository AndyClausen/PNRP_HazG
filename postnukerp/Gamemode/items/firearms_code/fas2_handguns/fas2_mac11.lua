local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_mac11"

ITEM.Name = "M11A1"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 				65
ITEM.Small_Parts = 			120
ITEM.Chemicals =			60 
ITEM.Chance = 				100
ITEM.Info = "The MAC-10 is a compact, blowback operated machine pistol"
ITEM.Type = "pistol"
ITEM.Remove = 				true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_mac11.mdl"
ITEM.Model = "models/weapons/w_mac10.mdl"
ITEM.Script = ""
ITEM.Weight = 				6.3
ITEM.ShopHide = 			true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".380 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_380_barrel"]=1, ["part_uzi_internals"]=1, ["part_uzi_receiver"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
			if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(33)
		return true
		else
		ply:ChatPrint("Weapon already equipped.")
		return false
		end
		end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:	SetNWString		("WepClass", ITEM.Ent)
	ent:	SetModel		(ITEM.Model)
	ent:	SetAngles(Angle	(0,0,0))
	ent:	SetPos			(pos)
	ent:	Spawn			()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)