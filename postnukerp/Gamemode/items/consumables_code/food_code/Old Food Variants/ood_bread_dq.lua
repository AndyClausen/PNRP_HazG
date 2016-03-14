local ITEM = {}


ITEM.ID = "food_bread_dq"

ITEM.Name = "Decent quality Bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "A well made slice of bread."
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 40
ITEM.Ent = "food_bread_dq"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 0.2
ITEM.ShopHide = true


function ITEM.ToolCheck( p )
	if (CLIENT) then
		return false
	end
	if p:HasInInventory("weapon_bat") then
		return true
	else
		return false
	end
end

function ITEM.ToolCheck( p )
	-- Items Required to construct food, the bat is the rolling pin he logic
	return {["intm_Flour"]=1, ["intm_cookingsalt"]=1, ["intm_Yeast"]=1, ["food_Purewater"]=1, ["weapon_bat"]=0}
end


function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 40 )

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


