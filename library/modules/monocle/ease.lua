---@meta Monocle.Ease

---@class c__Ease : { [string]: Ease.Easer }
local c_Ease = {}

--#region Ease.Easer

---@class Ease.Easer : Delegate
---@field Invoke fun(self: Ease.Easer, t: float): float

---@alias L_Ease.Easer fun(t: float): float

--#endregion

---Invert an [Ease.Easer](lua://Ease.Easer).
---@param easer Ease.Easer The [Ease.Easer](lua://Ease.Easer) to invert
---@return Ease.Easer inverse The inverted [Ease.Easer](lua://Ease.Easer)
function c_Ease.Invert(easer) end

return c_Ease