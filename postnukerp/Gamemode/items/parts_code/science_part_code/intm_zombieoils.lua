local ITEM = {}


ITEM.ID = "intm_zombieoils"

ITEM.Name = "Crude Headcrab Oils"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Headcrab oils are a result of extracting the liquid from Headcrab meat."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombieoils"
ITEM.Model = "models/props_junk/metalgascan.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	-- Items Required to make crude headcrab oil X2 Brick 
	return {["food_rawhead"]=4, ["gidzco_brick"]=0, ["gidzco_brick"]=0}
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