local ITEM = {}
local WEAPON = {}


ITEM.ID = "fas2_an94"

ITEM.Name 	  = "AN-94"
ITEM.ClassSpawn= "Engineer"
ITEM.Scrap    = 250
ITEM.Small_Parts= 500
ITEM.Chemicals= 450
ITEM.Chance   = 100
ITEM.Info     = "This rare rifle was issued to Moscow-pact special forces because of its impressive firing rate and accuracy"
ITEM.Type 	  = "assault"
ITEM.Remove   = true
ITEM.Energy   = 1
ITEM.Ent  	  = ITEM.ID
ITEM.Icon  	  = "models/weapons/w_rif_abakan.mdl"
ITEM.Model    = "models/weapons/w_stalker_an94.mdl"
ITEM.Script   = ""
ITEM.Weight   = 8.5
ITEM.ShopHide = true

WEAPON.ID = ITEM.ID
WEAPON.AmmoType = "5.45x39MM"

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- Items Required to construct a firearm. Each Gun should have a few of its own specific parts.  
	return {["part_ak_5.45x39mm_barral"]=1, ["part_ak_plastic_furniture"]=1, ["part_an-94_internals "]=1, ["part_ak_5.45x39_receiver"]=1, ["part_ak_bolt"]=1, ["part_ak_gas_block"]=1, ["part_ak_sights"]=1, ["part_an-94_flash_hider"]=1}
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