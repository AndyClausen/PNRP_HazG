local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m24"

ITEM.Name = "M24"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =        675
ITEM.Small_Parts =  350
ITEM.Chemicals =    100
ITEM.Chance =       100
ITEM.Info = "The M24 Sniper Weapon System (SWS) is a Incredibly deadly sniper rifle"
ITEM.Type = "sniper"
ITEM.Remove =       true
ITEM.Energy =       1
ITEM.Ent = ITEM.ID
ITEM.Icon ="models/weapons/w_m24.mdl"
ITEM.Model = "models/weapons/w_m40.mdl"
ITEM.Script = ""
ITEM.Weight =       12
ITEM.ShopHide = 											  true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "7.62x51MM"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ar_7.62x51_barrel"]=1, ["part_m24_stock"]=1, ["part_m24_body"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = false
			for k, v in pairs(ply:GetWeapons()) do
			if v:GetClass() == WepName then gotWep = true 		end
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