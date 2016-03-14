AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_junk/garbage_milkcarton002a.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_junk/garbage_milkcarton002a.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	
 
	if ( activator:IsPlayer() ) then
		
		local hunger = activator:GetTable().Hunger
		local thirst = activator:GetTable().Thirst
		local health = activator:Health()
		
		if ( hunger != 100 ) or ( thirst != 100) then
			local sound = Sound("npc/ichthyosaur/snap.wav")
			self.Entity:EmitSound( sound )
			
			if ( hunger!= 100) then
				activator:GiveHunger( 10 )
			end
			if ( thirst!= 100) then
				activator:GiveThirst( 10 )
			end
			
			if not ( health == activator:GetMaxHealth() ) then
				activator:SetHealth( health + 5 )
				if ( activator:GetMaxHealth() < health + 5  ) then
					activator:SetHealth( activator:GetMaxHealth() )
				end
			end
			
			self.Entity:Remove()
		end
 
	end
 
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
