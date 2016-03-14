local ITEM = {}


ITEM.ID = "part_rpk_7.62x39_barrel"

ITEM.Name = "7.62X39 Barrel RPK"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts = 20
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "A barrel used in a RPK"
ITEM.Type = "wep_part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "part_rpk_7.62x39_barrel"
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