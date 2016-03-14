include('shared.lua')

function ENT:Draw()
	self.Entity:DrawModel()
end

function SmeltMenu()
	local scrap = GetResource("Scrap")
	
	local w = 200
	local h = 150
	local title = "Smelt Scrap"
	
	local ply = LocalPlayer()
	
	local smelt_frame = vgui.Create("DFrame")
	--smelt_frame:SetPos( (ScrW()/2) - (w / 2), (ScrH()/2) - (h / 2))
	smelt_frame:Center()
	smelt_frame:SetSize( w, h )
	smelt_frame:SetTitle( title )
	smelt_frame:SetVisible( true )
	smelt_frame:SetDraggable( true )
	smelt_frame:ShowCloseButton( true )
	smelt_frame:MakePopup()
	
	local InfoLabel = vgui.Create( "DLabel", smelt_frame )
	InfoLabel:SetPos( 10, 30 )
	InfoLabel:SetText(" 3 Scrap + 1 Chemical = 1 Small Part")
	InfoLabel:SizeToContents()
	
	local ScrapSlider = vgui.Create( "DNumSlider", smelt_frame )
	ScrapSlider:SetPos( 10, 45 )
	ScrapSlider:SetSize( 200, 50 )
	ScrapSlider:SetText("Scrap Used")
	ScrapSlider:SetMin( 0 )
	ScrapSlider:SetMax( scrap )
	ScrapSlider:SetDecimals( 0 )
	
	-- local CreatedLabel = vgui.Create( "Label", smelt_frame )
	-- CreatedLabel:SetPos( 10, 30 )
	-- CreatedLabel:SetText("2 Small Parts + 1 Chemicals = 1 Scrap")
	-- CreatedLabel:SizeToContents()
	
	local SubmitButton = vgui.Create( "DButton" )
	SubmitButton:SetParent( smelt_frame )
	SubmitButton:SetText( "Smelt and casting" )
	SubmitButton:SetPos( 60, 100 )
	--SubmitButton:SetSize( 100, 75 )
	SubmitButton.DoClick = function()
		--datastream.StreamToServer( "smelt_stream", { ScrapSlider:GetValue() } )
		net.Start("smelt_cast_stream")
			net.WriteEntity(ply)
			net.WriteDouble(ScrapSlider:GetValue())
		net.SendToServer()
		smelt_frame:Close()
	end
	
end
net.Receive("smelt_cast_menu", SmeltMenu)

