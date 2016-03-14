AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel("models/props_junk/garbage_plasticbottle003a.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_junk/garbage_plasticbottle003a.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	local ply = activator
	--print("Trying to drink...")
	local thirst = ply:GetTable().Thirst
	if not ( thirst == 100 ) then
		local sound = Sound("npc/ichthyosaur/snap.wav")
		ply:EmitSound( sound )
		ply:GiveThirst( 25 )
		
		local shouldpoison = math.random(1, 100)
		if shouldpoison < 20 then
			local timerstring = tostring(ply:UniqueID())..tostring(math.random(1,999))
			
			timer.Create("poison"..timerstring, 1, 10, function() 
				if ply and IsValid(ply) then
					if not ply:Alive() then
						--print("You're dead!")
						timer.Destroy("poison"..timerstring)
						return
					end
					ply:TakeDamage( 1, ply, ply)
				end
			end)
		end
		
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
