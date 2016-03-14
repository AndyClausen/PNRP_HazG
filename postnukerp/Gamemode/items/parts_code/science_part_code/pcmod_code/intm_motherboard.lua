local ITEM = {}


ITEM.ID = "intm_motherboard"

ITEM.Name = "Motherboard"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 300
ITEM.Small_Parts = 300
ITEM.Chemicals = 300
ITEM.Chance = 100
ITEM.Info = "A pretty advanced piece of technology for this current place in time "
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_motherboard"
ITEM.Model = "models/cheeze/pcb/pcb1.mdl"
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
	-- This one returns required items.
	return {["intm_sensorpod"]=1, ["intm_elecboard"]=4, ["intm_cpu"]=1, ["intm_chip"]=6, ["intm_ramcard"]=2, ["intm_graphicscard"]=1, ["intm_transistors"]=1, ["intm_resistor"]=4, ["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)