local ITEM = {}


ITEM.ID = "food_watermellon"

ITEM.Name = "Watermelon"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Home-grown watermelon,Or you could say shack grown."
ITEM.Type = "2.5"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_watermellon"
ITEM.Model = ""
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true


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
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 20 )

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


