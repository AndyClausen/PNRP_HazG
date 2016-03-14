local ITEM = {}


ITEM.ID = "food_average_quality_zombie_sausage"

ITEM.Name = "Average quality zombie sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Still bigger then Andy's"
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "average_quality_zombie_sausage"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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


