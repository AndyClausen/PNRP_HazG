local ITEM = {}


ITEM.ID = "fas2_att_eotech"

ITEM.Name = "EOtech 553"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 40
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "EOTech 553 A65 Holographic Weapon Sights is its holographic reticle patterns that are instantly visible in any light condition"
ITEM.Type = "attachment"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fas2_att_eotech"
ITEM.Model = "models/wystan/attachments/doctorrds.mdl"
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