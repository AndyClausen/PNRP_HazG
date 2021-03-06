----------------------------------------------------
---		This file includes health regen and
---		endurance drain and regen outside of items.
---		Also controls the sleep systems (of course).
----------------------------------------------------
local PlayerMeta = FindMetaTable("Player")


function StatCheck()
	for k, v in pairs(player.GetAll()) do
		if IsValid(v) then
			if v.HasLoaded then
				local UpdateTime = 0
				if v:GetTable().IsAsleep then
					UpdateTime = 5
				else
					UpdateTime = 60
				end
				
				--Health checks
				if v:Alive() and CurTime() - v:GetTable().LastHealthUpdate > UpdateTime and not v:IsOutside() then
					local health = v:Health()
					
					if not ( health == v:GetMaxHealth() ) then
						
						v:SetHealth( health + 1 )
						if ( v:GetMaxHealth() < health + 1  ) then
							v:SetHealth( v:GetMaxHealth() )
						end
					end
					v:GetTable().LastHealthUpdate = CurTime()
				end
				
				local updated = false
				
				if lastHealth == nil or lastHealth == 0 or lastHealth<v:Health() then
					lastHealth = 100
					if lastHealth < v:Health() then
						lastHealth = v:Health()
					end
				end
				
				if lastHealth-v:Health() >= 25 then updated = true end
				
				if lastHealth <= 25 and lastHealth >= 10 then
					if lastHealth-v:Health() >= 15 then
						updated = true
					end
				elseif lastHealth <= 10 then
					if lastHealth-v:Health() >= 9 then
						updated = true
					end
				end
				--print("Last health: "..lastHealth.." health: "..v:Health())
				if updated then
					if v:Health() <= 1 then
						v:ChatPrint("You're about to die, you stare into the abyss accepting death [1HP]")
						lastHealth = 1
					elseif v:Health() <= 10 then
						v:ChatPrint("You begin to feel your body give up on you, your vision begins to fade [10HP]")
						lastHealth = 10
					elseif v:Health() <= 25 then
						v:ChatPrint("You feel incredibility weak. You are significantly injured and have multiple broken bones [25HP]")
						lastHealth = 25
					elseif v:Health() <= 50 then
						v:ChatPrint("There are deep cuts all around your body and you feel like you broke some bones [50HP]")
						lastHealth = 50
					elseif v:Health() <= 75 then
						v:ChatPrint("Your entire body hurts and you have some deep cuts [75HP]")
						lastHealth = 75
					end
					updated = false
				end
				
				local runModifier = 0
				
				if v:KeyDown(IN_FORWARD) or v:KeyDown(IN_LEFT) or v:KeyDown(IN_RIGHT) or v:KeyDown(IN_BACK) then
					runModifier = runModifier + 1
					if v:KeyDown(IN_SPEED) then
						runModifier = runModifier + 3
					end
				end
				
				--Gas Updates
				if !v:GetTable().GasUpdate then
					v:GetTable().GasUpdate = CurTime()
				end
				if CurTime() - v:GetTable().GasUpdate > 2 then
					v:GetTable().GasUpdate = CurTime()

					if v:InVehicle() then
						local car = v:GetVehicle()
							
						if !car.gas then car.gas = 0 end
						if !car.tank then car.tank = 8 end
						
						if car.gas <= 0 then 
							car.gas = 0 
							car:Fire("turnoff", 1, 0)
							--check Wire Adv Pod Controller 
							for _,pod in pairs( ents.FindByClass( "gmod_wire_adv_pod" ) ) do
								if (pod:HasPly() and pod:GetPly() == v) then
									pod.Disable = true
								end
							end
						end

						if car.gas > 0 then
							car.gas = car.gas - (runModifier / 60)
							car:Fire("turnon", 1, 0)
							--check Wire Adv Pod Controller 
							for _,pod in pairs( ents.FindByClass( "gmod_wire_adv_pod" ) ) do
								if (pod:HasPly() and pod:GetPly() == v) then
									pod.Disable = false
								end
							end
						end
						
						SendGas( v, car, car.gas, car.tank )
						
					end

				end
				
				local EndUpdateTime 
				if v:Team() == TEAM_WASTELANDER then
					EndUpdateTime = UpdateTime / (1 - (0.5 * (v:GetSkill("Endurance") / 6)))
					if v:GetTable().IsAsleep then
						EndUpdateTime = UpdateTime / 5 
					end
				else
					EndUpdateTime = UpdateTime / (2)
					if v:GetTable().IsAsleep then
						EndUpdateTime = UpdateTime / 5 
					end
				end
				
				--If End and Hunger need to be overidden
				local overide = false
				if v.DevMode or v.AFK then
					overide = true
				end
				
				--Endurance checks
				if v:Alive() and CurTime() - v:GetTable().LastEndUpdate > EndUpdateTime then
					local endur = v:GetTable().Endurance
					if not lastEndurance then local lastEndurance end
					
					if v:GetTable().IsAsleep then
						v:GetTable().Endurance = endur + 2
						//Reset temp var here?
					else
						if not overide then  --Checks for overide
							v:GetTable().Endurance = endur - 1
							endur = v:GetTable().Endurance
							local updated = false
							
							if lastEndurance == nil or lastEndurance == 0 or lastEndurance<endur then
								lastEndurance = 100
							end
	
							if lastEndurance-endur >= 25 then updated = true end
							
							if lastEndurance <= 25 and lastEndurance >= 10 then
								if lastEndurance-endur >= 15 then
									updated = true
								end
							elseif lastEndurance <=10 then
								if lastEndurance-endur >= 9 then
									updated = true
								end
							end
	
							if updated then
								if endur <= 1 then
									v:ChatPrint("You fall onto the floor fighting the urge not to fall asleep [1EN]")
									lastEndurance = 1
								elseif endur <= 10 then
									v:ChatPrint("You feel like your about to lose conciousness, If you carry on like this you will definitely do so [10EN]")
									lastEndurance = 10
								elseif endur <= 25 then
									v:ChatPrint("You feel really weak, You can barely fight the urge to find somewhere to go to sleep [25EN]")
									lastEndurance = 25
								elseif endur <= 50 then
									v:ChatPrint("You feel tired, maybe resting for a bit would not be such a bad idea? [50EN]")
									lastEndurance = 50
								elseif endur <= 75 then
									v:ChatPrint("You begin to feel a bit tired, Maybe if you did not run so many marathons this would not be the case [75EN]")
									lastEndurance = 75
								end
								updated = false
							end
						end
					end
					
					if v:GetTable().Endurance <= 0 then
						v:ChatPrint("You've fallen unconcious due to fatigue!")
						EnterSleep(v)
					elseif v:GetTable().Endurance >= 100 then
						if v:GetTable().IsAsleep then
							ExitSleep(v)
						end
						v:GetTable().Endurance = 100
					end
					v:GetTable().LastEndUpdate = CurTime()
				end
				SendEndurance( v )
				
				--Hunger checks
				local HunUpdateTime 
				HunUpdateTime = 60 / (2 + ( runModifier / 2 ) )
				if v:Alive() and CurTime() - v:GetTable().LastHunUpdate > HunUpdateTime and not (v:GetTable().IsAsleep) then
					local hunger = v:GetTable().Hunger
					if not lastHunger then local lastHunger end
					
					if not overide then --Checks for overide
						v:GetTable().Hunger = hunger - 1
						
						hunger = v:GetTable().Hunger
						local updated = false
						
						if lastHunger == nil or lastHunger == 0 or lastHunger<hunger then
							lastHunger = 100
						end

						if lastHunger-hunger >= 25 then updated = true end
						
						if lastHunger <= 25 and lastHunger >= 10 then
							if lastHunger-hunger >= 15 then
								updated = true
							end
						elseif lastHunger <=10 then
							if lastHunger-hunger >= 9 then
								updated = true
							end
						end

						if updated then
							if hunger <= 1 then
								v:ChatPrint("Your Immune system begins to fail from malnutrition [1HU]")
								lastHunger = 1
							elseif hunger <= 10 then
								v:ChatPrint("Flies begin to land on your face. It's reminding you of those starving Ethiopian kids you used to see on TV [10HU]")
								lastHunger = 10
							elseif hunger <= 25 then
								v:ChatPrint("Sometimes I dream about cheese, you know that pre-war stuff. I would kill for some of that shit [25HU]")
								lastHunger = 25
							elseif hunger <= 50 then
								v:ChatPrint("You feel like you would eat an Antlion alive [50HU]")
								lastHunger = 50
							elseif hunger <= 75 then
								v:ChatPrint("You mumble to yourself: 'Some beans would be real good right now' [75HU]")
								lastHunger = 75
							end
							updated = false
						end
						
						if v:GetTable().Hunger <= 0 then
							v:GetTable().Hunger = 0
							
							v:SetHealth( v:Health() - 5 )
							if v:Health() <= 0 then
								timer.Create("kill_timer",  1, 1, function()
									v:Kill()
								end )
							end
						end
					end
					v:GetTable().LastHunUpdate = CurTime()
				end
				SendHunger( v )
				
				--Thirst checks
				local ThirstUpdateTime 
				ThirstUpdateTime = 30 / (2 + ( runModifier / 2 ) )
				if v:Alive() and CurTime() - v:GetTable().LastThirstUpdate > ThirstUpdateTime and not (v:GetTable().IsAsleep) then
					local thirst = v:GetTable().Thirst
					if not lastThirst then local lastThirst end
					
					if not overide then --Checks for overide
						v:GetTable().Thirst = thirst - 1
						
						thirst = v:GetTable().Thirst
						local updated = false
						
						if lastThirst == nil or lastThirst == 0 or lastThirst<thirst then
							lastThirst = 100
						end

						if lastThirst-thirst >= 25 then updated = true end
						
						if lastThirst <= 25 and lastThirst >= 10 then
							if lastThirst-thirst >= 15 then
								updated = true
							end
						elseif lastThirst <=10 then
							if lastThirst-thirst >= 9 then
								updated = true
							end
						end

						if updated then
							if thirst <= 1 then
								v:ChatPrint("Your body is beginning to fail on you [1TH]")
								lastThirst = 1
							elseif thirst <= 10 then
								v:ChatPrint("You're so thirsty you would lick the sweat from a hookers asscrack [10TH]")
								lastThirst = 10
							elseif thirst <= 25 then
								v:ChatPrint("I wonder if I could drink my own piss mate, like Bear mother fucking Grylls [25TH]")
								lastThirst = 25
							elseif thirst <= 50 then
								v:ChatPrint("You're as thirsty as a beta is for a Onahole [50TH]")
								lastThirst = 50
							elseif thirst <= 75 then
								v:ChatPrint("You feel like now would be a good time to chug a bottle of water after that run [75TH]")
								lastThirst = 75
							end
							updated = false
						end
						
						if v:GetTable().Thirst <= 0 then
							v:GetTable().Thirst = 0
							
							v:SetHealth( v:Health() - 5 )
							if v:Health() <= 0 then
								timer.Create("kill_timer",  1, 1, function()
									v:Kill()
								end )
							end
						end
					end
					v:GetTable().LastThirstUpdate = CurTime()
				end
				SendThirst( v )
			end
		end
	end
end
hook.Add("Think", "StatCheck", StatCheck)

-----------------------------
---	Exit/Enter Sleep
-----------------------------
function EnterSleep ( ply )
	local IsSleeping = ply:GetTable().IsAsleep
	local curEndurance = ply:GetTable().Endurance
	
	if ply.AFK then
		ply:ChatPrint("You cannot sleep while AFK.")
		return
	end
	
	if IsSleeping == false and curEndurance < 100 then
		if not ply:GetTable().SleepSound then
			ply:GetTable().SleepSound = CreateSound(ply, "npc/ichthyosaur/water_breath.wav")
		end
		ply:GetTable().IsAsleep = true
		ply:GetTable().SleepGodCheck = true
		ply:GetTable().SleepSound:PlayEx(0.10, 100)
		
		
		if ply:InVehicle() then
			ply:Freeze(true)
		else
			ply:Freeze(true)
			ply:CreateRagdoll()
			ply:SetRenderMode(1)
			ply:SetColor( Color(0,0,0,0) )
			local ragdoll = ply:GetRagdollEntity()
			ply.SleepRagdoll = ragdoll
			ply.OldColGroup = ply:GetCollisionGroup()
			ply:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			
			if ply:HasWeapon( "gmod_rp_hands" ) then
				ply:SelectWeapon( "gmod_rp_hands")
			end
			-- ply:GetTable().WeaponsForSleep = {}
			-- ply:GetTable().ClipsForSleep = {}
			-- ply:GetTable().AmmoForSleep = {}
			-- for k,v in pairs(ply:GetWeapons( )) do
				-- ply:GetTable().WeaponsForSleep[k] = v:GetClass()
				-- ply:GetTable().ClipsForSleep[k] = v:Clip1()
			-- end
			
			-- for i = 1, 22 do
				-- ply:GetTable().AmmoForSleep[i] = ply:GetAmmoCount(PNRP.ConvertAmmoType(i))
			-- end
			
			-- local ragdoll = ents.Create("prop_ragdoll")
			-- ragdoll:SetPos(ply:GetPos())
			-- ragdoll:SetAngles(Angle(0,ply:GetAngles().Yaw,0))
			-- ragdoll:SetModel(ply:GetModel())
			-- ragdoll:Spawn()
			-- ragdoll:Activate()
			-- ragdoll:SetVelocity(ply:GetVelocity())
			-- --ragdoll.OwnerINT = player:EntIndex()
			-- ragdoll:GetTable().PrevPos = ply:GetPos()
			
			-- ply:StripWeapons()
			-- ply:Spectate(OBS_MODE_CHASE)
			-- ply:SpectateEntity(ragdoll)
			-- ply:GetTable().SleepRagdoll = ragdoll
			-- ragdoll:GetTable().OwnerID = ply:UniqueID()
			-- ragdoll.Owner = player
			-- ragdoll:SetNetworkedString("Owner", ply:Nick())
		end
		
		net.Start("sleepeffects")
			net.WriteBit(true)
		net.Send(ply)
	end
end
util.AddNetworkString("sleepeffects")

function EnterSleepCmd( ply )
	if not ply:IsOutside() then
		if not ply:Crouching() then
			if ply:GetTable().Endurance < 80 then
				EnterSleep( ply )
			else
				ply:ChatPrint("You aren't tired enough to sleep!")
			end
		else
			ply:ChatPrint("You cannot sleep while crouched!")
		end
	else
		ply:ChatPrint("You must be inside to sleep!")
	end
end
concommand.Add( "pnrp_sleep", EnterSleepCmd )
PNRP.ChatConCmd( "/sleep", "pnrp_sleep" )

function ExitSleep( ply )
	local IsSleeping = ply:GetTable().IsAsleep
	local curEndurance = ply:GetTable().Endurance
	--ply:GetTable().SleepSound
	if IsSleeping == true then
		ply:GetTable().IsAsleep = false
		if ply:GetTable().SleepSound then
			ply:GetTable().SleepSound:Stop()
		end
		if ply:InVehicle() then
			ply:Freeze(false)
		else
			ply:Freeze(false)
			ply:SetRenderMode(0)
			ply:SetColor( Color(255,255,255,255) )
			ply.SleepRagdoll:Remove()
			ply:SetCollisionGroup(ply.OldColGroup)
			-- local ragdoll = ply:GetTable().SleepRagdoll
			-- local health = ply:Health()
			-- local armor = ply:Armor()
			-- local hunger = ply:GetTable().Hunger
			-- local thirst = ply:GetTable().Thirst
			-- local oldPos = false
			
			-- local entsearch = ents.FindInSphere( ragdoll:GetTable().PrevPos , 100 )
			
			-- for k,v in pairs(entsearch) do
				-- if v:GetClass() == "prop_ragdoll" then
					-- oldPos = true
				-- end
			-- end
			
			-- ply:Spawn()
			-- ply:SetHealth(health)
			-- ply:SetArmor(armor)
			-- ply:GetTable().Hunger = hunger
			-- ply:GetTable().Thirst = thirst
			-- ply:GetTable().SleepGodCheck = false
			-- if oldPos then
				-- ply:SetPos(ragdoll:GetTable().PrevPos)
			-- else
				-- ply:SetPos(ragdoll:GetPos())
			-- end
			
			-- ply:SetAngles(Angle(0, ragdoll:GetPhysicsObjectNum(10):GetAngles().Yaw, 0))
			-- ply:UnSpectate()
			-- ply:StripWeapons()
			-- ragdoll:Remove()
			-- --Runs this a little after spawn to help with lag issues
			-- ply:ChatPrint("Picking up gear...")
			-- timer.Create(ply:UniqueID()..tostring(os.time())..tostring(os.date()), 3, 1, function()  
				-- if ply:GetTable().WeaponsForSleep then
					-- for k,v in pairs(ply.WeaponsForSleep) do
						-- local currentWep = ply:Give(v)
						-- currentWep:SetClip1(ply:GetTable().ClipsForSleep[k])
					-- end
					-- ply:StripAmmo()
					-- for i = 1, 22 do
						-- ply:GiveAmmo(ply:GetTable().AmmoForSleep[i], PNRP.ConvertAmmoType(i), false)
					-- end
									
					-- local cl_defaultweapon = ply:GetInfo( "cl_defaultweapon" )
					-- if ( ply:HasWeapon( cl_defaultweapon )  ) then
						-- ply:SelectWeapon( cl_defaultweapon ) 
					-- end
				
				-- else
					-- GAMEMODE:PlayerLoadout(player)
				-- end 
				
				-- --Checks to make sure the player has the default weapons
				-- for _,v in pairs(PNRP.DefWeps) do
					-- if !ply:HasWeapon( v ) then
						-- ply:Give( v )
					-- end
				-- end
				
				-- ply:ConCommand("pnrp_save")
				-- ply:ChatPrint("Timer has run")
			-- end)
		end
		
		net.Start("sleepeffects")
			net.WriteBit(false)
		net.Send(ply)
	end
end

function ExitSleepCmd( ply )
	if ply:GetTable().IsAsleep then
		ExitSleep( ply )
	else
		ply:ChatPrint("You're not asleep!")
	end
end
concommand.Add( "pnrp_wake", ExitSleepCmd )
PNRP.ChatConCmd( "/wake", "pnrp_wake" )

--[[local function DamageSleepers(ent, inflictor, attacker, amount, dmginfo)
	local ownerid = ent:GetTable().OwnerID
	if ownerid and ownerid ~= 0 then
		for k,v in pairs(player.GetAll()) do 
			if v:UniqueID() == ownerid then
				if attacker == GetWorldEntity() then
					amount = 1
					dmginfo:ScaleDamage(0.01)
				end
				if attacker:IsPlayer() and not (dmginfo:IsBulletDamage() or dmginfo:IsExplosionDamage()) then
					amount = 0
					dmginfo:ScaleDamage(0)
				end
				v:SetHealth(v:Health() - amount)
				if v:Health() <= 0 and v:Alive() then
					ExitSleep(v)
					v:SetHealth(1)
					v:TakeDamage(1, inflictor, attacker)
					if v:GetTable().SleepSound then
						v:GetTable().SleepSound:Stop()
					end
					ent:Remove()
				end
			end
		end
	end
end
hook.Add("EntityTakeDamage", "Sleepdamage", DamageSleepers)]]--

------------------------------
-- Variable sends
------------------------------

function SendEndurance( ply )
	net.Start("endurancemsg")
		net.WriteDouble(ply:GetTable().Endurance)
	net.Send(ply)
end
util.AddNetworkString("endurancemsg")

function SendHunger( ply )
	net.Start("hungermsg")
		net.WriteDouble(ply:GetTable().Hunger)
	net.Send(ply)
end
util.AddNetworkString("hungermsg")

function SendThirst( ply )
	net.Start("thirstmsg")
		net.WriteDouble(ply:GetTable().Thirst)
	net.Send(ply)
end
util.AddNetworkString("thirstmsg")

function PlayerMeta:GiveEndurance( amount )
	self:GetTable().Endurance = self:GetTable().Endurance + amount
	if self:GetTable().Endurance > 100 then 
		self:GetTable().Endurance = 100
	end
	SendEndurance( self )
end

function PlayerMeta:TakeEndurance( amount )
	self:GetTable().Endurance = self:GetTable().Endurance - amount
	if self:GetTable().Endurance < 0 then
		self:GetTable().Endurance = 0
	end
	SendEndurance( self )
end

function PlayerMeta:GiveHunger( amount )
	self:GetTable().Hunger = self:GetTable().Hunger + amount
	if self:GetTable().Hunger > 100 then
		self:GetTable().Hunger = 100
	end
	SendHunger( self )
end

function PlayerMeta:TakeHunger( amount )
	self:GetTable().Hunger = self:GetTable().Hunger - amount
	if self:GetTable().Hunger < 0 then
		self:GetTable().Hunger = 0
	end
	SendHunger( self )
end

function PlayerMeta:GiveThirst( amount )
	self:GetTable().Thirst = self:GetTable().Thirst + amount
	if self:GetTable().Thirst > 100 then
		self:GetTable().Thirst = 100
	end
	SendThirst( self )
end

function PlayerMeta:TakeThirst( amount )
	self:GetTable().Thirst = self:GetTable().Thirst - amount
	if self:GetTable().Thirst < 0 then
		self:GetTable().Thirst = 0
	end
	SendThirst( self )
end

function EndDebug( ply )
	ply:ChatPrint("Your endurance is at "..tostring(ply:GetTable().Endurance)..".")
end
concommand.Add( "pnrp_enddebug", EndDebug )

function SendGas( ply, car, gas, tank )
	net.Start("sndCarGas")
		net.WriteEntity(ply)
		net.WriteEntity(car)
		net.WriteDouble(gas)
		net.WriteDouble(tank)
	net.Send(ply)
end
util.AddNetworkString("sndCarGas")
