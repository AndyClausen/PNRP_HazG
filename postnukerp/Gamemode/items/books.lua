//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//	  This will include our custom books	//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



-------------------------------------------------------------------
--				H.A.Z.G   book   Anarchist Cookbook				 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "book_anarchistcookbook"

ITEM.Name = "Anarchist Cookbook"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A book describing in detail a variety of recipes for explosives firearms silencers etc."
ITEM.Type = "book"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "book_anarchistcookbook"
ITEM.Model = "models/props_lab/bindergraylabel01b.mdl"
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


-------------------------------------------------------------------
--		  H.A.Z.G   book   Improvised Munitions Handbook		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "book_munitions"

ITEM.Name = "Improvised Munitions Handbook"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "a book describing in detail a variety of recipes for Ammunition primers and how they work"
ITEM.Type = "book"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "book_munitions"
ITEM.Model = "models/props_lab/binderredlabel.mdl"
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
-------------------------------------------------------------------
--		  H.A.Z.G   book   Introduction to Modern optics		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "book_introductiontomodernoptics"

ITEM.Name = "Introduction to Modern optics"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 1
ITEM.Small_Parts = 1
ITEM.Chemicals = 1
ITEM.Chance = 100
ITEM.Info = "a book describing in detail a variety of recipes for optics and how they work"
ITEM.Type = "book"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "book_introductiontomodernoptics"
ITEM.Model = "models/props_lab/bindergreen.mdl"
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
-------------------------------------------------------------------
--		  H.A.Z.G   book   Modern Electronics            		 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "book_modernelectronicsbook"

ITEM.Name = "Modern Electronics"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts =0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A pre-war book describing a variety of components showing how they are made and work."
ITEM.Type = "book"
ITEM.Remove = true
ITEM.Energy = 0
ITEM.Ent = "book_modernelectronicsbook"
ITEM.Model = "models/props_lab/binderblue.mdl"
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
-------------------------------------------------------------------
--		            		                                     --
-------------------------------------------------------------------