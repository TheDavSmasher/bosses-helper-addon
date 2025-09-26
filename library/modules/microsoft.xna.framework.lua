---@meta Microsoft.XNA.Framework

---@class Microsoft.XNA.Framework
local framework = {}

---@class Rectangle
---@field Left int
---@field Right int
---@field Top int
---@field Bottom int
---@field X int
---@field Y int
local rectangle = {}

--#region Vector2
---@class Microsoft.XNA.Framework.Vector2
---@field Zero Vector2
---@field One Vector2
---@field UnitX Vector2
---@field UnitY Vector2
---@overload fun(x: float, y: float): Vector2
---@overload fun(value: float): Vector2
framework.Vector2 = {}

---@class Vector2
---@field X float The x component of the vector
---@field Y float The y component of the vector
---@operator unm : Vector2
---@operator add(Vector2): Vector2
---@operator sub(Vector2): Vector2
---@operator mul(Vector2|float): Vector2
---@operator div(Vector2|float): Vector2
local vector2 = {}

---Get the length of the Vector2
---@return float length The Vector2's length
function vector2:Length() end

---@param start Vector2
---@param target Vector2
---@param amount float
---@return Vector2
function vector2:Lerp(start, target, amount) end
--#endregion

return framework