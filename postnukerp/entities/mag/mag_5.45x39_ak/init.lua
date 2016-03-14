AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/wepoonz/ak74_mag.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/wepoonz/ak74_mag.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end