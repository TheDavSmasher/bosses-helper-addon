---@meta Celeste.Mod.BossesHelper.Code.Helpers.Lua

---@class Celeste.Mod.BossesHelper.Code.Helpers.Lua
local lua = {}

---@module "Celeste.Mod.BossesHelper.Code.Helpers.Lua.LuaMethodWrappers"
lua.LuaMethodWrappers = {}

---@module "Celeste.Mod.BossesHelper.Code.Helpers.Lua.LuaDelegates"
lua.LuaDelegates = {}

--#region LuaProxyCoroutine

---@class c__LuaProxyCoroutine
---@overload fun(proxy: LuaCoroutineProxy): LuaProxyCoroutine
lua.LuaProxyCoroutine = {}

---@class LuaProxyCoroutine : LuaCoroutine
local LuaProxyCoroutine = {}

--#endregion

return lua
