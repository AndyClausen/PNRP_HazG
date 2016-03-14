local ITEM = {}


ITEM.ID = "fuel_uran"

ITEM.Name = "Uranium Fuel"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "If it glows you don't touch it, But it does look tasty."
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "fuel_uran"
ITEM.Model = "models/items/crossbowrounds.mdl"
ITEM.Script = ""
ITEM.Weight = 0.1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	return false
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)


