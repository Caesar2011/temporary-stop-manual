--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.isDefaultTemporaryStop(scheduleItem)
    if scheduleItem.temporary ~= true or scheduleItem.wait_conditions == nil or #scheduleItem.wait_conditions == 0 then
        return false
    end
    local waitCondition = scheduleItem.wait_conditions[1]
    return waitCondition.type == "time" and waitCondition.ticks == 300
end
function ____exports.shouldEnterManualMode(train)
    local ____opt_0 = train.schedule
    local records = ____opt_0 and ____opt_0.records
    local ____opt_2 = train.schedule
    local current = ____opt_2 and ____opt_2.current
    return records ~= nil and current ~= nil and ____exports.isDefaultTemporaryStop(records[current + 1])
end
return ____exports
