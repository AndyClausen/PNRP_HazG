local ITEM = {}


ITEM.ID = "intm_flour"

ITEM.Name = "Flour"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Dude its totally fucking like flowers where grinned up into a powder ! "
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_flour"
ITEM.Model = "models/props_junk/garbage_bag001a.mdl"
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