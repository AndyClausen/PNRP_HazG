local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m3s90"

ITEM.Name = "M3"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			 350
ITEM.Small_Parts =		 250
ITEM.Chemicals =		 175
ITEM.Chance = 			 100
ITEM.Info = "The Benelli M3 (Super 90) is a dual-mode (both pump-action and semi-automatic) shotgun."
ITEM.Type = "shotgun"
ITEM.Remove = true
ITEM.Energy =			  1
ITEM.Ent = ITEM.ID
ITEM.Icon = "models/weapons/w_m3.mdl" --models/weapons/w_benelli_m3.mdl
ITEM.Model = "models/weapons/w_shot_m3super90.mdl" 
ITEM.Script = ""
ITEM.Weight = 			7.3
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "12 Gauge"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_m3_furniture"]=1, ["part_m3_reciver"]=1, ["part_remington_870_internals"]=1, ["part_shotgun_mag"]=1, ["part_shotgun_pump"]=1}
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