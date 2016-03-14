///////////////PNRP//////////////
// 							   //
//  This is the Derma for the  //
//   weapon assembly and all   //
//    of its functionality.    //
//    Mostly taken from the    //
//     equipment.lua file.     //
//							   //
//            -Andy            //
//							   //
///////////////HAZG//////////////


local tShopIntFrame
function GM.TShopInterface()
	local ply = net.ReadEntity() 
	local ToolEnt = net.ReadEntity()
	local ItemTable = net.ReadTable()
	PNRP.RMDerma()
	local textColor = Color(200,200,200,255)
	
	tShopIntFrame = vgui.Create( "DFrame" )
		tShopIntFrame:SetSize( 710, 520 ) --Set the size
		tShopIntFrame:SetPos(ScrW() / 2 - tShopIntFrame:GetWide() / 2, ScrH() / 2 - tShopIntFrame:GetTall() / 2)
		tShopIntFrame:SetTitle( "" ) --Set title
		tShopIntFrame:SetVisible( true )
		tShopIntFrame:SetDraggable( true )
		tShopIntFrame:ShowCloseButton( true )
		tShopIntFrame:MakePopup()
		tShopIntFrame.Paint = function() 
			surface.SetDrawColor( 50, 50, 50, 0 )
		end
	PNRP.AddMenu(tShopIntFrame)
	
	local screenBG = vgui.Create("DImage", tShopIntFrame)
		screenBG:SetImage( "VGUI/gfx/pnrp_screen_2b.png" )
		screenBG:SetKeepAspect()
		screenBG:SizeToContents()
		screenBG:SetSize(tShopIntFrame:GetWide(), tShopIntFrame:GetTall())
		
	local tool = PNRP.Items[PNRP.FindItemID(ToolEnt:GetClass())]
	local ToolName = vgui.Create( "DLabel", tShopIntFrame )
		ToolName:SetPos(60,40)
		ToolName:SetColor(Color( 255, 255, 255, 255 ))
		ToolName:SetText( tool.Name )
		ToolName:SizeToContents()	
	local ToolDesc = vgui.Create( "DLabel", tShopIntFrame )
		ToolDesc:SetPos(60,50)
		ToolDesc:SetColor(Color( 255, 255, 255, 255 ))
		ToolDesc:SetText( tool.Info )
		ToolDesc:SizeToContents()	
		
	local pnlList = vgui.Create("DPanelList", tShopIntFrame)
		pnlList:SetPos(40, 70)
		pnlList:SetSize(tShopIntFrame:GetWide() - 85, tShopIntFrame:GetTall() - 120)
		pnlList:EnableVerticalScrollbar(true) 
		pnlList:EnableHorizontal(false) 
		pnlList:SetSpacing(1)
		pnlList:SetPadding(10)
		
	for _, v in pairs(ItemTable) do
		if PNRP.Items[v] then
			local item = PNRP.Items[v] 
			local override = false
			
			if (item.AllHide == true and not (ply:IsUserGroup("superadmin") and GetConVarNumber("pnrp_adminCreateAll") == 1)) and not override then
				--do nothing
			else
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
				
				local pnlPanel = vgui.Create("DPanel")
				pnlPanel:SetTall(75)
				pnlPanel.Paint = function()
					draw.RoundedBox( 6, 0, 0, pnlPanel:GetWide(), pnlPanel:GetTall(), Color( 180, 180, 180, 80 ) )		
				end
				pnlList:AddItem(pnlPanel)
				
				pnlPanel.Icon = vgui.Create("SpawnIcon", pnlPanel)
					pnlPanel.Icon:SetModel(item.Model)
					pnlPanel.Icon:SetPos(3, 5)
					pnlPanel.Icon:SetToolTip( partsText )
					pnlPanel.Icon.DoClick = function()
							RunConsoleCommand("pnrp_buildItem", v)
							tShopIntFrame:Close()
					end	
					
				pnlPanel.Title = vgui.Create("DLabel", pnlPanel)
				pnlPanel.Title:SetPos(90, 5)
				pnlPanel.Title:SetText(item.Name)
				pnlPanel.Title:SetColor(Color( 0, 0, 0, 255 ))
				pnlPanel.Title:SizeToContents() 
				pnlPanel.Title:SetContentAlignment( 5 )	
				
				if ply:Team() == TEAM_ENGINEER then
					if item.Scrap != nil then sc = math.ceil( item.Scrap * (1 - (0.02 * ply:GetSkill("Construction"))))  else sc = 0 end
					if item.SmallParts != nil then sp = math.ceil(item.SmallParts * (1 - (0.02 * ply:GetSkill("Construction")))) else sp = 0 end
					if item.Chemicals != nil then ch = math.ceil(item.Chemicals * (1 - (0.02 * ply:GetSkill("Construction")))) else ch = 0 end
				else
					if item.Scrap != nil then sc = item.Scrap else sc = 0 end
					if item.SmallParts != nil then sp =item.SmallParts else sp = 0 end
					if item.Chemicals != nil then ch = item.Chemicals else ch = 0 end
				end
				
				pnlPanel.Cost = vgui.Create("DLabel", pnlPanel)		
				pnlPanel.Cost:SetPos(90, 55)
				pnlPanel.Cost:SetText("Cost: Scrap "..tostring(sc).." | Small Parts "..tostring(sp).." | Chemicals "..tostring(ch))
				pnlPanel.Cost:SetColor(Color( 0, 0, 0, 255 ))
				pnlPanel.Cost:SizeToContents() 
				pnlPanel.Cost:SetContentAlignment( 5 )	
				
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
				
				pnlPanel.bulkSlider = vgui.Create( "DNumSlider", pnlPanel )
				pnlPanel.bulkSlider:SetPos(300, 45)
				pnlPanel.bulkSlider:SetWide( 300 ) 
				pnlPanel.bulkSlider:SetText( " " )
				pnlPanel.bulkSlider:SetDecimals( 0 )
				pnlPanel.bulkSlider:SetMin( 1 )
				pnlPanel.bulkSlider:SetMax( 100 )
				pnlPanel.bulkSlider:SetValue( 1 )
				pnlPanel.bulkSlider.Label:SetColor(textColor)
				pnlPanel.bulkSlider:SetBGColor(textColor)
				
				pnlPanel.BulkBtn = vgui.Create("DButton", pnlPanel )
				pnlPanel.BulkBtn:SetPos(485, 30)
				pnlPanel.BulkBtn:SetSize(80,17)
				pnlPanel.BulkBtn:SetText( "Create Bulk" )
				pnlPanel.BulkBtn.DoClick = function() 
					net.Start("SpawnBulkCrate")
						net.WriteEntity(ply)
						net.WriteString(item.ID)
						net.WriteDouble(math.Round(pnlPanel.bulkSlider:GetValue()))
					net.SendToServer()
					tShopIntFrame:Close()
				end
			end
		end
	end
end
net.Receive( "pnrp_WepAssemblyInterface", GM.TShopInterface)


--EOF