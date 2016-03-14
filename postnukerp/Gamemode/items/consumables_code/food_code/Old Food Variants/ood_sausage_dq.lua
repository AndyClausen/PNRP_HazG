local ITEM = {}


ITEM.ID ="food_sausage_dq"

ITEM.Name = "Decent quality sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A delicious sausage roll"
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 40
ITEM.Ent = "food_sausage_dq"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawhead"]=2, ["tool_saucepan"]=0}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 50 )
		
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


