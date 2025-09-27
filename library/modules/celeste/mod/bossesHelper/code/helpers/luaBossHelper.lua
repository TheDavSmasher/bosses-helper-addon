---@meta Celeste.Mod.BossesHelper.Code.Helpers.LuaBossHelper

---@class c__LuaBossHelper
---@field HelperFunctions string
local LuaBossHelper = {}

---Get the string contents of the file.
---@param file string The file path.
---@return string contents
function LuaBossHelper.GetFileContent(file) end

---Create a ColliderList from the given Colliders.
---@param ... Collider
---@return ColliderList
function LuaBossHelper.GetColliderListFromLuaTable(...) end

---Add the given function as a Coroutine on the Entity passed.
---@param entity Entity The Entity to add the Coroutine to.
---@param func function The function to execute in the Coroutine.
function LuaBossHelper.AddConstantBackgroundCoroutine(entity, func) end

---Pass the functions to be used as triggers while saying the given dialog ID in a Textbox.
---@param dialog string The dialog ID to use for the Textbox.
---@param funcs function[] The functions to use as triggers.
---@return IEnumerator
function LuaBossHelper.Say(dialog, funcs) end

---Execute the given function in the background after the given delay.
---@param func function The function to call.
---@param delay float The amount of time to wait to execute the function.
function LuaBossHelper.DoMethodAfterDelay(func, delay) end

return LuaBossHelper