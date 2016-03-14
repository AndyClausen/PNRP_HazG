local ITEM = {}


ITEM.ID = "intm_chip"

ITEM.Name = "Chip"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 5
ITEM.Small_Parts = 40
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A Electronic chip used in a variety of machines"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_chip"
ITEM.Model = "models/bull/gates/microcontroller1.mdl"
ITEM.Script = ""
ITEM.Weight = 0.1
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
	return {["intm_modernelectronicsbook"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)