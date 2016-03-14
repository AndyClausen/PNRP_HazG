
//////////////////////////////////////////////
//				   H.A.Z.G   				//
//				   Helmets					//
//											//
//    This will include all HUD's for the	//
//	helmets on our server. The entities are	//
//	  in a different location, if you're	//
//			  looking for that.				//
//											//
//	   Use with Andy's permission only!		//
//		        							//
//			 By Andy (coding) and			//
//		  Wiktor (pictures and shit)		//
//////////////////////////////////////////////


local helmet = surface.GetTextureID( "helmets/gas_mask/gas_mask" )
function PNRP:StartHelmetHUD()
	surface.SetTexture( helmet )
	surface.SetDrawColor( 255,255,255,255 )
	surface.DrawTexturedRect(0,0,ScrW(),ScrH())
end

