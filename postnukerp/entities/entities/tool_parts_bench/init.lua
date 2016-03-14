AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

util.PrecacheModel ("models/props_combine/combine_lock01.mdl")

function ENT:Initialize()
	self.Entity:SetModel("models/props_combine/combine_lock01.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	self.Entity:PhysWake()
end

function ENT:Use( activator, caller )
	if ( activator:IsPlayer() ) then
		if activator:KeyPressed( IN_USE ) then
			if activator:Team() == TEAM_ENGINEER then
				if activator.Skills["Construction"] != nil then
					if activator.Skills["Construction"] >= 2 then
						local itemList = {"part_9x18_barrel", "part_ak-12_furniture", "part_ak_5.45x39_receiver", "part_ak_5.45x39mm_barral", "part_ak_7.62x39_barrel", "part_ak_7.62x39_receiver", "part_ak_9x18_receiver", "part_ak_bolt", "part_ak_gas_block", "part_ak_mech", "part_ak_plastic_furniture", "part_ak_sights", "part_ak_skeleton_stock", "part_ak_wood_furniture", "part_an-94_flash_hider", "part_an-94_internals", "part_ar-15_furniture", "part_ar-15_grip", "part_ar-15_internals", "part_ar-15_receiver", "part_ar-15_stock", "part_ar_5.62x45_flash_hider", "part_ar_5.62x45mm_barrel", "part_ar_7.62x51_barrel", "part_g36c_body", "part_g36c_furniture", "part_g36c_receiver", "part_g36c_sights", "part_g3a3_furniture", "part_g3a3_mechanism", "part_g3a3_reciever", "part_g3a3_sights", "part_galil_accessories", "part_galil_furniture", "part_galil_internals", "part_galil_receiver", "part_glock_body", "part_glock_mech", "part_glock_slide", "part_ks-23_internal_magazin", "part_ks-23_internals", "part_ks-23_receiver", "part_ks-23_shotgun_pump", "part_ks23_barral", "part_ks23_furniture", "part_m14_internals", "part_m14_parts", "part_m14_wood_frame_metal_receiver", "part_m1911_barrel", "part_m1911_body", "part_m1911_hammer", "part_m1911_internals", "part_m1911_slide", "part_m21_furniture", "part_m21_mag", "part_m24_body", "part_m24_stock", "part_m3_furniture", "part_m3_reciver", "part_m3_sights", "part_mp5_furniture", "part_mp5_gas_block", "part_mp5_internals", "part_mp5_receiver", "part_mp5_sights", "part_pp226_body", "part_pp226_slide", "part_pp266_hammer", "part_raging_bull_cylinder", "part_raging_bull_hammer", "part_raging_bull_internals", "part_raging_bull_synthetic_parts", "part_ragingbull_body", "part_railing", "part_remington_870_furniture", "part_remington_870_inner_mag", "part_remington_870_internals", "part_remington_870_pump", "part_remington_870_receiver", "part_rpk_7.62x39_barrel", "part_rpk_wood_furniture", "part_sg550_furniture", "part_sg550_internals", "part_sg552_furniture", "part_sg_550_reciever", "part_sg_extra_parts", "part_shotgun_mag", "part_shotgun_pump", "part_sks_body", "part_sks_bolt_carrier", "part_sks_internals", "part_sniper_scope", "part_toz-34_barral", "part_toz-34_mechanism", "part_toz-34_reciver", "part_toz-34_wooden_furniture", "part_uni_9x19_barrel", "part_uni_9x19_barrel_sd", "part_uzi_internals", "part_uzi_receiver", "part_uzi_stock"}
						activator:ChatPrint("Level: "..activator.Skills["Construction"])
						net.Start("pnrp_OpenTShopInterface")
							net.WriteEntity(activator)
							net.WriteEntity(self)
							net.WriteTable(itemList)
							net.WriteString("firearmsbench")
						net.Send(activator)
					else
						activator:ChatPrint("Your construction level is too low. Get your ass to level 2, bitch.")
					end
				else
					activator:ChatPrint("Your construction level is too low. Get your ass to level 2, bitch.")
				end
			else
				activator:ChatPrint("Only an engineer can use this! You chose poorly.")
			end
		end
	end
end

-- function DoSmelt( )
	-- local pl = net.ReadEntity()
	-- local smallparts = net.ReadLong()
	-- --local smallparts = tonumber(decoded[1])
	
	-- if pl:Team() ~= 4 then
		-- pl:ChatPrint( "You must be a engineer to use a smelter!" )
		-- return
	-- end
	
	-- if pl:GetResource( "Small_Parts" ) < smallparts then
		-- pl:ChatPrint( "Not enough small parts to do this!" )
		-- return
	-- end
	
	-- local amount = math.Round(smallparts / 3)
	-- --pl:SetResource( "Small_Parts", pl:GetResource( "Small_Parts") - smallparts )
	-- pl:DecResource( "Small_Parts", smallparts )
	-- --pl:DecResource( "Chemicals", chems )
	-- pl:IncResource( "Scrap", amount )
	
	-- pl:ChatPrint( "You have smelted "..tostring(smallparts).." Small Parts into "..tostring(amount).." Scrap!" )
-- end
-- --datastream.Hook( "smelt_stream", DoSmelt )
-- net.Receive( "smelt_stream", DoSmelt )

function ENT:PostEntityPaste(pl, Ent, CreatedEntities)
	self:Remove()
end
