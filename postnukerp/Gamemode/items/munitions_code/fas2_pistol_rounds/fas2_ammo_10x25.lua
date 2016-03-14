local ITEM = {}


ITEM.ID = "fas2_ammo_10x25"

ITEM.Name = "10x25MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 25
ITEM.Small_Parts = 1
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "Not in game=HAX"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_10x25"
ITEM.Model = "models/stalker/ammo/9x39.mdl"
ITEM.Script = ""
ITEM.Weight = 2

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


