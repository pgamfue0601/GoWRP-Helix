local playerMeta = FindMetaTable("Player")

function playerMeta:IsCombine()
	local faction = self:Team()
	return faction == FACTION_MPF or faction == FACTION_OTA
end

function playerMeta:IsMechanicus()
	local faction = self:Team()
	return faction == FACTION_MECHANICUS
end

function playerMeta:IsHumanoid()
	local faction = self:Team()
	return faction == FACTION_GUARD or faction == FACTION_FELINID or faction == FACTION_RATLING
end

function playerMeta:IsDispatch()
	local name = self:Name()
	local faction = self:Team()
	local bStatus = faction == FACTION_OTA

	if (!bStatus) then
		for k, v in ipairs({ "SCN", "DvL", "SeC" }) do
			if (Schema:IsCombineRank(name, v)) then
				bStatus = true

				break
			end
		end
	end

	return bStatus
end
