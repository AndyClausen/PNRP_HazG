local ITEM = {}


ITEM.ID = "food_beans"

ITEM.Name = "Can O' Beans"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "Beans are a staple of wasteland life."
ITEM.Type = "zero"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "food_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 5 )
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
