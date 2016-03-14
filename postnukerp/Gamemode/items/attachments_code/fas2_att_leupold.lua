local ITEM = {}


ITEM.ID = "fas2_att_leupold"

ITEM.Name = "Leupold Scope"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 200
ITEM.Small_Parts = 100
ITEM.Chemicals = 100
ITEM.Chance = 100
ITEM.Info = "Leupold Scope"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_leupold"
ITEM.Model = "models/weapons/upgrades/a_4x_02.mdl"
ITEM.Script = ""
ITEM.Weight = 1

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
	-- return true
	return {["intm_IntroductiontoModernoptics"]=0}
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)