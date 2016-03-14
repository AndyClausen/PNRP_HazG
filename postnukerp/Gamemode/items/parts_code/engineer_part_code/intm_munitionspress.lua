local ITEM = {}


ITEM.ID = "intm_munitionspress"

ITEM.Name = "Compact Munitions press"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 350
ITEM.Chemicals = 175
ITEM.Chance = 100
ITEM.Info = "A suit case carrying a variety of tools used to make Ammunition "
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_munitionspress"
ITEM.Model = "models/props_c17/SuitCase001a.mdl"
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