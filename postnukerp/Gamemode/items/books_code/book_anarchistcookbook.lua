local ITEM = {}


ITEM.ID = "book_anarchistcookbook"

ITEM.Name = "Anarchist Cookbook"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A book describing in detail a variety of recipes for explosives firearms silencers etc."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_anarchistcookbook"
ITEM.Model = "models/props_lab/bindergraylabel01b.mdl"
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