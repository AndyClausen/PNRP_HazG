local ITEM = {}


ITEM.ID = "food_amazing_quality_beans"

ITEM.Name = "Amazing cooked beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Some Heinz Shit right here."
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_amazing_quality_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=0}
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


