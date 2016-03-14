AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/gibs/metal_gib4.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/gibs/metal_gib4.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
	Entity:SetMaterial( 'phoenix_storms/fender_chrome' )
	ent:SetColor( Color( 109, 109, 109, 255 ) )
	ent:SetRenderMode( RENDERMODE_TRANSALPHA )
end

function ENT:Use( activator, caller )
	
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
