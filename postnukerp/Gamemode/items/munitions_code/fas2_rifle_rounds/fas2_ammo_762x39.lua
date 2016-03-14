local ITEM = {}


ITEM.ID = "fas2_ammo_762x39"

ITEM.Name = "7.62x39MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts = 4
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "The 7.62×39mm round is a rifle cartridge of Soviet origin that was designed during World War II."
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_762x39"
ITEM.Model = "models/stalker/ammo/762x39.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_Smokelesspowder"]=1, ["intm_largerifleprimers"]=1, ["intm_Munitionspress"]=0, ["intm_ImprovisedMunitionsHandbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)


