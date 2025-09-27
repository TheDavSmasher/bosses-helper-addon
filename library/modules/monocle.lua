---@meta Monocle

---@class Monocle
local monocle = {}

--#region Calc

---@class c__Calc
monocle.Calc = {}

---Normalize a Vector2 with the given length or to a unit vector
---@param tself Vector2
---@param length? float The length to give the Vector2. Defaults to 1.
---@return Vector2 # The normalized Vector2
function monocle.Calc.SafeNormalize(tself, length) end

--#endregion

---@class Camera
---@field Position Vector2
local camera = {}

--#region Circle

---@class c__Circle
---@overload fun(radius: float, x: float, y: float): Circle
monocle.Circle = {}

---@class Circle : Collider
local circle = {}

--#endregion

---@class Collider : Component
local collider = {}

---@class ColliderList : Collider
local colliderList = {}

---@class Component
local _component = {}

--#region Coroutine

---@class c__Coroutine
---@overload fun(logic: IEnumerator): Coroutine
monocle.Coroutine = {}

---@class Coroutine : Component
local coroutine = {}

--#endregion

--#region Ease

---@class c__Ease : { [string]: Ease.Easer }
monocle.Ease = {}

---@alias Ease.Easer fun(t: float): float

---Invert an [Ease.Easer](lua://Ease.Easer).
---@param easer Ease.Easer The [Ease.Easer](lua://Ease.Easer) to invert
---@return Ease.Easer inverse The inverted [Ease.Easer](lua://Ease.Easer)
function monocle.Ease.Invert(easer) end

--#endregion

---@class c__Engine
---@field Scene Scene
monocle.Engine = {}

--#region Entity

---@class c__Entity
---@overload fun(): Entity
monocle.Entity = {}

---@class Entity
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

--#endregion

--#region Hitbox

---@class c__Hitbox
---@overload fun(width: float, height: float, x: float, y: float): Hitbox
monocle.Hitbox = {}

---@class Hitbox
local hitbox = {}

--#endregion

--#region Sprite

---@class Sprite
---@field Scale Vector2
local sprite = {}

---Play an animation.
---@param anim string The animation to play.
function sprite:Play(anim) end

--#endregion

--#region Scene

---@class Scene
local scene = {}

---Add an [Entity](lua://Entity) onto the [Scene](lua://Scene).
---@param entity Entity The [Entity](lua://Entity) to add.
function scene:Add(entity) end

---Remove an [Entity](lua://Entity) from the [Scene](lua://Scene).
---@param entity Entity The [Entity](lua://Entity) to remove.
function scene:Remove(entity) end

scene.add = scene.Add
scene.remove = scene.Remove

--#endregion

---@class StateMachine
---@field State int
---@field Locked boolean
local stateMachine = {}

return monocle