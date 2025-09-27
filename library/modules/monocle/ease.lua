---@meta Monocle.Ease

---@class c__Ease : { [string]: Ease.Easer }
local c_Ease = {}

---@alias Ease.Easer fun(t: float): float

---Invert an [Ease.Easer](lua://Ease.Easer).
---@param easer Ease.Easer The [Ease.Easer](lua://Ease.Easer) to invert
---@return Ease.Easer inverse The inverted [Ease.Easer](lua://Ease.Easer)
function c_Ease.Invert(easer) end

return c_Ease