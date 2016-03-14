local ITEM = {}


ITEM.ID = "book_modernelectronicsbook"

ITEM.Name = "Modern Electronics"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts =0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A pre-war book describing a variety of components showing how they are made and work."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_modernelectronicsbook"
ITEM.Model = "models/props_lab/binderblue.mdl"
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