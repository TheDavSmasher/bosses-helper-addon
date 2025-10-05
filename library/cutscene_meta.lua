---@meta CutsceneHelper

---@class _G
---@field luanet LuaNet

---@class LuaProxy
---@field resume ProxyResume
---@field value thread

---@alias ProxyResume fun(self: LuaProxy, ...: any): boolean, string|LuaException|nil
