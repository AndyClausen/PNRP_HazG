
//////////////////////////////////////////////
//				   H.A.Z.G   				//
//				  Minigames					//
//											//
//	 This will include all the minigames	//
//  in our server. Minigames are used as a	//
//	  way to entertain the players while	//
//	 they're doing basic game-stuff, like	//
//	   cooking, loading magazines, etc.		//
//											//
//	   Use with Andy's permission only!		//
//											//
//			 By Andy (coding) and			//
//		  wiktor (pictures and shit)		//
//////////////////////////////////////////////



//////////////////////////////////////////////////////
////////////////// MAGAZINE LOADER ///////////////////
//--------------------------------------------------//

local MGFrame
MGFrame = false
local MG_URL = "http://hazgam.com/server_content_hidden/minigames/"

function PNRP.OpenMinigameWindow()

	--Stops the multi window exploit
	if MGFrameCK then return end 
	MGFrameCK = true
	local JSString = net.ReadString()
	local ent = net.ReadEntity()
	
	MGFrame = vgui.Create( "DFrame" )
	MGFrame:SetTitle( "Magazine Loader" )
	MGFrame:SetSize( ScrW() * 0.75, ScrH() * 0.75 )
	MGFrame:Center()
	MGFrame:MakePopup()
	function MGFrame:OnClose()
		MGFrameCK = false
		net.Start("mgclosed")
			net.WriteEntity(ent)
		net.SendToServer()
		timer.Stop( "mgjstimer" )
	end

	local HTML = vgui.Create( "DHTML" , MGFrame )
	HTML:Dock( FILL )
	HTML:SetSize( ScrW() * 0.75, ScrH() * 0.75 )
	HTML:OpenURL( MG_URL )
	HTML:SetAllowLua( true )
	timer.Create( "mgjstimer", 1, 1, function()
		HTML:RunJavascript( JSString )
	end)
end
net.Receive("sendjs",PNRP.OpenMinigameWindow)

//--------------------------------------------------//
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////