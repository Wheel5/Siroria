Siroria = Siroria or { }
local Siroria = Siroria

local EM		= GetEventManager()

Siroria.name		= "Siroria"
Siroria.version		= "1.0.0"
Siroria.varVersion 	= "1"

Siroria.IDs 		= {
	[109081] = true,	-- Perfect
	[107095] = true,	-- Non-Perfect (?)
}
Siroria.downTime	= 0

Siroria.UPDATE_INTERVAL	= 100

Siroria.COLORS = {
	["UP"] = {
		0, 1, 0,
	},
	["DOWN"] = {
		1, 0, 0,
	}
}

Siroria.defaults	= {
	["offsetX"]	= 500,
	["offsetY"]	= 500,
	["timerSize"]	= 48,
	["passiveHide"]	= false,
	["COLORS"]	= Siroria.COLORS,
	["showStacks"]	= true,
}

function Siroria.setPos()
	local x, y = Siroria.savedVars.offsetX, Siroria.savedVars.offsetY
	SiroriaFrame:ClearAnchors()
	SiroriaFrame:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, x, y)
end

function Siroria.savePos()
	Siroria.savedVars.offsetX = SiroriaFrame:GetLeft()
	Siroria.savedVars.offsetY = SiroriaFrame:GetTop()
end

function Siroria.hideOutOfCombat()
	if Siroria.savedVars.passiveHide then 
		SiroriaFrame:SetHidden(not IsUnitInCombat("player"))
	end
end

function Siroria.hideFrame()
	SiroriaFrame:SetHidden(IsReticleHidden())
	if not IsReticleHidden() then Siroria.hideOutOfCombat() end
end

function Siroria.setFontSize(size)
	SiroriaFrameTime:SetFont(string.format('%s|%d|%s', '$(CHAT_FONT)', size, 'soft-shadow-thick'))
end

function Siroria.countDown()
 	if not Siroria.active and (Siroria.downTime - GetGameTimeMilliseconds()/1000 > 0) then
		SiroriaFrameTime:SetText(string.format("%.1f", Siroria.time(Siroria.downTime)))
	else
		SiroriaFrameTime:SetColor(unpack(Siroria.savedVars.COLORS.UP))
		SiroriaFrameTime:SetText("0.0")
		EM:UnregisterForUpdate(Siroria.name.."Update")
	end
end

function Siroria.time(nd)
	return math.floor((nd - GetGameTimeMilliseconds()/1000) * 10 + 0.5)/10
end

function Siroria.combatEvent(_, _, _, _, _, _, sourceName, _, _, _, _, _, _, _, _, _, abilityID)
	if Siroria.IDs[abilityID] and zo_strformat(SI_UNIT_NAME, sourceName) == zo_strformat(SI_UNIT_NAME, GetUnitName("player")) then
		EM:RegisterForUpdate(Siroria.name.."Update", Siroria.UPDATE_INTERVAL, Siroria.countDown)
		Siroria.downTime = GetGameTimeMilliseconds()/1000 + 10	-- 10 seconds after siroria procs
		SiroriaFrameTime:SetColor(unpack(Siroria.savedVars.COLORS.DOWN))
		Siroria.active = false
	end
end

function Siroria.Init(event, addon)
	if addon ~= Siroria.name then return end
	EM:UnregisterForEvent(Siroria.name.."Load", EVENT_ADD_ON_LOADED)

	Siroria.savedVars = ZO_SavedVars:New(Siroria.name.."SavedVars", Siroria.varVersion, nil, Siroria.defaults)
	
	Siroria.setFontSize(Siroria.savedVars.timerSize)
	Siroria.setPos()
	SiroriaFrame:SetHidden(IsReticleHidden())
	SiroriaFrameTime:SetColor(unpack(Siroria.savedVars.COLORS.UP))

	Siroria.setupMenu()
	Siroria.hideOutOfCombat()

	EM:RegisterForEvent(Siroria.name.."Hide", EVENT_RETICLE_HIDDEN_UPDATE, Siroria.hideFrame)
	EM:RegisterForEvent(Siroria.name.."PassiveHide", EVENT_PLAYER_COMBAT_STATE, Siroria.hideOutOfCombat)

	EM:RegisterForEvent(Siroria.name.."ECE", EVENT_COMBAT_EVENT, Siroria.combatEvent)
	EM:AddFilterForEvent(Siroria.name.."ECE", EVENT_COMBAT_EVENT, REGISTER_FILTER_COMBAT_RESULT, ACTION_RESULT_EFFECT_GAINED)

end

EM:RegisterForEvent(Siroria.name.."Load", EVENT_ADD_ON_LOADED, Siroria.Init)
