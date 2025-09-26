---@meta Celeste.Mod

---@class Celeste.Mod : { [string]: table }
local mod = {}

---@class EverestModuleMetadata
---@field Name string
local everestModuleMetadata = {}

--#region Logger
---@class Celeste.Mod.Logger
mod.Logger = {}

---Log an Error message
---@param tag string The tag for the message.
---@param message string The message
function mod.Logger.Error(tag, message) end

---Log an Info message
---@param tag string The tag for the message.
---@param message string The message
function mod.Logger.Info(tag, message) end
--#endregion

--#region LuaCoroutine
---@class Celeste.Mod.LuaCoroutine
---@overload fun(proxy: LuaCoroutineProxy): LuaCoroutine
mod.LuaCoroutine = {}

---@class LuaCoroutine : IEnumerator
local luaCoroutine = {}
--#endregion

---@module "Celeste.Mod.BossesHelper"
mod.BossesHelper = {}

---@module "Celeste.Mod.LuaCutscenes"
mod.LuaCutscenes = {}

return mod