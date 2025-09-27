---@meta Celeste.Mod.BossesHelper.Code.Helpers.Lua

---@class Celeste.Mod.BossesHelper.Code.Helpers.Lua
local lua = {}

---@module "Celeste.Mod.BossesHelper.Code.Helpers.Lua.LuaMethodWrappers"
lua.LuaMethodWrappers = {}

--#region LuaFuncCoroutine

---@class c__LuaFuncCoroutine
---@overload fun(proxy: LuaCoroutineProxy): LuaFuncCoroutine
lua.LuaFuncCoroutine = {}

---@class LuaFuncCoroutine : LuaCoroutine
local luaFuncCoroutine = {}

--#endregion

return lua
