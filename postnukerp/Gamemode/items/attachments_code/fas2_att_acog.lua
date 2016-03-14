local ITEM = {}


ITEM.ID = "fas2_att_acog"

ITEM.Name = "ACOG X4 Zoom"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "Standard issue ACOG X4 zoom scope,fits right onto a standard Picatinny rail"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_acog"
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