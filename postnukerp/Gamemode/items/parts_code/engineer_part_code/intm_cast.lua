local ITEM = {}


ITEM.ID = "intm_cast"

ITEM.Name = "Cast"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 300
ITEM.Small_Parts =25
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = "A cast for a gear set."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_cast"
ITEM.Model = "models/mechanics/solid_steel/i_beam_4.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

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