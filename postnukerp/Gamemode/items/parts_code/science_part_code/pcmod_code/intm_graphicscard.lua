local ITEM = {}


ITEM.ID = "intm_graphicscard"

ITEM.Name = "Graphics Card"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 200
ITEM.Small_Parts = 200
ITEM.Chemicals = 200
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 100
ITEM.Ent = "intm_graphicscard"
ITEM.Model = "models/wingf0x/hdmiplug.mdl"
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
	return {["intm_modernelectronicsbook"]=0, ["intm_resistor"]=1, ["intm_chip"]=4,  ["intm_elecboard"]=4}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)