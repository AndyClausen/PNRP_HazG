local ITEM = {}


ITEM.ID = "part_ak-12_furniture"

ITEM.Name = "AK-12 Furniture"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "AK-12 furniture"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak-12_furniture"
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