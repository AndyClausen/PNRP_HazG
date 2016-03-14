AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')
util.AddNetworkString("smelt_cast_stream")
util.PrecacheModel ("models/props_forest/furnace01.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_forest/furnace01.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	if ( activator:IsPlayer() ) then
		if activator:KeyPressed( IN_USE ) then			 
			net.Start("smelt_cast_menu")
			net.Send(activator)
		end
	end
end
util.AddNetworkString("smelt_cast_menu")

function DoSmelt( )
	local pl = net.ReadEntity()
	local scrap = math.Round(net.ReadDouble())
	local amount = math.Round(scrap / 3)
	--local smallparts = tonumber(decoded[1])
	
	if pl:Team() ~= TEAM_ENGINEER then
		pl:ChatPrint( "You must be a engineer to use a smelter!" )
		return
	end
	
	if pl:GetResource( "Scrap" ) < scrap then
		pl:ChatPrint( "You don't have enough scrap to do this!" )
		return
	end
	if scrap < 3 then
		pl:ChatPrint( "Please use at least 3 scrap!" )
		return
	end
	if pl:GetResource( "Chemicals" ) < chems then
		pl:ChatPrint( "You don't have enough chemicals to do this!" )
	end
	
	--pl:SetResource( "Small_Parts", pl:GetResource( "Small_Parts") - smallparts )
	pl:DecResource( "Scrap", scrap )
	pl:DecResource( "Chemicals", amount )
	pl:IncResource( "Small_Parts", amount )
	
	pl:ChatPrint( "You have smelted "..tostring(scrap).." Scrap and "..tostring(chems).." Chemicals into "..tostring(amount).." Small Parts!" )
end
--datastream.Hook( "smelt_stream", DoSmelt )
net.Receive( "smelt_cast_stream", DoSmelt )

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
