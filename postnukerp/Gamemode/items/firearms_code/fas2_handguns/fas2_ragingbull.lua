local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_ragingbull"

ITEM.Name = "Raging bull"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 			200
ITEM.Small_Parts = 		160
ITEM.Chemicals =		120 
ITEM.Chance =		    100
ITEM.Info = "A High quality Revolver Remake based on some other Weapon"
ITEM.Type = "pistol"
ITEM.Remove = true
ITEM.Energy = 			1
ITEM.Ent = ITEM.ID
ITEM.Icon = "models/weapons/w_taurus.mdl"
ITEM.Model = "models/weapons/w_taurus.mdl"
ITEM.Script = ""
ITEM.Weight =			 5
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".44 Magnum"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_raging_bull_internals"]=1, ["part_ragingbull_body"]=1, ["part_raging_bull_cylinder"]=1, ["part_raging_bull_hammer"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = false
		for k, v in pairs(ply:GetWeapons()) do
		if v:GetClass() == WepName then gotWep = true end
		end
		if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(5)
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