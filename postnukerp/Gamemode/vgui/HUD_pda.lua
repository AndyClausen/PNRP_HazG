--print("running HUD_pda.lua")
//---------Is chat open?---------\\
local ChatIsOpen

function isStartTyping( isTeamChat )
	ChatIsOpen = true
end
hook.Add( "StartChat", "HasStartedTyping", isStartTyping )

function FinishTyping()
	ChatIsOpen = false
end
hook.Add( "FinishChat", "ClientFinishTyping", FinishTyping )
//-------------------------------\\


	
//------Time and date------\\
local Time
local Minute
local Hour
local Day
local Month
local Year

function updateTimeVars()
	net.Start("startGetTime")
	net.SendToServer()
end
updateTimeVars()
timer.Create("updatePDATime",15,0,updateTimeVars)
function setTimeVars()
	--print("setTimeVars()")
	local TT = net.ReadTable()
	Time = TT[1]
	Minute = TT[2]
	Hour = TT[3]
	Day = TT[4]
	Month = TT[5]
	Year = 2016+TT[6]
	--print("[---------Time set!---------]")
	--print("PDA Year: "..Year)
end
net.Receive("getTimeAndDate",setTimeVars)

--Convert low numbers
function convertTimeNumber( num )
	if num < 10 then
		return "0"..num
	else
		return num
	end
end

--Align resources to the right
function alignRec( num,len )
	if num < 10 then
		return len
	elseif num < 100 then
		return len*2
	elseif num < 1000 then
		return len*3
	elseif num < 10000 then
		return len*4
	elseif num < 100000 then
		return len*5
	elseif num < 1000000 then
		return len*6
	else
		return len*7
	end
end

//-------------------------\\



--Make relative to screensize (D.R.Y.)
function RelW(w)
	local rel = ScrW()/(1600/w)
	--print("Rel: "..rel..", w: "..w)
	return rel
end

function RelH(h)
	local rel = ScrH()/(900/h)
	--print("RelH: "..rel..", h: "..h)
	return rel
end


local HUD_col =
{
 	bg =
	{
		border = Color( 190, 255, 128, 255 ),
		background = Color( 51, 58, 51, 100 )
	},
	text =
	{
		shadow = Color( 0, 0, 0, 200 ),
		text = Color( 255, 255, 255, 150 )
	},
	timeText =
	{
		shadow = Color( 121, 123, 190, 255 ),
		text = Color( 121, 123, 190, 255 )
	},
	hp_bar =
	{
		border = Color( 255, 0, 0, 255 ),
		background = Color( 255, 0, 0, 75 ),
		shade = Color( 255, 104, 104, 150 ),
		fill = Color( 232, 0, 0, 150 )
 
	},
	suit_bar =
	{
		border = Color( 255, 255, 0, 255 ),
		background = Color( 155, 155, 0, 75 ),
		shade = Color( 219, 219, 112, 255 ),
		fill = Color( 255, 255, 165, 155 )
	},
	inside_indic =
	{
		offhighlight = Color( 200, 155, 200, 125 ),
		offfill = Color( 255, 0, 0, 75 ),
		onhighlight = Color( 200, 255, 200, 125 ),
		onfill = Color( 0, 175, 0, 75 )
	},
	end_bar =
	{
		border = Color( 200, 0, 200, 255 ),
		background = Color( 200, 0, 200, 75 ),
		shade = Color( 165, 4, 255, 255 ),
		fill = Color(112, 4, 168, 155)
	},
	hunger_bar =
	{
		border = Color( 0, 255, 0, 255 ),
		background = Color( 0, 255, 0, 75 ),
		shade = Color( 136, 255, 136, 255 ),
		fill = Color(0, 255, 30, 155)
	},
	thirst_bar =
	{
		border = Color( 0, 0, 255, 255 ),
		background = Color( 0, 0, 255, 75 ),
		shade = Color( 136, 136, 255, 255 ),
		fill = Color( 0, 0, 219, 255 )
	},
	border = Color( 0, 100, 0, 150 )
}

local HUD_var =
{
	font = "CenterPrintText",
	info_font = "CenterPrintText",
	zombie_font = "CenterPrintText",
 
	padding = 5,
	marginX = RelW(5),
	marginY = RelH(25),
 
	text_spacing = RelH(2),
	bar_spacing = RelH(7),
 
	bar_height = RelH(10),
	bar_width = RelW(90),
 
	width = RelW(0.15)
}

function PNRP:HUD_pda()
	ply = client or LocalPlayer()	
	if ( !ply:Alive() and ply:IsFrozen()) then
		//unfreeze
		net.Start("playerUnfreeze")
			net.WriteEntity(ply)
		net.SendToServer()
		return
	end
	if( !ply:Alive() ) then return end	--If the player is dead, do not draw the HUD
	
	local _, txtHeight = PNRP_HUD:TextSize( "TEXT", HUD_var.font ) --Gets the size (height) of the font
	
	local i = 5		--Number of bars on the HUD (HP, Armor, End, Hunger, Thirst)
	
	
	
	//--------PDA stuff--------\\
	local KeyHasBeenDown
	
	if input.IsKeyDown( KEY_P ) and !ChatIsOpen and !shopFrameCK then
		//send ply and freeze
		
		if !ply:IsFrozen() then
			net.Start("playerFreeze")
				net.WriteEntity(ply)
			net.SendToServer()
		end
		KeyHasBeenDown = true
		drawTexture()
	elseif ply:IsFrozen() and KeyHasBeenDown != false then
		//unfreeze
		net.Start("playerUnfreeze")
			net.WriteEntity(ply)
		net.SendToServer()
		KeyHasBeenDown = false
	end
	
	-- The image
	local img = surface.GetTextureID( "pda/PDA_v7" )
	function drawTexture()
	
		surface.SetTexture( img )
		surface.SetDrawColor( 255,255,255,255 )
		surface.DrawTexturedRect( (ScrW()-(ScrW()/2.63))/2, ScrH()-(ScrH()/1.153), ScrW()/2.63, ScrH()/1.153 )
		
	//-------------------------\\
		
		--Gets the players Max HP
		local MaxHealth = ply:GetNetworkedInt( "MaxHealth" ) 
		
		local stat = {
			HP = string.format( "Health: %iHP", ply:Health( ) ),	-- Heath Text
			POWER = string.format( "Power: %iSP", ply:Armor( ) ),	-- Suit text
			END = string.format( "Endurance: %i", Endurance ), -- Player Endurance
			HUNGER = string.format( "Hunger: %i", Hunger ),
			THIRST = string.format( "Thirst: %i", Thirst )	
		}
		
		local x = RelW(730)
		local y = RelH(242) // align by the first bar here!!!
		
		--Flashes when HP Bar is low
		if ply:Health( ) < 40 then
			HUD_col.hp_bar.fill = Color( 232 * math.abs(math.sin(CurTime()*2)), 0, 0, 255 )
			HUD_col.hp_bar.shade = Color( 255 * math.abs(math.sin(CurTime()*2)), 104, 104, 255 )
		else
			HUD_col.hp_bar.shade = Color( 255, 104, 104, 255 )
			HUD_col.hp_bar.fill = Color( 232, 0, 0, 255 )
		end
		
		--When the players End drops below 20
		if Endurance < 20 then
			local ehx
			local ehy
			ehx = ScrW( ) / 2 - RelW(20)
			ehy = ScrH( ) - txtHeight - RelH(40)
			eh_font = "TargetID"
			local eh_text = { }
			eh_text.shadow = Color( 0, 0, 0, 200 )
			eh_text.text = Color( 255, 255, 255, 255 * math.abs(math.sin(CurTime()*1.2)) )
			
			PNRP_HUD:PaintText( ehx, ehy, "You need to rest!", eh_font, eh_text )	
			HUD_col.end_bar.fill = Color( 112 * math.abs(math.sin(CurTime()*2)), 4, 168, 255 )
			HUD_col.end_bar.shade = Color( 165 * math.abs(math.sin(CurTime()*2)), 4, 255, 255 )
		else
			HUD_col.end_bar.shade = Color( 165, 4, 255, 255 )
			HUD_col.end_bar.fill = Color( 112, 4, 168, 155 )
		end
		
		local barH = (RelH(HUD_var.padding) * 2) + txtHeight + HUD_var.bar_height + HUD_var.text_spacing
		local bgH = (RelH(HUD_var.padding) * 2) + txtHeight + HUD_var.bar_height + HUD_var.text_spacing
		local bgW = (RelW(HUD_var.padding) * 2) + HUD_var.bar_width
		local offset = 0
		
		/*-- Makes all the bars for PDA --*/
		local thirstPerc = Thirst / 100
		makeBar(x, y + offset+RelH(1), bgH, bgW , "Thirst:", Thirst, HUD_col, HUD_col.thirst_bar, thirstPerc)
		
		offset = offset + barH + HUD_var.bar_spacing
		local hungPerc = Hunger / 100
		makeBar(x, y + offset+RelH(1), bgH, bgW , "Hunger:", Hunger, HUD_col, HUD_col.hunger_bar, hungPerc)
		
		offset = offset + barH + HUD_var.bar_spacing
		local hpVar = ply:Health( ) / MaxHealth 
		makeBar(x, y + offset+RelH(1), bgH, bgW ,"Health:", ply:Health( ), HUD_col, HUD_col.hp_bar, hpVar)
		
		offset = offset + barH + HUD_var.bar_spacing
		local endPerc = Endurance / 100
		makeBar(x, y + offset, bgH, bgW , "Endurance:", Endurance, HUD_col, HUD_col.end_bar, endPerc)
		--Inside Indicator
		insideInd(x-5 + bgW + HUD_var.text_spacing, y + offset+RelH(18), bgH-RelH(25), RelH(5))
		
		--XP, Ownership, Inside Indicator, clock, class, Resources
		
		--Bottom Left Info Panel (old)
		local infPH = txtHeight + (HUD_var.padding * 2)
		local infPW = 150
		local infoPainNum = 3 --Number of items in the info pains
		local blX = HUD_var.marginX
		local blY = ScrH() - HUD_var.marginY - (infPH * infoPainNum)
	--	surface.SetDrawColor( 200, 200, 200, 90 ) 
	--	surface.SetMaterial( Material( "vgui/spawnmenu/bg" ) )
	--	surface.DrawTexturedRect( blX, blY, infPW, infPH ) 
		
		--Gets player Resources                                            !!!!!!! FIX TEXT COLOR !!!!!!!
		local scrap      = GetResource("Scrap")
		local smallparts = GetResource("Small_Parts")
		local chems      = GetResource("Chemicals")
		
		--Offsets (old)
		local txtYOffset = 0
		local xOffset = blX + infPW + HUD_var.bar_spacing
		
		--New positions for resources
		local pResX = ScrW()/2 - RelW(59)
		local pResY = ScrH()/2 - RelH(29)
		
		--Remember alignRec()
		--Scrap
		PNRP_HUD:PaintRoundedPanel( 10, pResX, pResY, RelW(170), RelH(15),{border=Color(0,0,0, 255 ),background = Color( 0, 0, 0, 255 )} )
		PNRP_HUD:PaintText( pResX+RelW(165) - RelW(alignRec(scrap,7)), pResY, scrap, HUD_var.font, HUD_col.text )
		
		--Small Parts
		PNRP_HUD:PaintRoundedPanel( 10, pResX, pResY+RelH(32), RelW(170), RelH(15),{border=Color(0,0,0, 255 ),background = Color( 0, 0, 0, 255 )} )
		PNRP_HUD:PaintText( pResX+RelW(165) - RelW(alignRec(smallparts,7)), pResY+RelH(32), smallparts, HUD_var.font, HUD_col.text )
		
		--Chems
		PNRP_HUD:PaintRoundedPanel( 10, pResX, pResY+RelH(66), RelW(170), RelH(15),{border=Color(0,0,0, 255 ),background = Color( 0, 0, 0, 255 )} )
		PNRP_HUD:PaintText( pResX+RelW(165) - RelW(alignRec(chems,7)), pResY+RelH(66), chems, HUD_var.font, HUD_col.text )
		
		--Old shit
		--Scrap
		--[[PNRP_HUD:PaintRoundedPanel( 0, blX, blY + txtYOffset, infPW, infPH, HUD_col.bg )
		surface.SetDrawColor( HUD_col.border );
		surface.DrawOutlinedRect( blX, blY + txtYOffset, infPW, infPH );
		PNRP_HUD:PaintText( blX + HUD_var.padding + 5, blY + txtYOffset + HUD_var.padding, "Scrap:", HUD_var.font, HUD_col.text )
		PNRP_HUD:PaintText( blX + HUD_var.padding + 90, blY + txtYOffset + HUD_var.padding, scrap, HUD_var.font, HUD_col.text )
		
		--Small Parts
		txtYOffset = txtYOffset + txtHeight + HUD_var.text_spacing + (HUD_var.bar_spacing * 2)
		PNRP_HUD:PaintRoundedPanel( 0, blX, blY + txtYOffset, infPW, infPH, HUD_col.bg )
		surface.SetDrawColor( HUD_col.border );
		surface.DrawOutlinedRect( blX, blY + txtYOffset, infPW, infPH );
		PNRP_HUD:PaintText( blX + HUD_var.padding + 5, blY + txtYOffset + HUD_var.padding, "Small Parts:", HUD_var.font, HUD_col.text )
		PNRP_HUD:PaintText( blX + HUD_var.padding + 90, blY + txtYOffset + HUD_var.padding, smallparts, HUD_var.font, HUD_col.text )
		
		--Chems
		txtYOffset = txtYOffset + txtHeight + HUD_var.text_spacing + (HUD_var.bar_spacing * 2)
		PNRP_HUD:PaintRoundedPanel( 0, blX, blY + txtYOffset, infPW, infPH, HUD_col.bg )
		surface.SetDrawColor( HUD_col.border );
		surface.DrawOutlinedRect( blX, blY + txtYOffset, infPW, infPH );
		PNRP_HUD:PaintText( blX + HUD_var.padding + 5, blY + txtYOffset + HUD_var.padding, "Chemicals:", HUD_var.font, HUD_col.text )
		PNRP_HUD:PaintText( blX + HUD_var.padding + 90, blY + txtYOffset + HUD_var.padding, chems, HUD_var.font, HUD_col.text )
		
		
		--XP
		PNRP_HUD:PaintRoundedPanel( 0, xOffset, blY + txtYOffset, infPW, infPH, HUD_col.bg )
		surface.SetDrawColor( HUD_col.border );
		surface.DrawOutlinedRect( xOffset, blY + txtYOffset, infPW, infPH );
		PNRP_HUD:PaintText( xOffset + HUD_var.padding + 5, blY + txtYOffset + HUD_var.padding, "Experience:", HUD_var.font, HUD_col.text )
		PNRP_HUD:PaintText( xOffset + HUD_var.padding + 90, blY + txtYOffset + HUD_var.padding, GetXP(), HUD_var.font, HUD_col.text )]]
		
		local compWidth = 360 + (HUD_var.text_spacing * 4)
		local cxCompass = (ScrW() / 2) - (compWidth / 2)
		
		--Clock
		local vtime
		vtime = Hour..":"..Minute.." "..Day.."/"..Month.."/"..Year
		local vTimeY = HUD_var.marginY + (HUD_var.padding * 2) + txtHeight + HUD_var.bar_spacing
		local vTimeX = cxCompass
		local CHeight = txtHeight + (HUD_var.text_spacing * 2)
		local CWidth = 75
		
		--PDA Clock
		local pTimeX = ScrW()/2 + RelW(107)
		local pTimeY = ScrH()/2 - RelH(235)
		PNRP_HUD:PaintRoundedPanel( 10, pTimeX, pTimeY-RelH(2), RelW(45), RelH(15),{border=Color(0,0,0, 255 ),background = Color( 0, 0, 0, 255 )} )
		PNRP_HUD:PaintText( pTimeX+7, pTimeY-1, convertTimeNumber(Hour)..":"..convertTimeNumber(Minute), HUD_var.font, HUD_col.text )
		local pDateX = ScrW()/2 + RelW(107)
		local pDateY = ScrH()/2 - RelH(255)
		PNRP_HUD:PaintRoundedPanel( 10, pDateX-RelW(15), pDateY+RelH(1), RelW(71), RelH(15),{border=Color(0,0,0, 255 ),background = Color( 0, 0, 0, 255 )} )
		PNRP_HUD:PaintText( pDateX-10, pDateY+RelH(3), convertTimeNumber(Day).."/"..convertTimeNumber(Month).."/"..(Year), HUD_var.font, HUD_col.text)
		
		local tgoWidth = compWidth-(CWidth*2)-(HUD_var.bar_spacing*2)
		showOwner((ScrW() / 2) - (tgoWidth / 2), vTimeY, CHeight, tgoWidth)
		
		PNRP_HUD:showGas((ScrW() / 2) - compWidth, HUD_var.marginY, 20, 125, HUD_var, HUD_col)
	end
end

function insideInd(x, y, h, w)
	
	if (LocalPlayer():IsOutside()) then
		surface.SetDrawColor( HUD_col.inside_indic.offfill ) 
		
	else
		surface.SetDrawColor( HUD_col.inside_indic.onfill ) 
	end
	
	surface.DrawRect(x, y, w, h)
	
	PNRP_HUD:PaintRoundedPanel( 0, x-1, y, w, h, HUD_col.bg )
	surface.SetDrawColor( HUD_col.border );
	surface.DrawOutlinedRect( x, y, w, h );

end

function makeBar(x, y, bgH, bgW, txt1, txt2, color, barcolor, barVar)

	local _, txtHeight = PNRP_HUD:TextSize( "TEXT", HUD_var.font ) --Gets the size (height) of the font

	local bar_width = HUD_var.bar_width
	local bar_height = HUD_var.bar_height
	
--	local bgH = (HUD_var.padding * 2) + txtHeight + bar_height + HUD_var.text_spacing
--	local bgW = (HUD_var.padding * 2) + bar_width
	
--	surface.SetDrawColor( 200, 200, 200, 90 ) 
--	surface.SetMaterial( Material( "vgui/spawnmenu/bg" ) )
--	surface.DrawTexturedRect( x, y, bgW, bgH ) 
	-- surface.SetDrawColor( HUD_col.border );
	-- surface.DrawOutlinedRect( x, y, bgW, bgH );
	-- PNRP_HUD:PaintRoundedPanel( 0, x, y, bgW, bgH, color.bg )
	
	--Paints the Bar TXT
	-- local txtY = y + HUD_var.padding
	-- PNRP_HUD:PaintText( x + HUD_var.padding, txtY, txt1, HUD_var.font, color.text )
	-- PNRP_HUD:PaintText( x + HUD_var.padding + 75, txtY, txt2, HUD_var.font, color.text )
	
	--Paints the Bar
	local barY = y + txtHeight + HUD_var.text_spacing
	PNRP_HUD:PaintBar( x + HUD_var.padding, barY, bar_width, bar_height, barcolor, barVar )

end

