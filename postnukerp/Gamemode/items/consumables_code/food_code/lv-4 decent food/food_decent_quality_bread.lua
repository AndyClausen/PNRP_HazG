local ITEM = {}


ITEM.ID = "food_decent_quality_bread"

ITEM.Name = "Decent bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "MUHH TASTE dis some real gud bread"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_decent_quality_bread"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p ) -- Required ingredients to produce bread, hunger given will change due to difficulty to make.
	return {["intm_flour"]=1, ["intm_cookingsalt"]=1, ["intm_yeast"]=1}
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


