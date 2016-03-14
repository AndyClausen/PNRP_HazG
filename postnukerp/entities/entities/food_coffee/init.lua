AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_junk/garbage_coffeemug001a.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_junk/garbage_coffeemug001a.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	
 
	if ( activator:IsPlayer() ) then
		
		local thirst = activator:GetTable().Thirst
		local endurance = activator:GetTable().Endurance
		
		if ( thirst != 100 ) then
			local sound = Sound("npc/ichthyosaur/snap.wav")
			self.Entity:EmitSound( sound )
			
			activator:GiveThirst( 10 )
			if ( endurance != 100 ) then
				activator:GiveEndurance( 8 )
			end
			self.Entity:Remove()
		end
 
	end
 
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
