local ITEM = {}


ITEM.ID = "food_zombiesausage_GRD"

ITEM.Name = "Zombie sausage of another calibre"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "Orgasm in a food form"
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 70
ITEM.Ent = "food_zombiesausage_GRD"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 0.2
ITEM.ShopHide = true


function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawhead"]=2, ["tool_saucepan"]=0}
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


