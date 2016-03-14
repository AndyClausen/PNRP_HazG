local ITEM = {}


ITEM.ID = "m9k_ammo_nervegas"

ITEM.Name = "Pre-War Chemical Weapons Crate"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 200
ITEM.Small_Parts = 10
ITEM.Chemicals = 800
ITEM.Chance = 100
ITEM.Info = "A Crate full of Dangerous Pre-War Chemical weapons."
ITEM.Type = "junk"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "m9k_ammo_nervegas"
ITEM.Model = "models/items/ammocrates/cratenervegas.mdl"
ITEM.Icon ="models/items/ammocrates/cratenervegas.mdl"
ITEM.Script = ""
ITEM.Weight = 20

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)


