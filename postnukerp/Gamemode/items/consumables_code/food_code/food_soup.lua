local ITEM = {}


ITEM.ID = "food_soup"

ITEM.Name = "Poor quality carton of Soup"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 3
ITEM.Small_Parts = 0
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A big carton of soup. Keeps your thirst and hunger down! Needs a saucepan you fuck tard!"
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_soup"
ITEM.Model = "models/props_junk/garbage_milkcarton002a.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.ToolCheck( p )
	if (CLIENT) then
		return false
	end
	if p:HasInInventory("tool_saucepan") then
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
		ply:GiveThirst( 20 )
		local health = ply:Health()
		if not ( health == ply:GetMaxHealth() ) then
			ply:SetHealth( health + 5 )
			if ( ply:GetMaxHealth() < health + 5  ) then
				ply:SetHealth( ply:GetMaxHealth() )
			end
		end
		local hunger = ply:GetTable().Hunger
		if not ( hunger == 100 ) then
			local sound = Sound("npc/ichthyosaur/snap.wav")
			ply:EmitSound( sound )
			ply:GiveHunger( 20 )
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


