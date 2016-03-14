AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_junk/garbage_plasticbottle003a.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_junk/garbage_plasticbottle003a.mdl")
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

function ENT:Think()
	if self:WaterLevel() == 1 then
		-- local ent = ents.Create( "food_crudewater" )
		-- if ( !IsValid( ent ) ) then return end // Check whether we successfully made an entity, if ( not - bail
		-- ent:SetModel( "models/props_junk/garbage_plasticbottle003a.mdl" )
		-- ent:SetPos(self:GetPos())
		-- ent:Spawn()
		for itemname, item in pairs(PNRP.Items) do --Find crude water in items list
			if "food_crudewater" == itemname then
				item.Create( nil, item.Ent, self:GetPos() ) --Create the crude water
			end
		end
		self:Remove()
	end
end
