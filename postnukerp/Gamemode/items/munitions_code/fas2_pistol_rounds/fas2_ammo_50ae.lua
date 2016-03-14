local ITEM = {}


ITEM.ID = "fas2_ammo_50ae"

ITEM.Name = ".50 AE"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts =4
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "Who the fuck even came up with such a stupid pistole round ?"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_50ae remove"
ITEM.Model = "models/stalker/ammo/magnum.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	
	return {["intm_Smokelesspowder"]=1, ["intm_Pistolprimers"]=1, ["intm_Munitionspress"]=0, ["intm_ImprovisedMunitionsHandbook"]=0}
end


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)


