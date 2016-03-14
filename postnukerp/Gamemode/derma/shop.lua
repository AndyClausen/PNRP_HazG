--Build Shop Menu

local shop_frame
shopFrameCK = false
local myInventory = {}

function buy_shop()
	--Stops the multi window exploit
	if shopFrameCK then return end 
	shopFrameCK = true
	myInventory = net.ReadTable()
	
	PNRP.RMDerma()
	shop_frame = vgui.Create( "DFrame" )
		shop_frame:SetSize( 710, 720 ) --Set the size Extra 40 must be from the top bar
		--Set the window in the middle of the players screen/game window
		shop_frame:SetPos(ScrW() / 2 - shop_frame:GetWide() / 2, ScrH() / 2 - shop_frame:GetTall() / 2) 
		shop_frame:SetTitle( "Shop Menu" ) --Set title
		shop_frame:SetVisible( true )
		shop_frame:SetDraggable( true )
		shop_frame:ShowCloseButton( true )
		shop_frame:MakePopup()
		shop_frame.Paint = function() 
			surface.SetDrawColor( 50, 50, 50, 0 )
		end
		PNRP.AddMenu(menu)
		
		local screenBG = vgui.Create("DImage", shop_frame)
			screenBG:SetImage( "VGUI/gfx/pnrp_screen_1b.png" )
			screenBG:SetSize(shop_frame:GetWide(), shop_frame:GetTall())
		PNRP.buildMenu(shop_frame)
	
	shophelp_frame = vgui.Create( "DFrame" )
		shophelp_frame:SetParent( shop_frame )
		shophelp_frame:SetSize( 252, 435 )
		shophelp_frame:SetPos(ScrW() / 2 + shop_frame:GetWide() / 2, ScrH() / 2 - shop_frame:GetTall() / 2) 
		shophelp_frame:SetTitle( "Color Help" ) --Set title
		shophelp_frame:SetVisible( true )
		shophelp_frame:SetDraggable( false )
		shophelp_frame:ShowCloseButton( false )
		shophelp_frame:MakePopup()
		shophelp_frame.Paint = function() 
			surface.SetDrawColor( 50, 50, 50, 0 )
		end
		
		local screenBG = vgui.Create("DImage", shophelp_frame)
			screenBG:SetImage( "VGUI/gfx/pnrp_shophelp.png" )
			screenBG:SetSize(shophelp_frame:GetWide(), shophelp_frame:GetTall())
		
	local PropertySheet = vgui.Create( "DPropertySheet" )
			PropertySheet:SetParent( shop_frame )
			PropertySheet:SetPos( 40, 60 )
			PropertySheet:SetSize( shop_frame:GetWide() - 85 , shop_frame:GetTall() - 105 )
			PropertySheet:SetFadeTime( 0.5 )
			PropertySheet.Paint = function() 
				surface.SetDrawColor( 50, 50, 50, 0 )
			end

			
			local weaponPanel = PNRP.build_List("weapon", shop_frame, PropertySheet)
			local magPanel = PNRP.build_List("magazine", shop_frame, PropertySheet)
			local ammoPanel = PNRP.build_List("ammo", shop_frame, PropertySheet)
			local medicalPanel = PNRP.build_List("medical", shop_frame, PropertySheet)
			local foodPanel = PNRP.build_List("food", shop_frame, PropertySheet)
--			local builtitemsPanel = PNRP.build_List("build", shop_frame, PropertySheet)
			local junkPanel = PNRP.build_List("junk", shop_frame, PropertySheet)
			local vehiclePanel = PNRP.build_List("vehicle", shop_frame, PropertySheet)
			local toolsPanel = PNRP.build_List("tool", shop_frame, PropertySheet)
			local booksPanel = PNRP.build_List("book", shop_frame, PropertySheet)
			local partsPanel = PNRP.build_List("part", shop_frame, PropertySheet)
			local miscPanel = PNRP.build_List("misc", shop_frame, PropertySheet)
						
			PropertySheet:AddSheet( "Weapons", weaponPanel, "gui/icons/bomb.png", false, false, "Build Weapons" )
			PropertySheet:AddSheet( "Magazines (BETA)", magPanel, "gui/icons/box.png", false, false, "UNDER CONSTRUCTION" )
			PropertySheet:AddSheet( "Ammo", ammoPanel, "gui/icons/box.png", false, false, "Create Ammo" )
			PropertySheet:AddSheet( "Medical", medicalPanel, "gui/icons/heart.png", false, false, "Medical Items" )
			PropertySheet:AddSheet( "Food and Drink", foodPanel, "gui/icons/cup_add.png", false, false, "Food and Drink Items" )
--			PropertySheet:AddSheet( "Build Items", builtitemsPanel, "gui/icons/palette", false, false, "Building Materials" )
			PropertySheet:AddSheet( "Junk", junkPanel, "gui/icons/anchor.png", false, false, "More Building Materials" )
			PropertySheet:AddSheet( "Vehicles", vehiclePanel, "gui/icons/car.png", false, false, "Create Vehicles" )
			PropertySheet:AddSheet( "Tools", toolsPanel, "gui/icons/wrench.png", false, false, "Make Tools" )
			PropertySheet:AddSheet( "Books", booksPanel, "gui/silkicons/table_edit.png", false, false, "Create or buy books - Still in Development" )
			PropertySheet:AddSheet( "Parts", partsPanel, "gui/icons/cog.png", false, false, "Got to find them all." )
			PropertySheet:AddSheet( "Misc", miscPanel, "gui/icons/bug.png", false, false, "Pets, paper, etc..." )
			
	function shop_frame:Close()                  
		shopFrameCK = false                  
		self:SetVisible( false )                  
		self:Remove()          
	end 
end

function PNRP.build_List(itemtype, parent_frame, PropertySheet)
	function GetItemColor( item )
		if ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminCreateAll") == 1 then
			return Color(38,189,0,80)
		end
		
		local toolcheck = item.ToolCheck( )
		local enough = false
		
		if type(toolcheck) == "table" then
			for tool,v in pairs(toolcheck) do
				if not myInventory[tool] then
					toolcheck = false
				end
			end
		end
		if toolcheck != false then toolcheck = true end
		
		if GetResource("Scrap") >= item.Scrap and GetResource("Chemicals") >= item.Chemicals and GetResource("Small_Parts") >= item.SmallParts then
			enough = true
		elseif ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminNoCost") == 1 then 
			enough = true
		else
			enough = false
		end
		
		if item.ToolOnly != nil then
			return Color(178,0,255,80)
		elseif item.ShopHide then
			return Color(0,0,0,100)
		elseif team.GetName(ply:Team()) ~= item.ClassSpawn and item.ClassSpawn ~= "All" then
			return Color(0,38,255,80)
		elseif !enough and !toolcheck then
			return Color(147,0,0,80)
		elseif !enough then
			return Color(255,216,0,80)
		elseif !toolcheck then
			return Color(255,106,0,80)
		else
			return Color(38,189,0,80)
		end
		
	end
	if itemtype == "weapon" then
		
		local ply = LocalPlayer()
		local sc = 0
		local sp = 0
		local ch = 0
		
		local textColor = Color(200,200,200,255)
		local dListBKColor = Color(50,50,50,255)
		
		local pnlList = vgui.Create("DPanelList", PropertySheet)
			pnlList:SetPos(20, 80)
			pnlList:SetSize(parent_frame:GetWide() - 60, parent_frame:GetTall() - 120)
			pnlList:EnableVerticalScrollbar(true) 
			pnlList:EnableHorizontal(false) 
			pnlList:SetSpacing(1)
			pnlList:SetPadding(10)
			pnlList.Paint = function()
			--	draw.RoundedBox( 8, 0, 0, pnlList:GetWide(), pnlList:GetTall(), Color( 50, 50, 50, 255 ) )
			end
		
		--pistol
		local pistolCategory = vgui.Create("DCollapsibleCategory", pnlList)
			pistolCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			pistolCategory:SetExpanded(0) -- Expanded when popped up
			pistolCategory:SetLabel("Pistols")
		pnlList:AddItem(pistolCategory)
		
		local pistolList = vgui.Create("DPanelList")
		pistolList:SetAutoSize(true)
		pistolList:SetSpacing(5)
		pistolList:EnableHorizontal(false)
		pistolList:EnableVerticalScrollbar(false)
		pistolCategory:SetContents(pistolList)
		
		--smg
		local smgCategory = vgui.Create("DCollapsibleCategory", pnlList)
			smgCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			smgCategory:SetExpanded(0) -- Expanded when popped up
			smgCategory:SetLabel("Submachine Guns")
		pnlList:AddItem(smgCategory)
		
		local smgList = vgui.Create("DPanelList")
		smgList:SetAutoSize(true)
		smgList:SetSpacing(5)
		smgList:EnableHorizontal(false)
		smgList:EnableVerticalScrollbar(false)
		smgCategory:SetContents(smgList)
		
		--shotgun
		local shotgunCategory = vgui.Create("DCollapsibleCategory", pnlList)
			shotgunCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			shotgunCategory:SetExpanded(0) -- Expanded when popped up
			shotgunCategory:SetLabel("Shotguns")
		pnlList:AddItem(shotgunCategory)
		
		local shotgunList = vgui.Create("DPanelList")
		shotgunList:SetAutoSize(true)
		shotgunList:SetSpacing(5)
		shotgunList:EnableHorizontal(false)
		shotgunList:EnableVerticalScrollbar(false)
		shotgunCategory:SetContents(shotgunList)
		
		--battle
		local battleCategory = vgui.Create("DCollapsibleCategory", pnlList)
			battleCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			battleCategory:SetExpanded(0) -- Expanded when popped up
			battleCategory:SetLabel("Battle Rifles")
		pnlList:AddItem(battleCategory)
		
		local battleList = vgui.Create("DPanelList")
		battleList:SetAutoSize(true)
		battleList:SetSpacing(5)
		battleList:EnableHorizontal(false)
		battleList:EnableVerticalScrollbar(false)
		battleCategory:SetContents(battleList)
		
		--assault
		local assaultCategory = vgui.Create("DCollapsibleCategory", pnlList)
			assaultCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			assaultCategory:SetExpanded(0) -- Expanded when popped up
			assaultCategory:SetLabel("Assault Rifles")
		pnlList:AddItem(assaultCategory)
		
		local assaultList = vgui.Create("DPanelList")
		assaultList:SetAutoSize(true)
		assaultList:SetSpacing(5)
		assaultList:EnableHorizontal(false)
		assaultList:EnableVerticalScrollbar(false)
		assaultCategory:SetContents(assaultList)
		
		--sniper
		local sniperCategory = vgui.Create("DCollapsibleCategory", pnlList)
			sniperCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			sniperCategory:SetExpanded(0) -- Expanded when popped up
			sniperCategory:SetLabel("Snipers")
		pnlList:AddItem(sniperCategory)
		
		local sniperList = vgui.Create("DPanelList")
		sniperList:SetAutoSize(true)
		sniperList:SetSpacing(5)
		sniperList:EnableHorizontal(false)
		sniperList:EnableVerticalScrollbar(false)
		sniperCategory:SetContents(sniperList)
		
		--light machine guns
		local lmgCategory = vgui.Create("DCollapsibleCategory", pnlList)
			lmgCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			lmgCategory:SetExpanded(0) -- Expanded when popped up
			lmgCategory:SetLabel("Light Machine Guns")
		pnlList:AddItem(lmgCategory)
		
		local lmgList = vgui.Create("DPanelList")
		lmgList:SetAutoSize(true)
		lmgList:SetSpacing(5)
		lmgList:EnableHorizontal(false)
		lmgList:EnableVerticalScrollbar(false)
		lmgCategory:SetContents(lmgList)
		
		--explosives
		local explosivesCategory = vgui.Create("DCollapsibleCategory", pnlList)
			explosivesCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			explosivesCategory:SetExpanded(0) -- Expanded when popped up
			explosivesCategory:SetLabel("Explosives")
		pnlList:AddItem(explosivesCategory)
		
		local explosivesList = vgui.Create("DPanelList")
		explosivesList:SetAutoSize(true)
		explosivesList:SetSpacing(5)
		explosivesList:EnableHorizontal(false)
		explosivesList:EnableVerticalScrollbar(false)
		explosivesCategory:SetContents(explosivesList)
		
		--melee
		local meleeCategory = vgui.Create("DCollapsibleCategory", pnlList)
			meleeCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			meleeCategory:SetExpanded(0) -- Expanded when popped up
			meleeCategory:SetLabel("Melee Weapons")
		pnlList:AddItem(meleeCategory)
		
		local meleeList = vgui.Create("DPanelList")
		meleeList:SetAutoSize(true)
		meleeList:SetSpacing(5)
		meleeList:EnableHorizontal(false)
		meleeList:EnableVerticalScrollbar(false)
		meleeCategory:SetContents(meleeList)
		
		--attachment
		local attachmentCategory = vgui.Create("DCollapsibleCategory", pnlList)
			attachmentCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			attachmentCategory:SetExpanded(0) -- Expanded when popped up
			attachmentCategory:SetLabel("Attachments")
		pnlList:AddItem(attachmentCategory)
		
		local attachmentList = vgui.Create("DPanelList")
		attachmentList:SetAutoSize(true)
		attachmentList:SetSpacing(5)
		attachmentList:EnableHorizontal(false)
		attachmentList:EnableVerticalScrollbar(false)
		attachmentCategory:SetContents(attachmentList)
		
		--parts
		local partsCategory = vgui.Create("DCollapsibleCategory", pnlList)
			partsCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			partsCategory:SetExpanded(0) -- Expanded when popped up
			partsCategory:SetLabel("Weapon Parts")
		pnlList:AddItem(partsCategory)
		
		local partsList = vgui.Create("DPanelList",pnlList)
		partsList:SetAutoSize(true)
		partsList:SetSpacing(5)
		partsList:EnableHorizontal(false)
		partsList:EnableVerticalScrollbar(false)
		partsCategory:SetContents(partsList)
		
		--other
		local otherCategory = vgui.Create("DCollapsibleCategory", pnlList)
			otherCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			otherCategory:SetExpanded(0) -- Expanded when popped up
			otherCategory:SetLabel("Other Weapons")
		pnlList:AddItem(otherCategory)
		
		local otherList = vgui.Create("DPanelList",pnlList)
		otherList:SetAutoSize(true)
		otherList:SetSpacing(5)
		otherList:EnableHorizontal(false)
		otherList:EnableVerticalScrollbar(false)
		otherCategory:SetContents(otherList)
		
		local function findCategory(name)
			if name == "pistol" or name == 0 then
				return pistolCategory
			elseif name == "smg" or name == 1 then
				return smgCategory
			elseif name == "shotgun" or name == 2 then
				return shotgunCategory
			elseif name == "battle" or name == 3 then
				return battleCategory
			elseif name == "assault" or name == 4 then
				return assaultCategory
			elseif name == "sniper" or name == 5 then
				return sniperCategory
			elseif name == "lmg" or name == 6 then
				return lmgCategory
			elseif name == "explosives" or name == 7 then
				return explosivesCategory
			elseif name == "melee" or name == 8 then
				return meleeCategory
			elseif name == "attachment" or name == 9 then
				return attachmentCategory
			elseif name == "wep_part" or name == 10 then
				return partsCategory
			elseif name == "weapon" or name == 11 then
				return otherCategory
			end
		end
		local function findList(name)
			if name == "pistol" or name == 0 then
				return pistolList
			elseif name == "smg" or name == 1 then
				return smgList
			elseif name == "shotgun" or name == 2 then
				return shotgunList
			elseif name == "battle" or name == 3 then
				return battleList
			elseif name == "assault" or name == 4 then
				return assaultList
			elseif name == "sniper" or name == 5 then
				return sniperList
			elseif name == "lmg" or name == 6 then
				return lmgList
			elseif name == "explosives" or name == 7 then
				return explosivesList
			elseif name == "melee" or name == 8 then
				return meleeList
			elseif name == "attachment" or name == 9 then
				return attachmentList
			elseif name == "wep_part" or name == 10 then
				return partsList
			elseif name == "weapon" or name == 11 then
				return otherList
			end
		end
		local function validWeapon(wep)
			if wep == "pistol" or wep == "smg" or wep == "shotgun" or wep == "battle" or wep == "assault" or wep == "sniper" or wep == "lmg" or wep == "explosives" or wep == "melee" or wep == "weapon" or wep == "attachment" or wep == "wep_part" then
				return true
			else
				return false
			end
		end
			for itemname, item in pairs(PNRP.Items) do
				-- if item.ShopHide == true and not (ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminCreateAll") == 1)then
					-- --Do nothing
				-- else
					if validWeapon(item.Type) then
						
						local pnlPanel = vgui.Create("DPanel")
						pnlPanel:SetTall(75)
						pnlPanel.Paint = function()
							draw.RoundedBox( 6, 0, 0, pnlPanel:GetWide(), pnlPanel:GetTall(), GetItemColor(item) )		
						end
						
						findList(item.Type):AddItem(pnlPanel)
						
						if ply:Team() == TEAM_ENGINEER then
							if item.Scrap != nil then sc = math.ceil( item.Scrap * (1 - (0.02 * ply:GetSkill("Construction"))))  else sc = 0 end
							if item.SmallParts != nil then sp = math.ceil(item.SmallParts * (1 - (0.02 * ply:GetSkill("Construction")))) else sp = 0 end
							if item.Chemicals != nil then ch = math.ceil(item.Chemicals * (1 - (0.02 * ply:GetSkill("Construction")))) else ch = 0 end
						else
							if item.Scrap != nil then sc = item.Scrap else sc = 0 end
							if item.SmallParts != nil then sp = item.SmallParts else sp = 0 end
							if item.Chemicals != nil then ch = item.Chemicals else ch = 0 end
						end
						
						local neededParts = item.ToolCheck( )
						local partsText = nil
						if type(neededParts) == "table" then
							partsText = "Needed Parts: \n--------------------"
							for p, n in pairs(neededParts) do
								if PNRP.Items[p] then
									partsText = partsText.."\n"..PNRP.Items[p].Name.." : "..tostring(n)
								end
							end
						end
						
						if ply:Team() == TEAM_ENGINEER then
							if partsText == nil then 
								partsText = ""
							else
								partsText = partsText.."\n \n"
							end
							partsText = partsText.."Skill Discount: \n-------------------- \n"
							partsText = partsText.."Scrap: "..tostring(sc).." | "..item.Scrap.."\n"
							partsText = partsText.."Small Parts: "..tostring(sp).." | "..item.SmallParts.."\n"
							partsText = partsText.."Chemicals: "..tostring(ch).." | "..item.Chemicals.."\n"
						end
						
						pnlPanel.Icon = vgui.Create("SpawnIcon", pnlPanel)
						if item.Icon then
							pnlPanel.Icon:SetModel(item.Icon)
						else
							pnlPanel.Icon:SetModel(item.Model)
						end
						pnlPanel.Icon:SetPos(3, 5)
						pnlPanel.Icon:SetToolTip( partsText )
						pnlPanel.Icon.DoClick = function()
								RunConsoleCommand("pnrp_buildItem", itemname)
								parent_frame:Close()
						end	
						
						pnlPanel.Title = vgui.Create("DLabel", pnlPanel)
						pnlPanel.Title:SetPos(90, 5)
						pnlPanel.Title:SetText(item.Name)
						pnlPanel.Title:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Title:SizeToContents() 
						pnlPanel.Title:SetContentAlignment( 5 )
																
						pnlPanel.Cost = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.Cost:SetPos(90, 55)
						pnlPanel.Cost:SetText("Cost: Scrap "..tostring(sc).." | Small Parts "..tostring(sp).." | Chemicals "..tostring(ch))
						pnlPanel.Cost:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Cost:SizeToContents() 
						pnlPanel.Cost:SetContentAlignment( 5 )	
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(340, 5)
						pnlPanel.ClassBuild:SetText("Required Class for Creation: "..item.ClassSpawn)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SizeToContents() 
						pnlPanel.ClassBuild:SetContentAlignment( 5 )
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(90, 25)
						pnlPanel.ClassBuild:SetText(item.Info)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SetWide(300)
						pnlPanel.ClassBuild:SetTall(25)
						pnlPanel.ClassBuild:SetWrap(true)
						pnlPanel.ClassBuild:SetContentAlignment( 5 )	
						
						pnlPanel.ItemWeight = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ItemWeight:SetPos(340, 55)
						pnlPanel.ItemWeight:SetText("Weight: "..item.Weight)
						pnlPanel.ItemWeight:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ItemWeight:SizeToContents() 
						pnlPanel.ItemWeight:SetContentAlignment( 5 )	
						
						if item.Type == "vehicle" or item.Type == "tool" or item.Type == "junk" or item.Type == "misc" then
							--Since GMod does not like Not or's	
						else
							pnlPanel.bulkSlider = vgui.Create( "DNumSlider", pnlPanel )
							pnlPanel.bulkSlider:SetPos(300, 45)
							pnlPanel.bulkSlider:SetWide( 280 )
							pnlPanel.bulkSlider:SetText( "" )
							pnlPanel.bulkSlider:SetMin( 1 )
							pnlPanel.bulkSlider:SetMax( 100 )
							pnlPanel.bulkSlider:SetDecimals( 0 )
							pnlPanel.bulkSlider:SetValue( 1 )
							pnlPanel.bulkSlider.Label:SetColor(textColor)
							pnlPanel.bulkSlider:SetBGColor(textColor)
						--	pnlList:AddItem( pnlPanel.bulkSlider )
							
							pnlPanel.BulkBtn = vgui.Create("DButton", pnlPanel )
							pnlPanel.BulkBtn:SetPos(485, 30)
							pnlPanel.BulkBtn:SetSize(80,17)
							pnlPanel.BulkBtn:SetText( "Create Bulk" )
							pnlPanel.BulkBtn.DoClick = function() 
								net.Start("SpawnBulkCrate")
									net.WriteEntity(ply)
									net.WriteString(itemname)
									net.WriteDouble(math.Round(tonumber(pnlPanel.bulkSlider:GetValue())))
								net.SendToServer()
								parent_frame:Close()
							end
						end
					end
				-- end
			end
		
		return pnlList

	elseif itemtype == "food" then
		
		local ply = LocalPlayer()
		local sc = 0
		local sp = 0
		local ch = 0
		
		
		local textColor = Color(200,200,200,255)
		local dListBKColor = Color(50,50,50,255)
		
		local pnlList = vgui.Create("DPanelList", PropertySheet)
			pnlList:SetPos(20, 80)
			pnlList:SetSize(parent_frame:GetWide() - 60, parent_frame:GetTall() - 120)
			pnlList:EnableVerticalScrollbar(true) 
			pnlList:EnableHorizontal(false) 
			pnlList:SetSpacing(1)
			pnlList:SetPadding(10)
			pnlList.Paint = function()
			--	draw.RoundedBox( 8, 0, 0, pnlList:GetWide(), pnlList:GetTall(), Color( 50, 50, 50, 255 ) )
			end
		
		--level zero
		local zeroCategory = vgui.Create("DCollapsibleCategory", pnlList)
			zeroCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			zeroCategory:SetExpanded(0) -- Expanded when popped up
			zeroCategory:SetLabel("Level 0")
		pnlList:AddItem(zeroCategory)
		
		local zeroList = vgui.Create("DPanelList")
		zeroList:SetAutoSize(true)
		zeroList:SetSpacing(5)
		zeroList:EnableHorizontal(false)
		zeroList:EnableVerticalScrollbar(false)
		zeroCategory:SetContents(zeroList)
		
		--level one
		local oneCategory = vgui.Create("DCollapsibleCategory", pnlList)
			oneCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			oneCategory:SetExpanded(0) -- Expanded when popped up
			oneCategory:SetLabel("Level 1")
		pnlList:AddItem(oneCategory)
		
		local oneList = vgui.Create("DPanelList")
		oneList:SetAutoSize(true)
		oneList:SetSpacing(5)
		oneList:EnableHorizontal(false)
		oneList:EnableVerticalScrollbar(false)
		oneCategory:SetContents(oneList)
		
		--Level two
		local twoCategory = vgui.Create("DCollapsibleCategory", pnlList)
			twoCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			twoCategory:SetExpanded(0) -- Expanded when popped up
			twoCategory:SetLabel("Level 2")
		pnlList:AddItem(twoCategory)
		
		local twoList = vgui.Create("DPanelList")
		twoList:SetAutoSize(true)
		twoList:SetSpacing(5)
		twoList:EnableHorizontal(false)
		twoList:EnableVerticalScrollbar(false)
		twoCategory:SetContents(twoList)
		
		--Level three
		local threeCategory = vgui.Create("DCollapsibleCategory", pnlList)
			threeCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			threeCategory:SetExpanded(0) -- Expanded when popped up
			threeCategory:SetLabel("Level 3")
		pnlList:AddItem(threeCategory)
		
		local threeList = vgui.Create("DPanelList")
		threeList:SetAutoSize(true)
		threeList:SetSpacing(5)
		threeList:EnableHorizontal(false)
		threeList:EnableVerticalScrollbar(false)
		threeCategory:SetContents(threeList)
		
		--Level four
		local fourCategory = vgui.Create("DCollapsibleCategory", pnlList)
			fourCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			fourCategory:SetExpanded(0) -- Expanded when popped up
			fourCategory:SetLabel("Level 4")
		pnlList:AddItem(fourCategory)
		
		local fourList = vgui.Create("DPanelList")
		fourList:SetAutoSize(true)
		fourList:SetSpacing(5)
		fourList:EnableHorizontal(false)
		fourList:EnableVerticalScrollbar(false)
		fourCategory:SetContents(fourList)
		
		--Level five
		local fiveCategory = vgui.Create("DCollapsibleCategory", pnlList)
			fiveCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			fiveCategory:SetExpanded(0) -- Expanded when popped up
			fiveCategory:SetLabel("Level 5")
		pnlList:AddItem(fiveCategory)
		
		local fiveList = vgui.Create("DPanelList")
		fiveList:SetAutoSize(true)
		fiveList:SetSpacing(5)
		fiveList:EnableHorizontal(false)
		fiveList:EnableVerticalScrollbar(false)
		fiveCategory:SetContents(fiveList)
		
		--Grown food
		local grownCategory = vgui.Create("DCollapsibleCategory", pnlList)
			grownCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			grownCategory:SetExpanded(0) -- Expanded when popped up
			grownCategory:SetLabel("Grown food")
		pnlList:AddItem(grownCategory)
		
		local grownList = vgui.Create("DPanelList")
		grownList:SetAutoSize(true)
		grownList:SetSpacing(5)
		grownList:EnableHorizontal(false)
		grownList:EnableVerticalScrollbar(false)
		grownCategory:SetContents(grownList)
		
		--Liquids
		local liquidCategory = vgui.Create("DCollapsibleCategory", pnlList)
			liquidCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			liquidCategory:SetExpanded(0) -- Expanded when popped up
			liquidCategory:SetLabel("Liquids")
		pnlList:AddItem(liquidCategory)
		
		local liquidList = vgui.Create("DPanelList")
		liquidList:SetAutoSize(true)
		liquidList:SetSpacing(5)
		liquidList:EnableHorizontal(false)
		liquidList:EnableVerticalScrollbar(false)
		liquidCategory:SetContents(liquidList)
		
		local function findCategory(name)
			if name == "zero" or name == 0 then
				return zeroCategory
			elseif name == "one" or name == 1 then
				return oneCategory
			elseif name == "two" or name == 2 then
				return twoCategory
			elseif name == "three" or name == 3 then
				return threeCategory
			elseif name == "four" or name == 4 then
				return fourCategory
			elseif name == "five" or name == 5 then
				return fiveCategory
			elseif name == "grown" or name == 6 then
				return grownCategory
			elseif name == "liquid" or name == 7 then
				return liquidCategory
			end
		end
		local function findList(name)
			if name == "zero" or name == 0 then
				return zeroList
			elseif name == "one" or name == 1 then
				return oneList
			elseif name == "two" or name == 2 then
				return twoList
			elseif name == "three" or name == 3 then
				return threeList
			elseif name == "four" or name == 4 then
				return fourList
			elseif name == "five" or name == 5 then
				return fiveList
			elseif name == "grown" or name == 6 then
				return grownList
			elseif name == "liquid" or name == 7 then
				return liquidList
			else
				return "nope" 
			end
		end
		local function validFood(food)
			if food == "zero" or food == "one" or food == "two" or food == "three" or food == "four" or food == "five" or food == "grown" or food == "liquid" then
				return true
			elseif food == "food" then
				return true
			else
				return false
			end
		end
			for itemname, item in pairs(PNRP.Items) do
				-- if item.ShopHide == true and not (ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminCreateAll") == 1)then
					-- --Do nothing
				-- else
					if validFood(item.Type) then
						
						local pnlPanel = vgui.Create("DPanel")
						pnlPanel:SetTall(75)
						pnlPanel.Paint = function()
							draw.RoundedBox( 6, 0, 0, pnlPanel:GetWide(), pnlPanel:GetTall(), GetItemColor(item) )		
						end
						
						findList(item.Type):AddItem(pnlPanel)
						
						if ply:Team() == TEAM_ENGINEER then
							if item.Scrap != nil then sc = math.ceil( item.Scrap * (1 - (0.02 * ply:GetSkill("Construction"))))  else sc = 0 end
							if item.SmallParts != nil then sp = math.ceil(item.SmallParts * (1 - (0.02 * ply:GetSkill("Construction")))) else sp = 0 end
							if item.Chemicals != nil then ch = math.ceil(item.Chemicals * (1 - (0.02 * ply:GetSkill("Construction")))) else ch = 0 end
						else
							if item.Scrap != nil then sc = item.Scrap else sc = 0 end
							if item.SmallParts != nil then sp = item.SmallParts else sp = 0 end
							if item.Chemicals != nil then ch = item.Chemicals else ch = 0 end
						end
						
						
						local neededParts = item.ToolCheck()
						local partsText = nil
						if type(neededParts) == "table" then
							partsText = "Needed Parts: \n--------------------"
							for p, n in pairs(neededParts) do
								if PNRP.Items[p] then
									partsText = partsText.."\n"..PNRP.Items[p].Name.." : "..tostring(n)
								end
							end
						end
						
						if ply:Team() == TEAM_ENGINEER then
							if partsText == nil then 
								partsText = ""
							else
								partsText = partsText.."\n \n"
							end
							partsText = partsText.."Skill Discount: \n-------------------- \n"
							partsText = partsText.."Scrap: "..tostring(sc).." | "..item.Scrap.."\n"
							partsText = partsText.."Small Parts: "..tostring(sp).." | "..item.SmallParts.."\n"
							partsText = partsText.."Chemicals: "..tostring(ch).." | "..item.Chemicals.."\n"
						end
						
						pnlPanel.Icon = vgui.Create("SpawnIcon", pnlPanel)
						if item.Icon then
							pnlPanel.Icon:SetModel(item.Icon)
						else
							pnlPanel.Icon:SetModel(item.Model)
						end
						pnlPanel.Icon:SetPos(3, 5)
						pnlPanel.Icon:SetToolTip( partsText )
						pnlPanel.Icon.DoClick = function()
								RunConsoleCommand("pnrp_buildItem", itemname)
								parent_frame:Close()
						end	
						
						pnlPanel.Title = vgui.Create("DLabel", pnlPanel)
						pnlPanel.Title:SetPos(90, 5)
						pnlPanel.Title:SetText(item.Name)
						pnlPanel.Title:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Title:SizeToContents() 
						pnlPanel.Title:SetContentAlignment( 5 )
																
						pnlPanel.Cost = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.Cost:SetPos(90, 55)
						pnlPanel.Cost:SetText("Cost: Scrap "..tostring(sc).." | Small Parts "..tostring(sp).." | Chemicals "..tostring(ch))
						pnlPanel.Cost:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Cost:SizeToContents() 
						pnlPanel.Cost:SetContentAlignment( 5 )	
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(340, 5)
						pnlPanel.ClassBuild:SetText("Required Class for Creation: "..item.ClassSpawn)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SizeToContents() 
						pnlPanel.ClassBuild:SetContentAlignment( 5 )
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(90, 25)
						pnlPanel.ClassBuild:SetText(item.Info)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SetWide(300)
						pnlPanel.ClassBuild:SetTall(25)
						pnlPanel.ClassBuild:SetWrap(true)
						pnlPanel.ClassBuild:SetContentAlignment( 5 )	
						
						pnlPanel.ItemWeight = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ItemWeight:SetPos(340, 55)
						pnlPanel.ItemWeight:SetText("Weight: "..item.Weight)
						pnlPanel.ItemWeight:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ItemWeight:SizeToContents() 
						pnlPanel.ItemWeight:SetContentAlignment( 5 )	
						
						if item.Type == "vehicle" or item.Type == "tool" or item.Type == "junk" or item.Type == "misc" then
							--Since GMod does not like Not or's	
							--Then use and's you complete fucking retard
						else
							pnlPanel.bulkSlider = vgui.Create( "DNumSlider", pnlPanel )
							pnlPanel.bulkSlider:SetPos(300, 45)
							pnlPanel.bulkSlider:SetWide( 280 )
							pnlPanel.bulkSlider:SetText( "" )
							pnlPanel.bulkSlider:SetMin( 1 )
							pnlPanel.bulkSlider:SetMax( 100 )
							pnlPanel.bulkSlider:SetDecimals( 0 )
							pnlPanel.bulkSlider:SetValue( 1 )
							pnlPanel.bulkSlider.Label:SetColor(textColor)
							pnlPanel.bulkSlider:SetBGColor(textColor)
						--	pnlList:AddItem( pnlPanel.bulkSlider )
							
							pnlPanel.BulkBtn = vgui.Create("DButton", pnlPanel )
							pnlPanel.BulkBtn:SetPos(485, 30)
							pnlPanel.BulkBtn:SetSize(80,17)
							pnlPanel.BulkBtn:SetText( "Create Bulk" )
							pnlPanel.BulkBtn.DoClick = function() 
								net.Start("SpawnBulkCrate")
									net.WriteEntity(ply)
									net.WriteString(itemname)
									net.WriteDouble(math.Round(tonumber(pnlPanel.bulkSlider:GetValue())))
								net.SendToServer()
								parent_frame:Close()
							end
						end
					end
				-- end
			end
		
		return pnlList

	elseif itemtype == "part" then
		
		local ply = LocalPlayer()
		local sc = 0
		local sp = 0
		local ch = 0
		
		local textColor = Color(200,200,200,255)
		local dListBKColor = Color(50,50,50,255)
		
		local pnlList = vgui.Create("DPanelList", PropertySheet)
			pnlList:SetPos(20, 80)
			pnlList:SetSize(parent_frame:GetWide() - 60, parent_frame:GetTall() - 120)
			pnlList:EnableVerticalScrollbar(true) 
			pnlList:EnableHorizontal(false) 
			pnlList:SetSpacing(1)
			pnlList:SetPadding(10)
			pnlList.Paint = function()
			--	draw.RoundedBox( 8, 0, 0, pnlList:GetWide(), pnlList:GetTall(), Color( 50, 50, 50, 255 ) )
			end
		
		-- Electrical
		local ElectricalCategory = vgui.Create("DCollapsibleCategory", pnlList)
			ElectricalCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			ElectricalCategory:SetExpanded(0) -- Expanded when popped up
			ElectricalCategory:SetLabel("Electrical")
		pnlList:AddItem(ElectricalCategory)
		
		local ElectricalList = vgui.Create("DPanelList")
		ElectricalList:SetAutoSize(true)
		ElectricalList:SetSpacing(5)
		ElectricalList:EnableHorizontal(false)
		ElectricalList:EnableVerticalScrollbar(false)
		ElectricalCategory:SetContents(ElectricalList)
		
		-- Ammo parts
		local AmmoPartsCategory = vgui.Create("DCollapsibleCategory", pnlList)
			AmmoPartsCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			AmmoPartsCategory:SetExpanded(0) -- Expanded when popped up
			AmmoPartsCategory:SetLabel("Ammo parts")
		pnlList:AddItem(AmmoPartsCategory)
		
		local AmmoPartsList = vgui.Create("DPanelList")
		AmmoPartsList:SetAutoSize(true)
		AmmoPartsList:SetSpacing(5)
		AmmoPartsList:EnableHorizontal(false)
		AmmoPartsList:EnableVerticalScrollbar(false)
		AmmoPartsCategory:SetContents(AmmoPartsList)
		
		-- Fuel
		local FuelCategory = vgui.Create("DCollapsibleCategory", pnlList)
			FuelCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			FuelCategory:SetExpanded(0) -- Expanded when popped up
			FuelCategory:SetLabel("Fuel")
		pnlList:AddItem(FuelCategory)
		
		local FuelList = vgui.Create("DPanelList")
		FuelList:SetAutoSize(true)
		FuelList:SetSpacing(5)
		FuelList:EnableHorizontal(false)
		FuelList:EnableVerticalScrollbar(false)
		FuelCategory:SetContents(FuelList)
		
		-- Machinery
		local MachineryCategory = vgui.Create("DCollapsibleCategory", pnlList)
			MachineryCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			MachineryCategory:SetExpanded(0) -- Expanded when popped up
			MachineryCategory:SetLabel("Machinery")
		pnlList:AddItem(MachineryCategory)
		
		local MachineryList = vgui.Create("DPanelList")
		MachineryList:SetAutoSize(true)
		MachineryList:SetSpacing(5)
		MachineryList:EnableHorizontal(false)
		MachineryList:EnableVerticalScrollbar(false)
		MachineryCategory:SetContents(MachineryList)
		
		-- Cooking
		local CookingCategory = vgui.Create("DCollapsibleCategory", pnlList)
			CookingCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			CookingCategory:SetExpanded(0) -- Expanded when popped up
			CookingCategory:SetLabel("Cooking")
		pnlList:AddItem(CookingCategory)
		
		local CookingList = vgui.Create("DPanelList")
		CookingList:SetAutoSize(true)
		CookingList:SetSpacing(5)
		CookingList:EnableHorizontal(false)
		CookingList:EnableVerticalScrollbar(false)
		CookingCategory:SetContents(CookingList)
		
		-- Books
		local BooksCategory = vgui.Create("DCollapsibleCategory", pnlList)
			BooksCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			BooksCategory:SetExpanded(0) -- Expanded when popped up
			BooksCategory:SetLabel("Books")
		pnlList:AddItem(BooksCategory)
		
		local BooksList = vgui.Create("DPanelList")
		BooksList:SetAutoSize(true)
		BooksList:SetSpacing(5)
		BooksList:EnableHorizontal(false)
		BooksList:EnableVerticalScrollbar(false)
		BooksCategory:SetContents(BooksList)
		
		-- Misc
		local MiscCategory = vgui.Create("DCollapsibleCategory", pnlList)
			MiscCategory:SetSize( parent_frame:GetWide() - 60, 50 )
			MiscCategory:SetExpanded(0) -- Expanded when popped up
			MiscCategory:SetLabel("Misc.")
		pnlList:AddItem(MiscCategory)
		
		local MiscList = vgui.Create("DPanelList")
		MiscList:SetAutoSize(true)
		MiscList:SetSpacing(5)
		MiscList:EnableHorizontal(false)
		MiscList:EnableVerticalScrollbar(false)
		MiscCategory:SetContents(MiscList)
		
		local function findCategory(name)
			if name == "electric" or name == 0 then
				return ElectricalCategory
			elseif name == "ammopart" or name == 1 then
				return AmmoPartsCategory
			elseif name == "fuel" or name == 2 then
				return FuelCategory
			elseif name == "machine" or name == 3 then
				return MachineryCategory
			elseif name == "cooking" or name == 4 then
				return CookingCategory
			elseif name == "book" or name == 5 then
				return BooksCategory
			elseif name == "part" or name == "misc" or name == 6 then
				return MiscCategory
			end
		end
		local function findList(name)
			if name == "electric" or name == 0 then
				return ElectricalList
			elseif name == "ammopart" or name == 1 then
				return AmmoPartsList
			elseif name == "fuel" or name == 2 then
				return FuelList
			elseif name == "machine" or name == 3 then
				return MachineryList
			elseif name == "cooking" or name == 4 then
				return CookingList
			elseif name == "book" or name == 5 then
				return BooksList
			elseif name == "part" or name == "misc" or name == 6 then
				return MiscList
			end
		end
		local function validPart(part)
			if part == "electric" or part == "ammopart" or part == "fuel" or part == "machine" or part == "cooking" or part == "book" then
				return true
			elseif part == "part" or part == "misc" then
				return true
			else
				return false
			end
		end
			for itemname, item in pairs(PNRP.Items) do
				-- if item.ShopHide == true and not (ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminCreateAll") == 1)then
					-- --Do nothing
				-- else
					if validPart(item.Type) then
						
						local pnlPanel = vgui.Create("DPanel")
						pnlPanel:SetTall(75)
						pnlPanel.Paint = function()
							draw.RoundedBox( 6, 0, 0, pnlPanel:GetWide(), pnlPanel:GetTall(), GetItemColor(item) )		
						end
						
						findList(item.Type):AddItem(pnlPanel)
						
						if ply:Team() == TEAM_ENGINEER then
							if item.Scrap != nil then sc = math.ceil( item.Scrap * (1 - (0.02 * ply:GetSkill("Construction"))))  else sc = 0 end
							if item.SmallParts != nil then sp = math.ceil(item.SmallParts * (1 - (0.02 * ply:GetSkill("Construction")))) else sp = 0 end
							if item.Chemicals != nil then ch = math.ceil(item.Chemicals * (1 - (0.02 * ply:GetSkill("Construction")))) else ch = 0 end
						else
							if item.Scrap != nil then sc = item.Scrap else sc = 0 end
							if item.SmallParts != nil then sp = item.SmallParts else sp = 0 end
							if item.Chemicals != nil then ch = item.Chemicals else ch = 0 end
						end
						
						
						local neededParts = item.ToolCheck()
						local partsText = nil
						if type(neededParts) == "table" then
							partsText = "Needed Parts: \n--------------------"
							for p, n in pairs(neededParts) do
								if PNRP.Items[p] then
									partsText = partsText.."\n"..PNRP.Items[p].Name.." : "..tostring(n)
								end
							end
						end
						
						if ply:Team() == TEAM_ENGINEER then
							if partsText == nil then 
								partsText = ""
							else
								partsText = partsText.."\n \n"
							end
							partsText = partsText.."Skill Discount: \n-------------------- \n"
							partsText = partsText.."Scrap: "..tostring(sc).." | "..item.Scrap.."\n"
							partsText = partsText.."Small Parts: "..tostring(sp).." | "..item.SmallParts.."\n"
							partsText = partsText.."Chemicals: "..tostring(ch).." | "..item.Chemicals.."\n"
						end
						
						pnlPanel.Icon = vgui.Create("SpawnIcon", pnlPanel)
						if item.Icon then
							pnlPanel.Icon:SetModel(item.Icon)
						else
							pnlPanel.Icon:SetModel(item.Model)
						end
						pnlPanel.Icon:SetPos(3, 5)
						pnlPanel.Icon:SetToolTip( partsText )
						pnlPanel.Icon.DoClick = function()
								RunConsoleCommand("pnrp_buildItem", itemname)
								parent_frame:Close()
						end	
						
						pnlPanel.Title = vgui.Create("DLabel", pnlPanel)
						pnlPanel.Title:SetPos(90, 5)
						pnlPanel.Title:SetText(item.Name)
						pnlPanel.Title:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Title:SizeToContents() 
						pnlPanel.Title:SetContentAlignment( 5 )
																
						pnlPanel.Cost = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.Cost:SetPos(90, 55)
						pnlPanel.Cost:SetText("Cost: Scrap "..tostring(sc).." | Small Parts "..tostring(sp).." | Chemicals "..tostring(ch))
						pnlPanel.Cost:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Cost:SizeToContents() 
						pnlPanel.Cost:SetContentAlignment( 5 )	
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(340, 5)
						pnlPanel.ClassBuild:SetText("Required Class for Creation: "..item.ClassSpawn)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SizeToContents() 
						pnlPanel.ClassBuild:SetContentAlignment( 5 )
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(90, 25)
						pnlPanel.ClassBuild:SetText(item.Info)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SetWide(300)
						pnlPanel.ClassBuild:SetTall(25)
						pnlPanel.ClassBuild:SetWrap(true)
						pnlPanel.ClassBuild:SetContentAlignment( 5 )	
						
						pnlPanel.ItemWeight = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ItemWeight:SetPos(340, 55)
						pnlPanel.ItemWeight:SetText("Weight: "..item.Weight)
						pnlPanel.ItemWeight:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ItemWeight:SizeToContents() 
						pnlPanel.ItemWeight:SetContentAlignment( 5 )	
						
						if item.Type == "vehicle" or item.Type == "tool" or item.Type == "junk" or item.Type == "misc" then
							--Since GMod does not like Not or's	
						else
							pnlPanel.bulkSlider = vgui.Create( "DNumSlider", pnlPanel )
							pnlPanel.bulkSlider:SetPos(300, 45)
							pnlPanel.bulkSlider:SetWide( 280 )
							pnlPanel.bulkSlider:SetText( "" )
							pnlPanel.bulkSlider:SetMin( 1 )
							pnlPanel.bulkSlider:SetMax( 100 )
							pnlPanel.bulkSlider:SetDecimals( 0 )
							pnlPanel.bulkSlider:SetValue( 1 )
							pnlPanel.bulkSlider.Label:SetColor(textColor)
							pnlPanel.bulkSlider:SetBGColor(textColor)
						--	pnlList:AddItem( pnlPanel.bulkSlider )
							
							pnlPanel.BulkBtn = vgui.Create("DButton", pnlPanel )
							pnlPanel.BulkBtn:SetPos(485, 30)
							pnlPanel.BulkBtn:SetSize(80,17)
							pnlPanel.BulkBtn:SetText( "Create Bulk" )
							pnlPanel.BulkBtn.DoClick = function() 
								net.Start("SpawnBulkCrate")
									net.WriteEntity(ply)
									net.WriteString(itemname)
									net.WriteDouble(math.Round(tonumber(pnlPanel.bulkSlider:GetValue())))
								net.SendToServer()
								parent_frame:Close()
							end
						end
					end
				-- end
			end
		
		return pnlList

	else
		local ply = LocalPlayer()
		local sc = 0
		local sp = 0
		local ch = 0
		
		local textColor = Color(200,200,200,255)
		local dListBKColor = Color(50,50,50,255)
		
		local pnlList = vgui.Create("DPanelList", PropertySheet)
			pnlList:SetPos(20, 80)
			pnlList:SetSize(parent_frame:GetWide() - 60, parent_frame:GetTall() - 120)
			pnlList:EnableVerticalScrollbar(true) 
			pnlList:EnableHorizontal(false) 
			pnlList:SetSpacing(1)
			pnlList:SetPadding(10)
			pnlList.Paint = function()
			--	draw.RoundedBox( 8, 0, 0, pnlList:GetWide(), pnlList:GetTall(), Color( 50, 50, 50, 255 ) )
			end
			
			for itemname, item in pairs(PNRP.Items) do
				--print("Loading item in shop menu: "..itemname)
				-- if item.ShopHide == true and not (ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminCreateAll") == 1)then
					-- --Do nothing
				-- else
					if item.Type == tostring( itemtype ) then
						
						local pnlPanel = vgui.Create("DPanel")
						pnlPanel:SetTall(75)
						pnlPanel.Paint = function()
							draw.RoundedBox( 6, 0, 0, pnlPanel:GetWide(), pnlPanel:GetTall(), GetItemColor(item) )		
						end
						pnlList:AddItem(pnlPanel)
											
						if ply:Team() == TEAM_ENGINEER then
							if item.Scrap != nil then sc = math.ceil( item.Scrap * (1 - (0.02 * ply:GetSkill("Construction"))))  else sc = 0 end
							if item.SmallParts != nil then sp = math.ceil(item.SmallParts * (1 - (0.02 * ply:GetSkill("Construction")))) else sp = 0 end
							if item.Chemicals != nil then ch = math.ceil(item.Chemicals * (1 - (0.02 * ply:GetSkill("Construction")))) else ch = 0 end
						else
							if item.Scrap != nil then sc = item.Scrap else sc = 0 end
							if item.SmallParts != nil then sp = item.SmallParts else sp = 0 end
							if item.Chemicals != nil then ch = item.Chemicals else ch = 0 end
						end
						local neededParts = item.ToolCheck( )
						local partsText = nil
						if type(neededParts) == "table" then
							partsText = "Needed Parts: \n--------------------"
							for p, n in pairs(neededParts) do
								if PNRP.Items[p] then
									partsText = partsText.."\n"..PNRP.Items[p].Name.." : "..tostring(n)
								end
							end
						end
						
						if ply:Team() == TEAM_ENGINEER then
							if partsText == nil then 
								partsText = ""
							else
								partsText = partsText.."\n \n"
							end
							partsText = partsText.."Skill Discount: \n-------------------- \n"
							partsText = partsText.."Scrap: "..tostring(sc).." | "..item.Scrap.."\n"
							partsText = partsText.."Small Parts: "..tostring(sp).." | "..item.SmallParts.."\n"
							partsText = partsText.."Chemicals: "..tostring(ch).." | "..item.Chemicals.."\n"
						end
						
						pnlPanel.Icon = vgui.Create("SpawnIcon", pnlPanel)
						if item.Type == "weapon" then
							pnlPanel.Icon:SetModel(item.Icon)
						else
							pnlPanel.Icon:SetModel(item.Model)
						end
						pnlPanel.Icon:SetPos(3, 5)
						pnlPanel.Icon:SetToolTip( partsText )
						pnlPanel.Icon.DoClick = function()
								RunConsoleCommand("pnrp_buildItem", itemname)
								parent_frame:Close()
						end	
						
						pnlPanel.Title = vgui.Create("DLabel", pnlPanel)
						pnlPanel.Title:SetPos(90, 5)
						pnlPanel.Title:SetText(item.Name)
						pnlPanel.Title:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Title:SizeToContents() 
						pnlPanel.Title:SetContentAlignment( 5 )
																
						pnlPanel.Cost = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.Cost:SetPos(90, 55)
						pnlPanel.Cost:SetText("Cost: Scrap "..tostring(sc).." | Small Parts "..tostring(sp).." | Chemicals "..tostring(ch))
						pnlPanel.Cost:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.Cost:SizeToContents() 
						pnlPanel.Cost:SetContentAlignment( 5 )	
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(340, 5)
						pnlPanel.ClassBuild:SetText("Required Class for Creation: "..item.ClassSpawn)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SizeToContents() 
						pnlPanel.ClassBuild:SetContentAlignment( 5 )
						
						pnlPanel.ClassBuild = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ClassBuild:SetPos(90, 25)
						pnlPanel.ClassBuild:SetText(item.Info)
						pnlPanel.ClassBuild:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ClassBuild:SetWide(300)
						pnlPanel.ClassBuild:SetTall(25)
						pnlPanel.ClassBuild:SetWrap(true)
						pnlPanel.ClassBuild:SetContentAlignment( 5 )	
						
						pnlPanel.ItemWeight = vgui.Create("DLabel", pnlPanel)		
						pnlPanel.ItemWeight:SetPos(340, 55)
						pnlPanel.ItemWeight:SetText("Weight: "..item.Weight)
						pnlPanel.ItemWeight:SetColor(Color( 0, 0, 0, 255 ))
						pnlPanel.ItemWeight:SizeToContents() 
						pnlPanel.ItemWeight:SetContentAlignment( 5 )	
						
						if item.Type == "vehicle" or item.Type == "tool" or item.Type == "junk" or item.Type == "misc" then
							--Since GMod does not like Not or's	
						else
							pnlPanel.bulkSlider = vgui.Create( "DNumSlider", pnlPanel )
							pnlPanel.bulkSlider:SetPos(300, 45)
							pnlPanel.bulkSlider:SetWide( 280 )
							pnlPanel.bulkSlider:SetText( "" )
							pnlPanel.bulkSlider:SetMin( 1 )
							pnlPanel.bulkSlider:SetMax( 100 )
							pnlPanel.bulkSlider:SetDecimals( 0 )
							pnlPanel.bulkSlider:SetValue( 1 )
							pnlPanel.bulkSlider.Label:SetColor(textColor)
							pnlPanel.bulkSlider:SetBGColor(textColor)
						--	pnlList:AddItem( pnlPanel.bulkSlider )
							
							pnlPanel.BulkBtn = vgui.Create("DButton", pnlPanel )
							pnlPanel.BulkBtn:SetPos(485, 30)
							pnlPanel.BulkBtn:SetSize(80,17)
							pnlPanel.BulkBtn:SetText( "Create Bulk" )
							pnlPanel.BulkBtn.DoClick = function() 
								net.Start("SpawnBulkCrate")
									net.WriteEntity(ply)
									net.WriteString(itemname)
									net.WriteDouble(math.Round(tonumber(pnlPanel.bulkSlider:GetValue())))
								net.SendToServer()
								parent_frame:Close()
							end
						end
					end
				-- end
			end	
		
		return pnlList
	end
end
function GM.initShop(ply)

	net.Start("pnrp_OpenShopToServer")
		net.WriteEntity(ply)
	net.SendToServer()

end
concommand.Add( "pnrp_buy_shop",  GM.initShop )
net.Receive( "pnrp_OpenShop", buy_shop )

--EOF