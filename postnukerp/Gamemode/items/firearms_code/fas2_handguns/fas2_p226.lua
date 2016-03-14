local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_p226"

ITEM.Name = "PP226"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 				80
ITEM.Small_Parts = 			130
ITEM.Chemicals = 			130
ITEM.Chance = 				100
ITEM.Info = "The SIG P226 is a full-sized, service-type pistol made by SIG Sauer. It is chambered for the 9×19m"
ITEM.Type = "pistol"
ITEM.Remove = 												true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_stalker_p220.mdl"
ITEM.Icon ="models/weapons/w_stalker_p220.mdl"
ITEM.Script = ""
ITEM.Weight =				1 
ITEM.ShopHide = 											true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".380 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_uni_9x19_barrel "]=1, ["part_pp226_slide"]=1, ["part_pp226_body"]=1, ["part_glock_mech"]=1, ["part_pp266_hammer"]=1}
end

function ITEM.Use( ply )
	local WepName = ITEM.ID
	local gotWep = 											false
	for k, v in pairs(ply:GetWeapons()) 					do
		if v:GetClass() == WepName then gotWep = true end
															end
	if gotWep == false then 
		ply:Give(WepName) 
		ply:GetWeapon(WepName):SetClip1(14)
		return true
															else
		ply:ChatPrint("Weapon already equipped.")
													return false
															end
															end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create("ent_weapon")
	--ent:SetNetworkedInt("Ammo", self.Energy)
	ent:		SetNWString	("WepClass", ITEM.Ent)
	ent:		SetModel	(ITEM.Model)
	ent:		SetAngles	(Angle(0,0,0))
	ent:		SetPos		(pos)
	ent:		Spawn		()
	
							return ent
															end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)