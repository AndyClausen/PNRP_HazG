AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_c17/metalpot001a.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_c17/metalpot001a.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	if ( activator:IsPlayer() ) then
		if activator:KeyPressed( IN_USE ) then
			if activator:Team() == TEAM_CULTIVATOR then
				if activator.Skills["Cooking"] != nil then
					if activator.Skills["Cooking"] >= 0 then
						local itemList = {"food_boilledwater"}
						activator:ChatPrint("Level: "..activator.Skills["Cooking"])
						net.Start("pnrp_OpenTShopInterface")
							net.WriteEntity(activator)
							net.WriteEntity(self)
							net.WriteTable(itemList)
						net.Send(activator)
					end
				end
			else
				activator:ChatPrint("Only a cultivator can use this! You chose poorly.")
			end
		end
	end
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
