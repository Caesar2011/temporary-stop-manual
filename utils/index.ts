
import type {LuaTrain, TrainScheduleRecord} from "factorio:runtime";

export function isDefaultTemporaryStop(scheduleItem: TrainScheduleRecord) {
  if (scheduleItem.temporary !== true
    || scheduleItem.wait_conditions === undefined
    || scheduleItem.wait_conditions.length === 0
  )
    return false
  const waitCondition = scheduleItem.wait_conditions[0]
  return waitCondition.type === "time" && waitCondition.ticks === 300
}

export function shouldEnterManualMode(train: LuaTrain): boolean {
  const records = train.schedule?.records
  const current = train.schedule?.current

  return records !== undefined && current !== undefined && isDefaultTemporaryStop(records[current-1])
}