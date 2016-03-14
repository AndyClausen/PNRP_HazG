local ITEM = {}


ITEM.ID = "intm_transistors"

ITEM.Name = "transistors"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 50
ITEM.Small_Parts = 50
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_transistors"
ITEM.Model = "models/kobilica/transistor.mdl"
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

function ITEM.ToolCheck( p )
	return {["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)