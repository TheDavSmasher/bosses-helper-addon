---@meta Celeste.Mod.BossesHelper.Code.Helpers

---@class Celeste.Mod.BossesHelper.Code.Helpers
local helpers = {}

--#region LuaException

---@class c__LuaException
---@overload fun(message: string): LuaException
helpers.LuaException = {}

---@class LuaException : Exception
local luaException = {}

--#endregion

--#region BossesHelperUtils

---@class c__BossesHelperUtils
helpers.BossesHelperUtils = {}

---Play an animation on the Sprite and wait for its loop to finish
---@param tself Sprite
---@param anim string
---@return IEnumerator # The enumerator to wait.
function helpers.BossesHelperUtils.PlayAnim(tself, anim) end

---Create a Position Tween on the given entity, offsetting the position each frame.
---This Tween ignores all collisions.
---@param tself Entity The Entity to move.
---@param target Vector2 The target position.
---@param time float The time to take.
---@param easer? Ease.Easer The Easer for the motion.
---@return Tween
function helpers.BossesHelperUtils.PositionTween(tself, target, time, easer) end

---Create a Position Tween on the given actor, calling move each frame.
---@param tself Actor The Actor to move.
---@param target Vector2 The target position.
---@param time float The time to take.
---@param actNaive? bool Whether to use NaiveMove or standard move operations.
---@param stopOnCollide? bool Whether the Tween should stop if a collision happens.
---@param collisionH? Collision What to do if the Actor collides horizonally.
---@param collisionV? Collision What to do if the Actor collides vertically.
---@param easer? Ease.Easer The Easer for the motion.
---@return Tween
function helpers.BossesHelperUtils.PositionTween(tself, target, time, actNaive, stopOnCollide, collisionH, collisionV, easer) end

---Create a Position Tween on the given actor, calling move each frame.
---@param tself BossActor The Actor to move.
---@param target Vector2 The target position.
---@param time float The time to take.
---@param actNaive? bool Whether to use NaiveMove or standard move operations.
---@param stopOnCollide? bool Whether the Tween should stop if a collision happens.
---@param easer? Ease.Easer The Easer for the motion.
---@return Tween
function helpers.BossesHelperUtils.PositionTween(tself, target, time, actNaive, stopOnCollide, easer) end

--#endregion

--#region LuaBossHelper

---@class c__LuaBossHelper
---@field HelperFunctions string
helpers.LuaBossHelper = {}

---Get the string contents of the file.
---@param file string The file path.
---@return string contents
function helpers.LuaBossHelper.GetFileContent(file) end

---Create a ColliderList from the given Colliders.
---@param ... Collider
---@return ColliderList
function helpers.LuaBossHelper.GetColliderListFromLuaTable(...) end

---Add the given function as a Coroutine on the Entity passed.
---@param entity Entity The Entity to add the Coroutine to.
---@param func function The function to execute in the Coroutine.
function helpers.LuaBossHelper.AddConstantBackgroundCoroutine(entity, func) end

---Pass the functions to be used as triggers while saying the given dialog ID in a Textbox.
---@param dialog string The dialog ID to use for the Textbox.
---@param funcs function[] The functions to use as triggers.
---@return IEnumerator
function helpers.LuaBossHelper.Say(dialog, funcs) end

---Execute the given function in the background after the given delay.
---@param func function The function to call.
---@param delay float The amount of time to wait to execute the function.
function helpers.LuaBossHelper.DoMethodAfterDelay(func, delay) end

--#endregion

---@module "Celeste.Mod.BossesHelper.Code.Helpers.Lua"
helpers.Lua = {}

return helpers