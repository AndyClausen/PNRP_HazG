local ITEM = {}


ITEM.ID = "intm_zombieoilsrefined"

ITEM.Name = "Refined Headcrab Oils"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Refined Headcrab oils have had all the excesses chemicals and solids filtered out and is ready to burn"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombieoilsrefined"
ITEM.Model = "models/props_junk/metalgascan.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.ToolCheck( p )
	return {["intm_zombieoils"]=3, ["tool_waterpurifier"]=0, ["tool_paper"]=1}
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