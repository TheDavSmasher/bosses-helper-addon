---@meta Celeste.Mod.BossesHelper.Code.Helpers

---@diagnostic disable: missing-fields

---@class Celeste.Mod.BossesHelper.Code.Helpers
local helpers = {}

--#region LuaException

---@class c__LuaException
---@overload fun(message: string): LuaException
helpers.LuaException = {}

---@class LuaException : Exception
local luaException = {}

--#endregion

---@module "Celeste.Mod.BossesHelper.Code.Helpers.BossesHelperUtils"
helpers.BossesHelperUtils = {}

---@module "Celeste.Mod.BossesHelper.Code.Helpers.LuaBossHelper"
helpers.LuaBossHelper = {}

---@module "Celeste.Mod.BossesHelper.Code.Helpers.Lua"
helpers.Lua = {}

return helpers