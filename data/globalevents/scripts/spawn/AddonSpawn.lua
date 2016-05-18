local config = {
	['Monday'] = Position(32359, 32232, 7),
	['Tuesday'] = Position(32359, 32232, 7),
	['Wednesday'] = Position(32359, 32232, 7),
	['Thursday'] = Position(32359, 32232, 7),
	['Friday'] = Position(32359, 32232, 7),
	['Saturday'] = Position(32359, 32232, 7),
	['Sunday'] = Position(32359, 32232, 7)
}

-- Should Addoner spawn as in real tibia?
local spawnByDay = true

function onStartup()
	if spawnByDay then
		local npc = Game.createNpc('Addoner', config[os.date('%A')], false, true)
		if npc then
			npc:setMasterPos(config[os.date('%A')])
		end
	else
		local npc
		for k, position in pairs(config) do
			npc = Game.createNpc('Addoner', position, false, true)
			if npc then
				npc:setMasterPos(position)
			end
		end
	end

	return true
end
