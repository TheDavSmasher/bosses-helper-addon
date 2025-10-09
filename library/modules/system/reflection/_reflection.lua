---@meta System.Reflection

---@class System.Reflection
local reflection = {}

---@class BindingFlags : Enum

---@type CSEnum<BindingFlags>
reflection.BindingFlags = {}

---@class MemberInfo : Object

---@class FieldInfo : MemberInfo
local fieldInfo = {}

---@param obj any|nil
---@return Object|nil
function fieldInfo:GetValue(obj) end

return reflection