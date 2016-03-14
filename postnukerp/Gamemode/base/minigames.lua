
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
///////////////////// MINIGAMES //////////////////////
//--------------------------------------------------//

//Table of all current games
local GameOpener = {["magload"]="MagazineLoader",["cookgame"]="CookingGame"}

util.AddNetworkString("sendjs")
util.AddNetworkString("mgclosed")
function PNRP.OpenMinigame( ent, ply, gameType, args )
	if not ply:IsPlayer() then return end
	if type(gameType)!= "string" or gameType=="" then return end
	
	//Create JS
	local argsString = "', '"
	if type(args) == "table" then
		for k,v in pairs(args) do
			argsString = argsString..tostring(v)
			if next(args,k) != nil then
				argsString = argsString.."', '"
			end
		end
	else
		argsString = "'"
	end
	
	local safeJSToSend = GameOpener[gameType].."( '"..ply:SteamID()..argsString.."' )"
	
	//Send vars to player to open VGUI
	net.Start("sendjs")
		net.WriteString(safeJSToSend)
		net.WriteEntity(ent)
	net.Send(ply)
	--print("safeJSToSend: "..safeJSToSend)
end

//Minigame entity no longer in use
net.Receive("mgclosed", function()
	net.ReadEntity().InUse = false
end)

//--------------------------------------------------//
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////

