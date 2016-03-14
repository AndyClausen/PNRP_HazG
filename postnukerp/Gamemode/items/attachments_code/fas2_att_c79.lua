local ITEM = {}


ITEM.ID = "fas2_att_c79"

ITEM.Name = "ELCAN C79"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "The C79 Optical sight is a small arms telescopic sight of 3.4×28 magnification. A tritium illuminated reticle"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_c79"
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