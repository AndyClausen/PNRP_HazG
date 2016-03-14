//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//	  	This will include ammunition		//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//						   Pistol Rounds						 //
-------------------------------------------------------------------
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  44MAG				 --
-------------------------------------------------------------------
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
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_pistolprimers"]=1, ["intm_44mag_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  45ACP				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_45acp"

ITEM.Name = ".45 ACP"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 20
ITEM.Small_Parts =2 
ITEM.Chemicals =20 
ITEM.Chance = 100
ITEM.Info = "The .45 ACP (11.43×23mis a pistol cartridge designed by John Browning in 1904"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_45acp"
ITEM.Model = "models/stalker/ammo/45cal.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_pistolprimers"]=1, ["intm_munitionspress"]=0, ["book_munitions"]=0, ["intm_45acp_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  50AE				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_50ae"

ITEM.Name = ".50 AE"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts =4
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "Who the fuck even came up with such a stupid pistol round?"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_50ae"
ITEM.Model = "models/stalker/ammo/magnum.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_pistolprimers"]=1, ["intm_50ae_case"]=1}
end


function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  9X18				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_9x18"

ITEM.Name = "9x18MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 20
ITEM.Small_Parts = 2
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "The 9×18mm Makarov is a Russian pistol and sub machine gun cartridge"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_9x18"
ITEM.Model = "models/stalker/ammo/9x18.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_pistolprimers"]=1, ["intm_9x18_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  9X19   			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_9x19"

ITEM.Name = "9x19MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 20
ITEM.Small_Parts = 2
ITEM.Chemicals = 20
ITEM.Chance = 100
ITEM.Info = "9X19 cartridge was designed by Georg Luger and introduced in 1902 for German firearms"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_9x19"
ITEM.Model = "models/stalker/ammo/9x19.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_pistolprimers"]=1, ["intm_9x19_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
///////////////////////////////////////////////////////////////////
//						   Rifle rounds  						 //
-------------------------------------------------------------------
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 rifle  5.45x39  			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_545x39"

ITEM.Name = "5.45x39MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 30
ITEM.Small_Parts = 5
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "The 5.45×39mm cartridge is a rimless bottlenecked rifle cartridge."
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_545x39"
ITEM.Model = "models/stalker/ammo/545x39.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_rifleprimers"]=1, ["intm_5.45x39_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  5.56x45   			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_556x45"

ITEM.Name = "5.56x45MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts = 5
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "The 5.56×45mm NATO (official NATO nomenclature 5.56 NATO)originally developed to be chambered in the M16 rifle"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_556x45"
ITEM.Model = "models/stalker/ammo/556x45.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_rifleprimers"]=1, ["intm_5.56x45_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  7.62x39   			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_762x39"

ITEM.Name = "7.62x39MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts = 4
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "The 7.62×39mm round is a rifle cartridge of Soviet origin that was designed during World War II."
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 60
ITEM.Ent = "fas2_ammo_762x39"
ITEM.Model = "models/stalker/ammo/762x39.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_rifleprimers"]=1, ["intm_7.62x39_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  7.62x51  			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_762x51"

ITEM.Name = "7.62x51MM"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 5
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "The 7.62×51mm NATO (official NATO nomenclature 7.62 NATO) is a rimless bottlenecked rifle cartridge developed in the 1950s as a standard for small arms among NATO countries."
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_762x51"
ITEM.Model = "models/stalker/ammo/762x51.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_largerifleprimers"]=1, ["intm_7.62x51_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end
PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo  fucktwat  7.62x54r  			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_762x54r"

ITEM.Name = "7.62x54MMR"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 50
ITEM.Small_Parts = 5
ITEM.Chemicals = 50
ITEM.Chance = 100
ITEM.Info = "The 7.62X54r round was shat out by Ruskie commies somewhere back in 1890s or was it 18900s, billy I don't fucking know ?"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_762x54r"
ITEM.Model = "models/stalker/ammo/762x54.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_largerifleprimers"]=1, ["intm_munitionspress"]=0, ["book_munitions"]=0}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end
PNRP.AddItem(ITEM)
///////////////////////////////////////////////////////////////////
//						   shotgun rounds  						 //
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  12gauge 			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_12gauge"

ITEM.Name = "12 Gauge"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 30
ITEM.Small_Parts = 3
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "12 Gauge shotgun Ammo"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_12gauge"
ITEM.Model = "models/stalker/ammo/12x70.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=1, ["intm_shotgunprimer"]=1, ["intm_12gauge_case"]=1}
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)

///////////////////////////////////////////////////////////////////
//						   Mixed rounds  						 //
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 AR2            			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "ammo_ar2"

ITEM.Name = "Fusion Battery"
ITEM.ClassSpawn = "Science"
ITEM.Scrap = 10
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Munitions for the AR2 Pulse rifle, It also may fit other Pulse weapons"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 50  --is also ammo amount for ammo
ITEM.Ent = "ammo_ar2"
ITEM.Model = "models/Items/combine_rifle_cartridge01.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ammoType = string.gsub(ammoType, "ammo_", "")
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  40MM 			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_40mm"

ITEM.Name = "40MM HE"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 40
ITEM.Small_Parts = 5
ITEM.Chemicals = 40
ITEM.Chance = 100
ITEM.Info = "40MM High explosive grenades"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_40mm"
ITEM.Model = "models/weapons/w_40mm_grenade_launched.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=3, ["intm_shotgunprimer"]=1, ["intm_munitionspress"]=0, ["book_munitions"]=0}
end

function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--				  H.A.Z.G   ammo	 pistol  50BMG 			 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "fas2_ammo_50bmg"

ITEM.Name = ".50 BMG"
ITEM.ClassSpawn = "Engineer"
ITEM.Scrap = 75
ITEM.Small_Parts =7
ITEM.Chemicals = 75
ITEM.Chance = 100
ITEM.Info = "The .50BMG.....Over kill"
ITEM.Type = "ammo"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "fas2_ammo_50bmg"
ITEM.Model = "models/stalker/ammo/50cal.mdl"
ITEM.Script = ""
ITEM.Weight = 3
ITEM.ShopHide = true
ITEM.ToolOnly = true
function ITEM.Use( ply )
	local ammoType = ITEM.ID
	ply:GiveAmmo(ITEM.Energy, ammoType)
	return true
end

function ITEM.ToolCheck( p )
	-- return true
	return {["intm_smokelesspowder"]=3, ["intm_shotgunprimer"]=1, ["intm_50bmg_case"]=1}
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
	ent:SetNetworkedString("Ammo", tostring(ITEM.Energy))
end

PNRP.AddItem(ITEM)

-- print("Testing all ammo types:")
-- for k,v in pairs(PNRP.Items) do
	-- if PNRP.Items[k].Type == "ammo" then
		-- print("Ammo found: "..PNRP.Items[k].ID)
	-- else
		-- print("Non-ammo found: "..PNRP.Items[k].ID.." with type: "..PNRP.Items[k].Type)
	-- end
-- end
-- print("Ammo file is loaded!")

--EOF