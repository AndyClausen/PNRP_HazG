ENT.Type 			= "anim"
ENT.Base 			= "base_gmodentity"
 
ENT.PrintName		= "tool_one_use_battary"
ENT.Author			= "H.A.Z.G"
ENT.Contact			= ""  --fill in these if you want it to be in the spawn menu
ENT.Purpose			= "A one use battery used to power a variety of objects. "
ENT.Instructions	= "Start it and hope for the best!"

ENT.AutomaticFrameAdvance = true 
 
ENT.Spawnable			= false
ENT.AdminSpawnable		= false

---------------------------------------------------------
--   Name: OnRemove
--   Desc: Called just before entity is deleted
---------------------------------------------------------

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
 
	self.AutomaticFrameAdvance = bUsingAnim
 
end
