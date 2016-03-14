AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_lab/reciever_cart.mdl")
function ENT:Initialize()
	self.Entity:SetModel("models/props_lab/reciever_cart.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
	
	self.Power = 0
	self.entOwner = "none"
	self.playbackRate = 0
	
	-- Important power vars!
	self.PowerItem = true
	self.PowerLevel = 0
	self.NetworkContainer = nil
	self.LinkedItems = {}
	self.DirectLinks = {}
	
	self.Entity:NextThink(CurTime() + 1.0)
	self.ToggleTime = CurTime()
	
	self.PowerUsage = -75
	self.Entity:SetNWString("PowerUsage", self.PowerUsage)
end

function ENT:Use( activator, caller )
	local powerShort
	local powerOff
	local powered = false
	if self.DirectLinks != nil then
		for k,v in pairs(self.DirectLinks) do
			if self.DirectLinks[k] != NULL then
				if self.DirectLinks[k].Status == true then
					if self.NetworkContainer.NetPower >= 0-self.PowerUsage then
						if self.Power == 0 then
							activator:ChatPrint("Power on!")
							self:UpdatePower()
							self.PowerLevel = self.PowerUsage
							self.Power = 1
							return true
						end
					else
						powerShort = true
					end
				else
					powerOff = true
				end
			end
		end
	end
	if powerShort == true then
		self.PowerLevel = 0
		self.Power = 0
		self:UpdatePower()
		activator:ChatPrint("Not enough power from power source!")
		return false
	end
	if powerOff == true then
		self.PowerLevel = 0
		self.Power = 0
		self:UpdatePower()
		activator:ChatPrint("Turn on your power source!")
		return false
	end
	if self.Power == 0 then
		self.PowerLevel = 0
		self:UpdatePower()
		activator:ChatPrint("No power source connected...")
		return false
	elseif ( activator:IsPlayer() ) then
		if activator:KeyPressed( IN_USE ) then
			if activator:Team() == TEAM_ENGINEER then
				if activator.Skills["Construction"] != nil then
					if activator.Skills["Construction"] >= 0 then
						local itemList = {"fas2_famas", "fas2_g36c", "fas2_g3", "fas2_deagle", "fas2_m16a2", "fas2_m21", "fas2_m24", "fas2_m3s90", "fas2_m4a1", "fas2_m60", "fas2_mp5sd6", "fas2_pp19", "fas2_sg550", "fas2_sg552", "fas2_sr25"}
						 
						net.Start("pnrp_OpenTShopInterface")
							net.WriteEntity(activator)
							net.WriteEntity(self)
							net.WriteTable(itemList)
						net.Send(activator)
					else
						activator:ChatPrint("Your construction level is too low. Get your ass to level 4, bitch.")
					end
				else
					activator:ChatPrint("Your construction level is too low. Get your ass to level 4, bitch.")
				end
			else
				activator:ChatPrint("Only an engineer can use this! You chose poorly.")
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
