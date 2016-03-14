local ITEM = {}


ITEM.ID = "part_g3a3_reciever"

ITEM.Name = "G3A3 Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 350
ITEM.Small_Parts = 150
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "G3A3 Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_g3a3_reciever"
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