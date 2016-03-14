local ITEM = {}


ITEM.ID = "fas2_att_compm4"

ITEM.Name = "CompM4"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 150
ITEM.Small_Parts = 60
ITEM.Chemicals = 90
ITEM.Chance = 100
ITEM.Info = "the Aimpoint CompM4 is a tubed style reflector or reflex sight that uses a red light-emitting diode"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_compm4"
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