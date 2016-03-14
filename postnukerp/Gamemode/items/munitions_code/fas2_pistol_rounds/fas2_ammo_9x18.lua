local ITEM = {}


ITEM.ID = "fas2_ammo_9x18"

ITEM.Name = "9x18MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = "20"
ITEM.Small_Parts = "2"
ITEM.Chemicals = "20"
ITEM.Chance = "100"
ITEM.Info = "The 9×18mm Makarov is a Russian pistol and sub machine gun cartridge "
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_9x18"
ITEM.Model = "models/stalker/ammo/9x18.mdl"
ITEM.Script = ""
ITEM.Weight = 2

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_pistolprimers"]=1, ["intm_munitionspress"]=0, ["intm_improvisedmunitionshandbook"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)


