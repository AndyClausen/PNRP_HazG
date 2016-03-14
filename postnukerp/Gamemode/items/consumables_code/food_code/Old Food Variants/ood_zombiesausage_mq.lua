local ITEM = {}


ITEM.ID = "food_zombiesausage_mq"

ITEM.Name = "Majestic quality Sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "A delicious sausage roll"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 60
ITEM.Ent = "food_zombiesausage_mq"
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
		
		ply:GiveHunger( 60 )
		
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


