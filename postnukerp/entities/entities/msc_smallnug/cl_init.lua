include('shared.lua')

function ENT:Draw()
	self.Entity:DrawModel()
	ply = LocalPlayer()
	-- Do not draw labels when a different model is used.
	-- If you want a different model with labels, make your own money entity and use GM.Config.MoneyClass.
	if self.Entity:GetModel() ~= "models/props_wasteland/gear02.mdl" then return end

	local Pos = self:GetPos()
	local Ang = ply:GetAngles()
	
	Ang:RotateAroundAxis(ply:GetAimVector():Angle():Up(), 270)
	Ang:RotateAroundAxis(ply:GetAimVector():Angle():Right(), 90)

	surface.SetFont("ChatFont")
	local text = tostring(self:GetAmount())
	local TextWidth = surface.GetTextSize(text)

	cam.Start3D2D(Pos + Ang:Right()*-8, Ang, 0.5)
		draw.WordBox(2, -TextWidth*0.5, -10, text, "ChatFont", Color(0, 0, 0, 0), Color(255,255,255,255))
	cam.End3D2D()
end
