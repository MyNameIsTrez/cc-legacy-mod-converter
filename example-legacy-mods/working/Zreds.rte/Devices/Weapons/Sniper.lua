function Create(self)
	self.origSharpLength = ToHDFirearm(self).SharpLength;
	self.origShakeRange = ToHDFirearm(self).ShakeRange;
	self.origSharpShakeRange = ToHDFirearm(self).SharpShakeRange;
	self.origReloadTime = ToHDFirearm(self).ReloadTime;
end

function Update(self)
	local Unit = MovableMan:GetMOFromID(self.RootID);
	if self:IsAttached() and MovableMan:IsActor(Unit) and Unit:IsInGroup("Z Steel Soldiers") and Unit:IsInGroup("Sharpshooters") then
		self.SharpLength = self.origSharpLength*1.2;
		self.ShakeRange = self.origShakeRange*0.5;
		self.SharpShakeRange = self.origSharpShakeRange*0.0;
		self.ReloadTime = self.origReloadTime*0.8;
		self.GetsHitByMOs = false;
	elseif self:IsAttached() and MovableMan:IsActor(Unit) and Unit:IsInGroup("Sharpshooters") then
		self.SharpLength = self.origSharpLength*1.1;
		self.ShakeRange = self.origShakeRange*0.75;
		self.SharpShakeRange = self.origSharpShakeRange*0.1;
		self.ReloadTime = self.origReloadTime*0.9;
		self.GetsHitByMOs = false;
	else
		self.SharpLength = self.origSharpLength;
		self.ShakeRange = self.origShakeRange;
		self.SharpShakeRange = self.origSharpShakeRange;
		self.ReloadTime = self.origReloadTime;
		self.GetsHitByMOs = true;
	end
end