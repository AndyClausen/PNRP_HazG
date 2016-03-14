local ITEM = {}


ITEM.ID = "book_improvisedmunitionshandbook"

ITEM.Name = "Improvised Munitions Handbook"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "a book describing in detail a variety of recipes for Ammunition primers and how they work"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_improvisedmunitionshandbook"
ITEM.Model = "models/props_lab/binderredlabel.mdl"
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