---@meta CutsceneHelper

---@class _G
---@field luanet table Luanet server

---@class LuaCoroutineProxy
---@field resume ProxyResume
---@field value thread

---@alias ProxyResume fun(self: LuaCoroutineProxy, ...: any): boolean, string|LuaException|nil

---@alias LuaPreparer
---| fun(env: table, func: function): false
---| fun(env: table, func: function): function, ...
