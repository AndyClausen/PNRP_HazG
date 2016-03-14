local ITEM = {}


ITEM.ID = "magazine_waffle_545x39"

ITEM.Name = "Waffle MAG 5.45x39mm"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A waffle Mag accepting the 5.45x39mm Cartridge, It can fit into AK-74M's AN-94 AK-12 or most guns in that caliber"
ITEM.Type = "magazine"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "magazine_waffle_545x39"
ITEM.Model = "models/items/sakomag.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
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