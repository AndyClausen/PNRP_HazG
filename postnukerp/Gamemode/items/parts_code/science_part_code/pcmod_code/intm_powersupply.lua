local ITEM = {}


ITEM.ID = "intm_powersupply"

ITEM.Name = "Power Supply"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 100
ITEM.Small_Parts = 80
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "A power Supply used in larger machines"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_powersupply"
ITEM.Model = "models/props_lab/reciever01b.mdl"
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
	return {["intm_chip"]=1, ["intm_resistor"]=4, ["intm_elecboard"]=8, ["intm_modernelectronicsbook"]=0 }
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)