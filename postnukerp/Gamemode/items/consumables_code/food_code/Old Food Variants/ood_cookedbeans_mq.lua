local ITEM = {}


ITEM.ID = "food_cookedbeans_mq"

ITEM.Name = "Majestic quality cooked Beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Who the fuck would call beans majestic? Pretty low standards man."
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 50
ITEM.Ent = ""
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = "food_cookedbeans_mq"
ITEM.Weight = 1


function ITEM.ToolCheck( p )
	return {["food_beans"]=1}
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


