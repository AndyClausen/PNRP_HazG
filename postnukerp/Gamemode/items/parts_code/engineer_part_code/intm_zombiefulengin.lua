local ITEM = {}


ITEM.ID = "intm_zombiefulengin"

ITEM.Name = "Headcrab Bio-fuel engine"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 75
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "a engine used in Bio-fuel generators and vehicles"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_zombiefulengin"
ITEM.Model = "models/props_c17/trappropeller_engine.mdl"
ITEM.Script = ""
ITEM.Weight = 5
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_servo"]=3}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

function ITEM.Use( ply )
	return true	
end


PNRP.AddItem(ITEM)