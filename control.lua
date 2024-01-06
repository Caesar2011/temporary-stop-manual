--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____utils = require("utils.index")
local shouldEnterManualMode = ____utils.shouldEnterManualMode
script.on_event(
    defines.events.on_train_changed_state,
    function(event)
        local ____event_0 = event
        local train = ____event_0.train
        if shouldEnterManualMode(train) and train.state == defines.train_state.arrive_station then
            train.manual_mode = true
        end
    end
)
return ____exports
