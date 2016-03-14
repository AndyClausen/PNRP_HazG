local ITEM = {}


ITEM.ID = "food_cookedbeans_nq"

ITEM.Name = "Normal quality cooked Beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Mate what the fuck do you expect from beans. Of course they ain't the best food around."
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_cookedbeans_nq"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1


function ITEM.ToolCheck( p )
	return {["food_beans"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
		
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


