local ITEM = {}


ITEM.ID = "part_m24_body"

ITEM.Name = "M24 Body"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 800
ITEM.Small_Parts = 750
ITEM.Chemicals = 450
ITEM.Chance = 100
ITEM.Info = "A fully assembled m24 missing a Stock"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m24_body"
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