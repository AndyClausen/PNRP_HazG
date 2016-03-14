local ITEM = {}


ITEM.ID = "food_coffee"

ITEM.Name = "Cup of Coffee"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A good cup of coffee to keep ya goin'.  Needs a Coffee Pot dumb ass."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_coffee"
ITEM.Model = "models/props_junk/garbage_coffeemug001a.mdl"
ITEM.Script = ""
ITEM.Weight = 1


function ITEM.ToolCheck( p )
	if (CLIENT) then
		return false
	end
	if p:HasInInventory("tool_coffeepot") then
		return true
	else
		return false
	end
end

function ITEM.Use( ply )
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 10 )
		
		local endurance = ply:GetTable().Endurance
		if not ( endurance == 100 ) then
			local sound = Sound("npc/ichthyosaur/snap.wav")
			ply:EmitSound( sound )
			ply:GiveEndurance( 8 )
		end
		
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


