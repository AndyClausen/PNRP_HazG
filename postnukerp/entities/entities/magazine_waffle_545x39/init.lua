AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/items/sakomag.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/items/sakomag.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

ENT.InUse = false
function ENT:Use( activator, ply )
	if self.InUse then
		--ply:ChatPrint("Magazine is in use!")
		return
	end
	self.InUse = true
	PNRP.OpenMinigame( self, ply, "magload", {"fas2_ammo_545x39", ply:GetAmmoCount("fas2_ammo_545x39"), "magazine_waffle_5.45x39"} )
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
