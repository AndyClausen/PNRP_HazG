local ITEM = {}


ITEM.ID = "book_introductiontomodernoptics"

ITEM.Name = "Introduction to Modern optics"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 1
ITEM.Small_Parts = 1
ITEM.Chemicals = 1
ITEM.Chance = 100
ITEM.Info = "a book describing in detail a variety of recipes for optics and how they work"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_introductiontomodernoptics"
ITEM.Model = "models/props_lab/bindergreen.mdl"
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