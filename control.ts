import {shouldEnterManualMode} from "./utils";

script.on_event(defines.events.on_train_changed_state, function(event) {
  const { train } = event
  if (shouldEnterManualMode(train))
    train.manual_mode = true
})

