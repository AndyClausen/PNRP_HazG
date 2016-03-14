AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/foodnhouseholditems/colabig.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/foodnhouseholditems/colabig.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	local ply = activator
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 50 )
		
		local pos = self:GetPos()
		local newEnt = ents.Create("intm_water_bottle_empty")
		newEnt:SetAngles(Angle(0,0,0))
		newEnt:SetPos(pos)
		newEnt:Spawn()
		
		self:Remove()
		return true
	else
		ply:ChatPrint("You're not thirsty!")
		return false
	end
end

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
