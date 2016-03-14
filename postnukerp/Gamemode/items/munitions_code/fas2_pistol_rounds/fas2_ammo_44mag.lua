local ITEM = {}


ITEM.ID = "fas2_ammo_44mag"

ITEM.Name = ".44 Magnum"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 35
ITEM.Small_Parts = 3
ITEM.Chemicals = 35
ITEM.Chance = 100
ITEM.Info = "The .44 Remington Magnum,.44 Magnum (10.9×33mmR), is a large-bore cartridge originally designed for revolvers"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_44mag"
ITEM.Model = "models/Items/357ammobox.mdl"
ITEM.Script = ""
ITEM.Weight = 3

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_Smokelesspowder"]=1, ["intm_Pistolprimers"]=1, ["intm_Munitionspress"]=0, ["intm_ImprovisedMunitionsHandbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)


