local ITEM = {}


ITEM.ID = "part_ak_skeleton_stock"

ITEM.Name = "AK Skeleton Stock"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 100
ITEM.Small_Parts = 35
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = "AK Skeleton Stock"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_skeleton_stock"
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