local ITEM = {}


ITEM.ID = "fuel_zombiefule"

ITEM.Name = "Headcrab Bio-Fule"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 2
ITEM.Small_Parts = 2
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Fule made from Headcrab meat, Smells like rotten flesh."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_zombiefule"
ITEM.Model = "models/props_junk/gascan001a.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return true	
end

function ITEM.ToolCheck( p )
	return {["intm_zombieoilsrefined"]=3}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetModel(ITEM.Model)
	ent:SetPos(pos)
	ent.CanF2 = true
	ent.ID = "fuel_Zombiefule"
	ent:Spawn()
end

PNRP.AddItem(ITEM)


