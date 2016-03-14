local ITEM = {}


ITEM.ID = "intm_cpu"

ITEM.Name = "CPU"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 25
ITEM.Small_Parts = 75
ITEM.Chemicals = 25
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_cpu"
ITEM.Model = "models/bull/gates/microcontroller1.mdl"
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