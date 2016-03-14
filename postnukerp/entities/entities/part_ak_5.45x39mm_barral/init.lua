AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_junk/cardboard_box004a.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_junk/cardboard_box004a.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )		-- ignore
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )	-- this
	self.Entity:SetSolid( SOLID_VPHYSICS )			-- shit
	self.Entity:PhysWake()							-- here
end

function ENT:Use( activator, caller ) -- What happens if a player presses 'e' on it?
	
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities) -- This function checks if the item is spawned with a duplicator
	self:Remove() -- This removes the item, if the function is called (exploit-protection)
end
