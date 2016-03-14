local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_uzi"

ITEM.Name = "UZI"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 				150
ITEM.Small_Parts = 			100
ITEM.Chemicals =			 90
ITEM.Chance = 				100
ITEM.Info = "The UZI is an Israeli open-bolt, blowback-operated submachine gun, Sorta Rusty."
ITEM.Type = "smg"
ITEM.Remove = 					true
ITEM.Energy = 				1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_uzi.mdl"
ITEM.Icon ="models/weapons/w_uzi.mdl"
ITEM.Script = ""
ITEM.Weight = 				7.2
ITEM.ShopHide = 				true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".380 ACP"

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_uzi_receiver"]=1, ["part_uzi_internals"]=1, ["100 25 10"]=1}
end

		function ITEM.Use( ply )
		local WepName = ITEM.ID
		local gotWep = 				false
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
	ent:	SetNWString("WepClass", ITEM.Ent)
	ent:	SetModel(ITEM.Model)
	ent:	SetAngles(Angle(0,0,0))
	ent:	SetPos(pos)
	ent:	Spawn()
	
	return ent
end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)