-- inspired by https://github.com/Zarant/_Lvl1QuickSetup
-- thank you Zarant!

local addonName,addon = ...
local consoleVariables = {};
local Frame = CreateFrame("Frame");

local PlayerX = -160
local PlayerY = -140
local TargetX = 160
local TargetY = -140

Frame:RegisterEvent("ADDON_LOADED")
Frame:RegisterEvent("CINEMATIC_START")

Frame:SetScript("OnEvent",function(self,event,arg1,arg2,arg3,arg4)
	if event == "CINEMATIC_START" then
		if UnitLevel('player') == 1 or (UnitClass('player') == 'Death Knight' and UnitLevel('player') == 55) then
			print("LvlOneSetup: setting up...")

			-- show all the action bars
			-- update state for after a reload
			SetActionBarToggles(true, true, true, true, 1)

			-- update live in-game state
			SHOW_MULTI_ACTIONBAR_1 = true
			SHOW_MULTI_ACTIONBAR_2 = true
			SHOW_MULTI_ACTIONBAR_3 = true
			SHOW_MULTI_ACTIONBAR_4 = true

			-- update live "always show" state
			MultiActionBar_UpdateGrid("MultiBarBottomLeft", true);
			MultiActionBar_UpdateGrid("MultiBarBottomRight", true);
			MultiActionBar_UpdateGrid("MultiBarRight", true);
			MultiActionBar_UpdateGrid("MultiBarLeft", true);

			MultiActionBar_Update()

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

			-- reduce font size
			local fontFile, _, fontFlags = ChatFrame2:GetFont();
			ChatFrame2:SetFont(fontFile, 10, fontFlags);

			local fontFile, _, fontFlags = DEFAULT_CHAT_FRAME:GetFont();
			DEFAULT_CHAT_FRAME:SetFont(fontFile, 10, fontFlags);

			-- set chat window position and size
			DEFAULT_CHAT_FRAME:ClearAllPoints()
			DEFAULT_CHAT_FRAME:SetPoint("BOTTOMLEFT", UIParent, 3, 32)
			DEFAULT_CHAT_FRAME:SetHeight(320)
			DEFAULT_CHAT_FRAME:SetWidth(550)
			DEFAULT_CHAT_FRAME:SetUserPlaced(true)

			-- chat window somewhat opaque
			FCF_SetWindowAlpha(DEFAULT_CHAT_FRAME, 0.4)

			FCF_SavePositionAndDimensions(DEFAULT_CHAT_FRAME)

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


