---@meta CutsceneHelper

---@class _G
---@field luanet table Luanet server

---@class InjectedData : table
---@field modMetaData EverestModuleMetadata

---@class LuaCoroutineProxy
---@field resume ProxyResume
---@field value thread

---@alias ProxyResume fun(self: LuaCoroutineProxy, ...: any): boolean, string|LuaException|nil

---@alias LuaPreparer
---| fun(env: table, func: function): boolean
---| fun(env: table, func: function): function, ...
