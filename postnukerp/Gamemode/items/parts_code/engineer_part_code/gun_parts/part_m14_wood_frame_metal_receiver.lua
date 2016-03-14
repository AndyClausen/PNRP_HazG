local ITEM = {}


ITEM.ID = "part_m14_wood_frame_metal_receiver"

ITEM.Name = "M14 Body/Receiver"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 650
ITEM.Small_Parts = 500
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "M14 Body/Receiver"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_m14_wood_frame_metal_receiver"
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