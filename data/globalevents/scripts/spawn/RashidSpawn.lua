local config = {
	['Monday'] = Position(32359, 32224, 6),
	['Tuesday'] = Position(32359, 32224, 6),
	['Wednesday'] = Position(32359, 32224, 6),
	['Thursday'] = Position(32359, 32224, 6),
	['Friday'] = Position(32359, 32224, 6),
	['Saturday'] = Position(32359, 32224, 6),
	['Sunday'] = Position(32359, 32224, 6)
}

-- Should Nahlesar spawn as in real tibia?
local spawnByDay = true

function onStartup()
	if spawnByDay then
		local npc = Game.createNpc('Nahlesar', config[os.date('%A')], false, true)
		if npc then
			npc:setMasterPos(config[os.date('%A')])
		end
	else
		local npc
		for k, position in pairs(config) do
			npc = Game.createNpc('Nahlesar', position, false, true)
			if npc then
				npc:setMasterPos(position)
			end
		end
	end

	return true
end
