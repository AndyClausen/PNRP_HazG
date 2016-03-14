local ITEM = {}


ITEM.ID = "healthvial"

ITEM.Name = "Health Vial"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 20
ITEM.Small_Parts = 5
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "A glass tube with a strange liquid with pharmaceutical properties"
ITEM.Type = "medical"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "hp_smallhealthkit"
ITEM.Model = "models/healthvial.mdl"
ITEM.Script = ""
ITEM.Weight = 2

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Spawn( p )
	PNRP.BaseItemSpawn( p, ITEM )
end

function ITEM.Use( ply )
	local health = ply:Health()
		
	if not ( health == ply:GetMaxHealth() ) then
		local sound = Sound("items/smallmedkit1.wav")
		ply:EmitSound( sound )
		
		ply:SetHealth( health + 10 )
		if ( ply:GetMaxHealth() < health + 10  ) then
			ply:SetHealth( ply:GetMaxHealth() )
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


