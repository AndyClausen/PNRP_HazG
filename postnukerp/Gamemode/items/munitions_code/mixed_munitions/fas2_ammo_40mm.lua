local ITEM = {}


ITEM.ID = "fas2_ammo_40mm"

ITEM.Name = "40MM HE"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts = 5
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "40MM High explosive grenades"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_40mm"
ITEM.Model = "models/weapons/w_40mm_grenade_launched.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_Smokelesspowder"]=4, ["intm_shotgunprimer"]=2, ["intm_Munitionspress"]=0, ["intm_AnarchistCookbook"]=0}
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


