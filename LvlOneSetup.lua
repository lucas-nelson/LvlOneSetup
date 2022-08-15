-- inspired by https://github.com/Zarant/_Lvl1QuickSetup
-- thank you Zarant!

local addonName,addon = ...
local consoleVariables = {};
local Frame = CreateFrame("Frame");

local PlayerX = -160
local PlayerY = -200
local TargetX = 160
local TargetY = -200

Frame:RegisterEvent("ADDON_LOADED")
Frame:RegisterEvent("CINEMATIC_START")

Frame:SetScript("OnEvent",function(self,event,arg1,arg2,arg3,arg4)
	if event == "CINEMATIC_START" then
		if UnitLevel('player') == 1 or (UnitClass('player') == 'Death Knight' and UnitLevel('player') == 55) then
			-- show all the action bars
			local a=true SetActionBarToggles(a,a,a,a,0) SHOW_MULTI_ACTIONBAR_1=a SHOW_MULTI_ACTIONBAR_2=a SHOW_MULTI_ACTIONBAR_3=a SHOW_MULTI_ACTIONBAR_4 = a MultiActionBar_Update()

			-- set account / character variables
			for var,value in pairs(consoleVariables) do
				SetCVar(var,value)
			end

			-- move the player and target frames to a better place
			PlayerFrame:ClearAllPoints();
			PlayerFrame:SetPoint("CENTER", UIParent, "CENTER", PlayerX, PlayerY);
			PlayerFrame:SetUserPlaced(true);

			TargetFrame:ClearAllPoints();
			TargetFrame:SetPoint("CENTER", UIParent, "CENTER", TargetX, TargetY);
			TargetFrame:SetUserPlaced(true);

			-- check the "Experience" message type
			ChatFrame_AddMessageGroup(DEFAULT_CHAT_FRAME, "COMBAT_XP_GAIN")

			-- uncheck the General and LookingForGroup chat channels
			-- needs to be on a delay otherwise something else adds them after
			C_Timer.After(10, function()
				ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, "General")
				ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, "LookingForGroup")
			end)

			StopCinematic()
			CameraZoomOut(30)
		end
	elseif event == "ADDON_LOADED" and arg1 == addonName then
		if UnitLevel('player') == 1 or (UnitClass('player') == 'Death Knight' and UnitLevel('player') == 55) then
			local _ = addon.config_cache:gsub("([^\n\r]-)[\n\r]",function(c)
				var,value = string.match(c,"%s*SET%s+(%a+)%s+\"(.*)\"")
				if var and var ~= "" then
					consoleVariables[var] = value
				end
				return ""
			end)
		end
	end
end)


