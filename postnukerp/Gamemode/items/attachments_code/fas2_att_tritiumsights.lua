local ITEM = {}


ITEM.ID = "fas2_att_tritiumsights"

ITEM.Name = "tritium sights"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 5
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "It glows......Nooo radiation poisoning! "
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_tritiumsights"
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