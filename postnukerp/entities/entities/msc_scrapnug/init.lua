AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/gibs/scanner_gib02.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/gibs/scanner_gib02.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	--self.Entity:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
	if not self:GetAmount() then
		self:SetAmount(1)
	end
end

function ENT:Use( activator, caller )
	if self.USED or self.hasMerged then return end
	if ( activator:IsPlayer() ) then
		activator:IncResource( "Scrap", self:GetAmount() )
		self:Remove()
	end
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end

function ENT:Touch(ent)
	-- the .USED var is also used in other mods for the same purpose
	if ent:GetClass() ~= "msc_scrapnug" or self.USED or ent.USED or self.hasMerged or ent.hasMerged then return end

	-- Both hasMerged and USED are used by third party mods. Keep both in.
	ent.USED = true
	ent.hasMerged = true

	ent:Remove()
	self:SetAmount( self:GetAmount() + ent:GetAmount() )
end
