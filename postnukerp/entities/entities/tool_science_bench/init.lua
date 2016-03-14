AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_combine/combine_interface001.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_combine/combine_interface001.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	if ( activator:IsPlayer() ) then
		if activator:KeyPressed( IN_USE ) then
			if activator:Team() == TEAM_SCIENCE then
				if activator.Skills["Animal Husbandry"] != nil then
					if activator.Skills["Animal Husbandry"] >= 2 then
						local itemList = {"m9k_combinesniper", "weapon_pulsemg","weapon_pnrp_pulserifle","item_ammo_ar2","intm_multitool","intm_ramcard","intm_resistor","intm_powersupply","intm_graphicscard","intm_cpu","intm_chip","intm_cddrive","intm_motherboard","intm_transistors"}
						 
						net.Start("pnrp_OpenTShopInterface")
							net.WriteEntity(activator)
							net.WriteEntity(self)
							net.WriteTable(itemList)
						net.Send(activator)
					else
						activator:ChatPrint("Your Animal Husbandry level is too low. Get your ass to level 2, bitch.")
					end
				else
					activator:ChatPrint("Your Animal Husbandry level is too low. Get your ass to level 2, bitch.")
				end
			else
				activator:ChatPrint("Only an Scientist can use this! You chose poorly.")
			end
		end
	end
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end

-- function DoSmelt( )
	-- local pl = net.ReadEntity()
	-- local smallparts = net.ReadLong()
	-- --local smallparts = tonumber(decoded[1])
	
	-- if pl:Team() ~= 4 then
		-- pl:ChatPrint( "You must be a engineer to use a smelter!" )
		-- return
	-- end
	
	-- if pl:GetResource( "Small_Parts" ) < smallparts then
		-- pl:ChatPrint( "Not enough small parts to do this!" )
		-- return
	-- end
	
	-- local amount = math.Round(smallparts / 3)
	-- --pl:SetResource( "Small_Parts", pl:GetResource( "Small_Parts") - smallparts )
	-- pl:DecResource( "Small_Parts", smallparts )
	-- --pl:DecResource( "Chemicals", chems )
	-- pl:IncResource( "Scrap", amount )
	
	-- pl:ChatPrint( "You have smelted "..tostring(smallparts).." Small Parts into "..tostring(amount).." Scrap!" )
-- end
-- --datastream.Hook( "smelt_stream", DoSmelt )
-- net.Receive( "smelt_stream", DoSmelt )
