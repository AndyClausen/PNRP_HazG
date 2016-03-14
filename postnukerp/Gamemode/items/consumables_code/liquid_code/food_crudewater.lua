local ITEM = {}


ITEM.ID = "food_crudewater"

ITEM.Name = "Crude Water"
ITEM.ClassSpawn = "all"
ITEM.Scrap = 0
ITEM.Small_Parts = 0
ITEM.Chemicals = 0
ITEM.Chance = 100
ITEM.Info = "A plastic bottle filled with a liquid, it does look to good to drink though."
ITEM.Type = "one"
ITEM.Remove = true
ITEM.Energy = 10
ITEM.Ent = "food_crudewater"
ITEM.Model = "models/props_junk/garbage_plasticbottle003a.mdl"
ITEM.Script = ""
ITEM.Weight = 1

function ITEM.Use( ply )
	print("Trying to drink...")
	-- local thirst = ply:GetTable().Thirst
	-- if not ( thirst == 100 ) then
		-- local sound = Sound("npc/ichthyosaur/snap.wav")
		-- ply:EmitSound( sound )
		-- ply:GiveThirst( 25 )
		
		-- local shouldpoison = math.random(1, 100)
		-- if shouldpoison < 20 then
			-- local timerstring = tostring(ply:UniqueID())..tostring(math.random(1,999))
			
			-- timer.Create("poison"..timerstring, 1, 10, function() 
				-- if ply and IsValid(ply) then
					-- if not ply:Alive() then
						-- print("Something went wrong!")
						-- timer.Destroy("poison"..timerstring)
						-- return
					-- end
					-- ply:TakeDamage( 1, ply, ply)
				-- end
			-- end)
		-- end
		-- return true
	-- else
		-- print("Something went wrong!")
		-- return false
	-- end
end

function ITEM.ToolCheck( p )
	return true
end

function ITEM.Create( ply, class, pos )
	print("Created")
	local ent = ents.Create(class)
	ent:SetAngles(Angle(0,0,0))
	ent:SetPos(pos)
	ent:Spawn()
end

PNRP.AddItem(ITEM)
