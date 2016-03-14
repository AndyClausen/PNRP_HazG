local ITEM = {}


ITEM.ID = "fas2_att_harrisbipod"

ITEM.Name = "Bi-Pod"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "This item lets you to mount firearms to walls or other objects."
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_harrisbipod"
ITEM.Model = "models/props_lab/box01a.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)