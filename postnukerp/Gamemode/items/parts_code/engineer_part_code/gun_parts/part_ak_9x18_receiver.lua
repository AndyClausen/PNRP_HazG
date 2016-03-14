local ITEM = {}


ITEM.ID = "part_ak_9x18_receiver"

ITEM.Name = "AK 9X18MM Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 250
ITEM.Small_Parts = 50
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "AK 9X19MM Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_ak_9x18_receiver"
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