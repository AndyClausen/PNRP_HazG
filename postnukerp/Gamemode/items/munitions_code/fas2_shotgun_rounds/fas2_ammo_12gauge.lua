local ITEM = {}


ITEM.ID = "fas2_ammo_12gauge"

ITEM.Name = "12 Gauge"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 30
ITEM.Small_Parts = 3
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "12 Gauge shotgun Ammo"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_12gauge"
ITEM.Model = "models/stalker/ammo/12x70.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_Smokelesspowder"]=1, ["intm_shotgunprimer"]=1, ["intm_Munitionspress"]=0, ["intm_ImprovisedMunitionsHandbook"]=0}
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)