---@meta Celeste.Mod.BossesHelper.Code.Helpers.BossesHelperUtils

---@class c__BossesHelperUtils
local BossesHelperUtils = {}

---Return the LuaFunction as a Collision delegate.
---@param func L_Collision
---@return Collision
function BossesHelperUtils.ToCollision(func) end

---Return the LuaFunction as an Ease.Easer delegate.
---@param func L_Ease.Easer
---@return Ease.Easer
function BossesHelperUtils.ToEaser(func) end

---Return the LuaFunction as a DashCollision delegate.
---@param func L_DashCollision
---@return DashCollision
function BossesHelperUtils.ToDashCollision(func) end

---Play an animation on the Sprite and wait for its loop to finish
---@param tself Sprite
---@param anim string
---@return IEnumerator # The enumerator to wait.
function BossesHelperUtils.PlayAnim(tself, anim) end

---Create a Position Tween on the given entity, offsetting the position each frame.
---This Tween ignores all collisions.
---@param tself Entity The Entity to move.
---@param target Vector2 The target position.
---@param time float The time to take.
---@param easer? Ease.Easer The Easer for the motion.
---@return Tween
function BossesHelperUtils.PositionTween(tself, target, time, easer) end

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
function BossesHelperUtils.PositionTween(tself, target, time, actNaive, stopOnCollide, collisionH, collisionV, easer) end

---Create a Position Tween on the given actor, calling move each frame.
---@param tself BossActor The Actor to move.
---@param target Vector2 The target position.
---@param time float The time to take.
---@param actNaive? bool Whether to use NaiveMove or standard move operations.
---@param stopOnCollide? bool Whether the Tween should stop if a collision happens.
---@param easer? Ease.Easer The Easer for the motion.
---@return Tween
function BossesHelperUtils.PositionTween(tself, target, time, actNaive, stopOnCollide, easer) end

return BossesHelperUtils
