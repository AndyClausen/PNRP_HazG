local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_m82"

ITEM.Name = "M82"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap =			850
ITEM.Small_Parts = 		750
ITEM.Chemicals = 		575
ITEM.Chance = 			100
ITEM.Info = "The M82 was issued across all US units across Ukraine and by there allies because of there lack of Anti-Material rifle"
ITEM.Type = "sniper"
ITEM.Remove =			 true
ITEM.Energy =			 1
ITEM.Ent = ITEM.ID
ITEM.Model = "models/weapons/w_snip_sg550.mdl"
ITEM.Icon ="models/weapons/w_m82.mdl"
ITEM.Script = ""
ITEM.Weight =			30 
ITEM.ShopHide = 		 true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = ".50 BMG"

function ITEM.ToolCheck( p )
	-- Combine Drop only,Rarest Combine drop  
	return {[""]=1, [""]=1, [""]=1, [""]=1}
end

		function ITEM.ToolCheck( p )
		return true
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
	ent:	SetNWString	("WepClass", ITEM.Ent)
	ent:	SetModel	(ITEM.Model)
	ent:	SetAngles	(Angle(0,0,0))
	ent:	SetPos		(pos)
	ent:	Spawn		()
	
		return ent
		end

PNRP.AddItem(ITEM)
PNRP.AddWeapon(WEAPON)