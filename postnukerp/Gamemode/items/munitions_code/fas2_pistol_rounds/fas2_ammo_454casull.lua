local ITEM = {}


ITEM.ID = "fas2_ammo_454casull"

ITEM.Name = ".454 Casull"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 30
ITEM.Small_Parts = 3
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Not in game=Hax"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_454casull"
ITEM.Model = "models/stalker/ammo/magnum.mdl"
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

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)


