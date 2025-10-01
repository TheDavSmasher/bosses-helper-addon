---@meta CutsceneHelper

---@class _G
---@field luanet table Luanet server

---@class LuaProxy
---@field resume ProxyResume
---@field value thread

---@alias ProxyResume fun(self: LuaProxy, ...: any): boolean, string|LuaException|nil
