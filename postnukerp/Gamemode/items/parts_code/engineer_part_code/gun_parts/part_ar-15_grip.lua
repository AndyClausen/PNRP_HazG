local ITEM = {}


ITEM.ID = "part_ar-15_grip"

ITEM.Name = "AR-15 Grip"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 10
ITEM.Small_Parts = 10
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AR-15 Grip"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ar-15_grip"
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