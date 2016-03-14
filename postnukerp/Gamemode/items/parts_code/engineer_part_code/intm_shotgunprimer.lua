local ITEM = {}


ITEM.ID = "intm_shotgunprimer"

ITEM.Name = "Shotgun/Anti-material rifle primers"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 15
ITEM.Small_Parts = 15
ITEM.Chemicals = 15
ITEM.Chance = 100
ITEM.Info = "Primers for shotgun/Anti-material calibre munitions"
ITEM.Type = "part"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "intm_shotgunprimer"
ITEM.Model = "models/props_junk/cardboard_box004a.mdl"
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