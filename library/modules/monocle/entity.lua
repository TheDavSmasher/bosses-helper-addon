---@meta Monocle.Entity

---@class c__Entity
---@overload fun(): Entity
local c_Entity = {}

---@class Entity
---@field Active bool
---@field Position Vector2
---@field Center Vector2
---@field Collidable boolean
---@field Depth int
local _entity = {}

function _entity:RemoveSelf() end

---Add a Component to the Entity.
---@param component Component The Component to add.
function _entity:Add(component) end

_entity.add = _entity.Add

return c_Entity