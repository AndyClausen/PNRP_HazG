//////////////////////////////////////////////
//				   H.A.Z.G   				//
//			Items remake for PNRP			//
//											//
//	  This will include food and liquid		//
//	from the items folder from our server.	//
//											//
//	   Use with Andy's permission only!		//
//											//
//			  By Andy and Wiktor			//
//////////////////////////////////////////////



///////////////////////////////////////////////////////////////////
//							  FOOD								 //
-------------------------------------------------------------------

/////////////////////////////
////////// Level 0 //////////
/////////////////////////////

-------------------------------------------------------------------
--				H.A.Z.G   food	 level 0  Beans					 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_beans"

ITEM.Name = "Can O' Beans"
ITEM.ClassSpawn = "All"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "Beans are a staple of wasteland life."
ITEM.Type = "zero"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "food_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 5 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 0 Crude Milk 		     --             ------ what Wiktor? Shouldn't this be at liquids?
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_crude_milk"

ITEM.Name = "Crude Milk"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "MORK!"
ITEM.Type = "liquid"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "food_crude_milk"
ITEM.Model = "models/foodnhouseholditems/milk.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger -- Hunger? Why not thirst?
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 5 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 0 Raw Antlion Meat        --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_rawant"

ITEM.Name = "Raw Antlion Meat"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "A slab of raw antlion meat."
ITEM.Type = "zero"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "food_rawant"
ITEM.Model = "models/gibs/antlion_gib_large_1.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 5 )
		local shouldpoison = math.random(1, 100)
		if shouldpoison < 20 then
			local timerstring = tostring(ply:UniqueID())..tostring(math.random(1,999))
			
			timer.Create("poison"..timerstring, 1, 10, function() 
					if ply and IsValid(ply) then
						if not ply:Alive() then
							timer.Destroy("poison"..timerstring)
							return
						end
						ply:TakeDamage( 1, ply, ply)
					end
				end)
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 0 Raw Antlion Guard Meat	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_rawguard"

ITEM.Name = "Raw Antlion Guard Meat"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 2
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "A large hunk of guard meat.  The royal gelly inside seems to heal."
ITEM.Type = "zero"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "food_rawguard"
ITEM.Model = "models/gibs/antlion_gib_large_3.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 5)
		
		local health = ply:Health()
	
		if not ( health == ply:GetMaxHealth() ) then
			ply:SetHealth( health + 5 )
			if ( ply:GetMaxHealth() < health + 5  ) then
				ply:SetHealth( ply:GetMaxHealth() )
			end
		end
		
		local shouldpoison = math.random(1, 100)
		if shouldpoison < 20 then
			local timerstring = tostring(ply:UniqueID())..tostring(math.random(1,999))
			
			timer.Create("poison"..timerstring, 1, 20, function() 
					if ply and IsValid(ply) then
						if not ply:Alive() then
							timer.Destroy("poison"..timerstring)
							return
						end
						ply:TakeDamage( 1, ply, ply)
					end
				end)
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 0 Raw Headcrab Meat   	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_rawhead"

ITEM.Name = "Raw Headcrab Meat"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 5
ITEM.Small_Parts = 0
ITEM.Chemicals = 2
ITEM.Chance = 100
ITEM.Info = "I like my women like I like my Headcrab meat, Raw"
ITEM.Type = "zero"
ITEM.Remove = true
ITEM.Energy = 5
ITEM.Ent = "food_rawhead"
ITEM.Model = "models/weapons/w_bugbait.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 5 )
		local shouldpoison = math.random(1, 100)
		if shouldpoison < 20 then
			local timerstring = tostring(ply:UniqueID())..tostring(math.random(1,999))
			
			timer.Create("poison"..timerstring, 1, 10, function() 
					if ply and IsValid(ply) then
						if not ply:Alive() then
							timer.Destroy("poison"..timerstring)
							return
						end
						ply:TakeDamage( 1, ply, ply)
					end
				end)
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
--------------------------------------------------------------------------------------------------------
/////////////////////////////
////////// Level 1 //////////
/////////////////////////////
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 1  Poorly cooked beans	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_beans"

ITEM.Name = "Poorly cooked beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Although cooked they are still really shit, who ever cooked them managed to burn them."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_beans"]=1}
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 1  Poor quality bread	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_bread"

ITEM.Name = "Poor quality bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "I think its far beyond its expiry date."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_bread"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 1  Poor Quality Cheese	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_cheese"

ITEM.Name = "Poor Quality Cheese"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "It looks pretty bad,It might as well be cardboard."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_cheese"
ITEM.Model = "models/foodnhouseholditems/pizzaboxbottom.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return true
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 1  Poor quality cookies	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_cookies"

ITEM.Name = "Poor quality cookies"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Looks like flattened shit."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_cookies"
ITEM.Model = "models/foodnhouseholditems/digestive2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return true
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
-------------------------------------------------------------------
--		H.A.Z.G   food	 level 1  Poor Quality Headcrab Roast	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_roast"

ITEM.Name = "Poor quality headcrab Roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A roast of headcrab.  Very filling.  Needs both a skillet and a deep pot."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_roast"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false


function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawhead"]=1}
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 1  Zombie sausage     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_z_sausage"

ITEM.Name = "Poor quality zombie sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Is this Cannibalism in a sausage ?"
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_z_sausage"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawhead"]=1}
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 1   antlion          	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_poor_q_antlion"

ITEM.Name = "Poor Quality Antlion roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_poor_q_antlion"
ITEM.Model = "models/gibs/antlion_gib_small_2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawant"]=1}
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
--------------------------------------------------------------------
/////////////////////////////
////////// Level 2 //////////
/////////////////////////////
-------------------------------------------------------------------
--		H.A.Z.G   food	 level 2  Questionable cooked beans    	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_beans"

ITEM.Name = "Questionable cooked beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Something seems a bit off, not much but just a little."
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_beans"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )
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
-------------------------------------------------------------------
--			H.A.Z.G   food	 level 2  Questionable Bread     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_bread"

ITEM.Name = "Questionable Bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Something seems a bit off, not much but just a little."
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_bread"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p ) -- Required ingredients to produce bread, hunger given will change due to difficulty to make.
	return {["intm_flour"]=1, ["intm_cookingsalt"]=1, ["intm_yeast"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 2  Questionable Cheese    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_cheese"

ITEM.Name = "Questionable Cheese"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Its all right. "
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_cheese"
ITEM.Model = "models/foodnhouseholditems/pizzaboxbottom.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 2  Questionable Cookies   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_cookies"

ITEM.Name = "Questionable Cookies"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Looks a bit like ironed shit."
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_cookies"
ITEM.Model = "models/foodnhouseholditems/digestive2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )
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
-------------------------------------------------------------------
--H.A.Z.G   food	 level 2  Questionable quality headcrab roast--
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_roast"

ITEM.Name = "Questionable quality headcrab roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A roast of headcrab.  Very filling.  Needs both a skillet and a deep pot."
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_roast"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false


function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )

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
-------------------------------------------------------------------
--H.A.Z.G   food	 level 2  Questionable zombie sausage     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_z_sausage"

ITEM.Name = "Questionable zombie sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A bit oily"
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_z_sausage"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )
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
-------------------------------------------------------------------
--		H.A.Z.G   food	 level 2  Questionable antlion      	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_questionable_q_antlion"

ITEM.Name = "Questionable Antlion roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_questionable_q_antlion"
ITEM.Model = "models/gibs/antlion_gib_small_2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawant"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 15 )
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
--------------------------------------------------------------------
/////////////////////////////
//////// Grown food /////////
/////////////////////////////
-------------------------------------------------------------------
--				H.A.Z.G   food	grown food  banana     	         --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_banana"

ITEM.Name = "Banana"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Known to be shoved up asses by youtubers before the war."
ITEM.Type = "grown"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_banana"
ITEM.Model = "models/props/cs_italy/bananna.mdl"
ITEM.Script = ""
ITEM.Weight = 0.2
ITEM.ShopHide = true


function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 20 )

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
-------------------------------------------------------------------
--				H.A.Z.G   food	 grown food  orange          	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_orange"

ITEM.Name = "Orange"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "It's an orange.  Must be grown, as you can't find them anywhere."
ITEM.Type = "grown"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_orange"
ITEM.Model = "models/props/cs_italy/orange.mdl"
ITEM.Script = ""
ITEM.Weight = 0.2
ITEM.ShopHide = true


function ITEM.ToolCheck( p )
	if (CLIENT) then
		return false
	end
	if p:HasInInventory("tool_saucepan") then
		return true
	else
		return false
	end
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 20 )

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
-------------------------------------------------------------------
--				H.A.Z.G   food	 grown food  watermelon       	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_watermellon"

ITEM.Name = "Watermelon"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Home-grown watermelon,Or you could say shack grown."
ITEM.Type = "grown"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_watermellon"
ITEM.Model = "models/props_junk/watermelon01.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true


function ITEM.ToolCheck( p )
	if (CLIENT) then
		return false
	end
	if p:HasInInventory("tool_saucepan") then
		return true
	else
		return false
	end
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )

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
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_cabbage"

ITEM.Name = "Cabbage"
ITEM.ClassSpawn = "None"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "Cheeki breeki iv damke"
ITEM.Type = "grown"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_cabbage"
ITEM.Model = "models/foodnhouseholditems/cabbage1.mdl"
ITEM.Script = ""
ITEM.Weight = 0.2
ITEM.ShopHide = true


function ITEM.ToolCheck( p )
	return true
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 20 )

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
-------------------------------------------------------------------
/////////////////////////////
////////// Level 3 //////////
/////////////////////////////
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 3   Average cooked beans  --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_beans"

ITEM.Name = "Average cooked beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Its tastes pretty good for something that old."
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "food_average_q_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 3  Average bread     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_bread"

ITEM.Name = "Average bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Still quite soft."
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "food_average_q_bread"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p ) -- Required ingredients to produce bread, hunger given will change due to difficulty to make.
	return {["intm_flour"]=1, ["intm_cookingsalt"]=1, ["intm_yeast"]=1}
end


function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 3 cheese              	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_cheese"

ITEM.Name = "Average Cheese"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "It has a very strong taste."
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_average_q_cheese"
ITEM.Model = "models/foodnhouseholditems/pizzaboxbottom.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 3 Average Cookies    	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_cookies"

ITEM.Name = "Average Cookies"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "M8 right outa tescos in it m8."
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_average_q_cookies"
ITEM.Model = "models/foodnhouseholditems/digestive2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
-------------------------------------------------------------------
--	H.A.Z.G   food	 level 3 Average quality headcrab roast  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_roast"

ITEM.Name = "Average quality headcrab roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A roast of headcrab.  Very filling.  Needs both a skillet and a deep pot."
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_average_q_roast"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false


function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )

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
-------------------------------------------------------------------
--	H.A.Z.G   food	 level 3 Average quality zombie sausage  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_z_sausage"

ITEM.Name = "Average quality zombie sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Still bigger then Wiktor's"
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "average_q_z_sausage"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
-------------------------------------------------------------------
--	H.A.Z.G   food	 level 3 Average antlion  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_average_q_antlion"

ITEM.Name = "Average quality antlion roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_amazing_q_antlion"
ITEM.Model = "models/gibs/antlion_gib_small_2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawant"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
-------------------------------------------------------------------
/////////////////////////////
////////// Level 4 //////////
/////////////////////////////
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 4 Decently cooked beans   --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_beans"

ITEM.Name = "Decently cooked beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Its Bland! its sour !"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_average_q_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 4 Decent bread            --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_bread"

ITEM.Name = "Decent bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "MUHH TASTE dis some real gud bread"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_decent_q_bread"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p ) -- Required ingredients to produce bread, hunger given will change due to difficulty to make.
	return {["intm_flour"]=1, ["intm_cookingsalt"]=1, ["intm_yeast"]=1}
end


function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 4 Decent cheese           --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_cheese"

ITEM.Name = "Decent cheese"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "cheese, what else to say ?"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_decent_q_cheese"
ITEM.Model = "models/foodnhouseholditems/pizzaboxbottom.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 4 Decent cookies     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_cookies"

ITEM.Name = "Decent cookies"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Are you sure this is not Pre-war?"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_decent_q_cookies"
ITEM.Model = "models/foodnhouseholditems/digestive2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
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
-------------------------------------------------------------------
--	H.A.Z.G   food	 level 4 Decent quality headcrab roast  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_roast"

ITEM.Name = "Decent quality headcrab roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A roast of headcrab.  Very filling.  Needs both a skillet and a deep pot."
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_decent_q_roast"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false


function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )

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
-------------------------------------------------------------------
--		  H.A.Z.G   food	 level 4 Decent zombie sausage  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_z_sausage"

ITEM.Name = "Decent zombie sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Something so magical there can be no description"
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 30
ITEM.Ent = "food_decent_q_z_sausage"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawant"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
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
-------------------------------------------------------------------
--		  H.A.Z.G   food	 level 4 Decent Antlion 	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_decent_q_antlion"

ITEM.Name = "Decent Antlion roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "four"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_decent_q_antlion"
ITEM.Model = "models/gibs/antlion_gib_small_2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawant"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 30 )
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
-------------------------------------------------------------------
/////////////////////////////
////////// Level 5 //////////
/////////////////////////////
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 5 Amazing cooked beans  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_beans"

ITEM.Name = "Amazing Cooked Beans"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Some Heinz shit right here."
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_amazing_q_beans"
ITEM.Model = "models/stalker/item/food/tuna.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=0}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 5 Amazing Bread  	    --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_bread"

ITEM.Name = "Amazing Bread"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Pro cooked bread"
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_amazing_q_bread"
ITEM.Model = "models/stalker/item/food/bread.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p ) -- Required ingredients to produce bread, hunger given will change due to difficulty to make.
	return {["intm_flour"]=1, ["intm_cookingsalt"]=1, ["intm_yeast"]=1}
end


function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 5 Amazing cheese    	     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_cheese"

ITEM.Name = "Amazing cheese"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "Sometimes I dream about cheese"
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_amazing_q_cheese"
ITEM.Model = "models/foodnhouseholditems/pizzaboxbottom.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=0}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )
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
-------------------------------------------------------------------
--				H.A.Z.G   food	 level 5 Amazing Cookies     	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_cookies"

ITEM.Name = "Amazing Cookies"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "COOOKIEEEES"
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_amazing_q_cookies"
ITEM.Model = "models/foodnhouseholditems/digestive2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=0}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )
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
-------------------------------------------------------------------
--	H.A.Z.G   food	 level 5 Amazing quality headcrab roast   	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_roast"

ITEM.Name = "Amazing quality headcrab roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "A roast of headcrab. Very filling. Needs both a skillet and a deep pot."
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_decent_q_roast"
ITEM.Model = "models/headcrabclassic.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false


function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )

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
-------------------------------------------------------------------
--	H.A.Z.G   food	 level 5 Amazing quality zombie sausage  	 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_z_sausage"

ITEM.Name = "Amazing quality zombie sausage"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = "'10/10 Sex toy' - IGN"
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 35
ITEM.Ent = "food_amazing_q_z_sausage"
ITEM.Model = "models/stalker/item/food/sausage.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {["food_rawhead"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )
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


-------------------------------------------------------------------
///////////////////////////////////////////////////////////////////
//////////////LIQUID///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////
-------------------------------------------------------------------
--LIQUID Cup of Coffee                                           --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_coffee"

ITEM.Name = "Cup of Coffee"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 1
ITEM.Small_Parts = 0
ITEM.Chemicals = 5
ITEM.Chance = 100
ITEM.Info = "A good cup of coffee to keep ya goin'.  Needs a Coffee Pot dumb ass."
ITEM.Type = "liquid"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_coffee"
ITEM.Model = "models/props_junk/garbage_coffeemug001a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false


function ITEM.ToolCheck( p )
	if (CLIENT) then
		return false
	end
	if p:HasInInventory("tool_coffeepot") then
		return true
	else
		return false
	end
end

function ITEM.Use( ply )
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 10 )
		
		local endurance = ply:GetTable().Endurance
		if not ( endurance == 100 ) then
			local sound = Sound("npc/ichthyosaur/snap.wav")
			ply:EmitSound( sound )
			ply:GiveEndurance( 8 )
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
-------------------------------------------------------------------
--LIQUID Crude Water                         				     --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_crudewater"

ITEM.Name = "Crude Water"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A plastic bottle filled with some dirty as fuck water. Ebola garanteed."
ITEM.Type = "liquid"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_crudewater"
ITEM.Model = "models/props_junk/garbage_plasticbottle003a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.Use( ply )
	--print("Trying to drink...")
	-- local thirst = ply:GetTable().Thirst
	-- if not ( thirst == 100 ) then
		-- local sound = Sound("npc/ichthyosaur/snap.wav")
		-- ply:EmitSound( sound )
		-- ply:GiveThirst( 25 )
		
		-- local shouldpoison = math.random(1, 100)
		-- if shouldpoison < 20 then
			-- local timerstring = tostring(ply:UniqueID())..tostring(math.random(1,999))
			
			-- timer.Create("poison"..timerstring, 1, 10, function() 
				-- if ply and IsValid(ply) then
					-- if not ply:Alive() then
						-- print("Something went wrong!")
						-- timer.Destroy("poison"..timerstring)
						-- return
					-- end
					-- ply:TakeDamage( 1, ply, ply)
				-- end
			-- end)
		-- end
		-- return true
	-- else
		-- print("Something went wrong!")
		-- return false
	-- end
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--LIQUID  Pure water											 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_pure_water"

ITEM.Name = "Pure Water"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A bottle of refined water, its safe to drink."
ITEM.Type = "liquid"
ITEM.Remove = true
ITEM.Energy = 50
ITEM.Ent = "food_pure_water"
ITEM.Model = "models/props_junk/garbage_plasticbottle003a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.Use( ply )
	print("Trying to drink...")
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 50 )
		return true
	else
		print("Something went wrong!")
		return false
	end
end


function ITEM.ToolCheck( p )
	-- return true
	return {["intm_puretablet"]=1}
end

function ITEM.Create( ply, class, pos )
	print("Created")
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
-------------------------------------------------------------------
--LEVEL 5 Antlion Roast											 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_amazing_q_antlion"

ITEM.Name = "Amazing Antlion roast"
ITEM.ClassSpawn = "Cultivator"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 4
ITEM.Chance = 100
ITEM.Info = ""
ITEM.Type = "five"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_amazing_q_antlion"
ITEM.Model = "models/gibs/antlion_gib_small_2.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.ToolCheck( p )
	return {["tool_skillet"]=0, ["tool_deeppot"]=0, ["food_rawant"]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 35 )
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
-------------------------------------------------------------------
--FOOD PANDA PUFFS		LV3										 --
-------------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_panda"

ITEM.Name = "Panda Puffs"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Made out of real Pandas"
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "food_panda"
ITEM.Model = "models/foodnhouseholditems/pandapuffs.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
--------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_coca_cola"

ITEM.Name = "Coca Cola"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 30
ITEM.Chance = 100
ITEM.Info = "COCK A COLA HUE HUE HUE"
ITEM.Type = "liquid"
ITEM.Remove = true
ITEM.Energy = 50
ITEM.Ent = "food_coca_cola"
ITEM.Model = "models/foodnhouseholditems/colabig.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.Use( ply )
	print("Trying to drink...")
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 50 )
		return true
	else
		print("Something went wrong!")
		return false
	end
end


function ITEM.ToolCheck( p )
	-- return true
	return {[""]=0}
end

function ITEM.Create( ply, class, pos )
	print("Created")
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
---------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_jew_flakes"

ITEM.Name = "Jew Flakes"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Right from the Oven"
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "food_jew_flakes"
ITEM.Model = "models/foodnhouseholditems/kellogscornflakes.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
---------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_cock_pops"

ITEM.Name = "cock'o'pops"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "From Daddy with love"
ITEM.Type = "three"
ITEM.Remove = true
ITEM.Energy = 25
ITEM.Ent = "food_cock_pops"
ITEM.Model = "models/foodnhouseholditems/cokopops.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 25 )
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
---------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_pickle_jar"

ITEM.Name = "Pickle jar"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 35
ITEM.Chance = 100
ITEM.Info = "Looks like someone has Raided babushka's basement"
ITEM.Type = "two"
ITEM.Remove = true
ITEM.Energy = 20
ITEM.Ent = "food_pickle_jar"
ITEM.Model = "models/foodnhouseholditems/picklejar.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = true

function ITEM.ToolCheck( p )
	-- Items Required to construct food.
	return {[""]=1}
end

function ITEM.Use( ply )
	local hunger = ply:GetTable().Hunger
	if not ( hunger == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		
		ply:GiveHunger( 20 )
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
---------------------------------------------------------------
local ITEM = {}


ITEM.ID = "food_boilledwater"

ITEM.Name = "Boiled water"
ITEM.ClassSpawn = "none"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 10
ITEM.Chance = 100
ITEM.Info = "Its just like pure water but filterd in a different way."
ITEM.Type = "liquid"
ITEM.Remove = true
ITEM.Energy = 50
ITEM.Ent = "food_pure_water"
ITEM.Model = "models/props_junk/garbage_plasticbottle003a.mdl"
ITEM.Script = ""
ITEM.Weight = 1
ITEM.ShopHide = false

function ITEM.Use( ply )
	print("Trying to drink...")
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 50 )
		return true
	else
		print("Something went wrong!")
		return false
	end
end

--EOF