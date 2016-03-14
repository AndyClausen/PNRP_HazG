local ITEM = {}


ITEM.ID = "food_poor_quality_bread"

ITEM.Name = "Poor quality bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "I think its far beyond its expiry date."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_quality_bread"
ITEM.Model = ""
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
		
		ply:GiveHunger( 10 )
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


