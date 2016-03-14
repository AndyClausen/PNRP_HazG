local ITEM = {}


ITEM.ID = "part_toz-34_wooden_furniture"

ITEM.Name = "TOZ-34 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 50
ITEM.Chemicals = 150
ITEM.Chance = 100
ITEM.Info = "TOZ-34 Furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_toz-34_wooden_furniture"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
ITEM.Script = ""
ITEM.Weight = 0.5
ITEM.ShopHide = true

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.ToolCheck( p )
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)