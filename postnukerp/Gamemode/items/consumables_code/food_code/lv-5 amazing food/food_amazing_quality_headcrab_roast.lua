local ITEM = {}


ITEM.ID = "food_amazing_quality_headcrab_roast"

ITEM.Name = "Amazing quality headcrab roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A roast of headcrab.  Very filling.  Needs both a skillet and a deep pot."
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_decent_quality_headcrab_roast"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1


function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )

		return true	
	else
		return false
	end
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)


