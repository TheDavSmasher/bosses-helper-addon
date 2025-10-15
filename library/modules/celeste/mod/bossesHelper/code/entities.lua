---@meta Celeste.Mod.BossesHelper.Code.Entities

---@class Celeste.Mod.BossesHelper.Code.Entities
local entities = {}

--#region BossEntity

---@class BossEntity : Actor
---@field Sprite Sprite
local _bossEntity = {}

---Play an animation on the attached Sprite.
---@param anim string The animation to play
function _bossEntity:PlayAnim(anim) end

--#endregion

--#region AttackEntity

---@class c__AttackEntity
---@overload fun(position: Vector2, hitboxes: Collider, funcOnPlayer: fun(self: Entity, player: Player), startCollidable: boolean, spriteName: string, xScale?: float, yScale?: float) : AttackEntity
entities.AttackEntity = {}

---@class AttackEntity : BossEntity
local attackEntity = {}

--#endregion

--#region BossActor

---@class BossActor : BossEntity
---@field Speed Vector2
---@field GravityMult float
---@field SolidCollidable boolean
---@field Grounded boolean
---@field OnCollideH Collision
---@field OnCollideV Collision
local _bossActor = {}

--#endregion

--#region AttackActor

---@class c__AttackActor
---@overload fun(position: Vector2, hitboxes: Collider, funcOnPlayer: fun(self: Entity, player: Player), startCollidable: boolean, startSolidCollidable: boolean, spriteName: string, gravMult: float, maxFall: float, xScale?: float, yScale?: float): AttackActor
entities.AttackActor = {}

---@class AttackActor : BossActor
local attackActor = {}

--#endregion

--#region BossPuppet

---@class BossPuppet : BossActor
---@field Facing int
---@field groundFriction float
---@field airFriction float
---@field killOnContact boolean
---@field BossHitCooldown float
---@field BossDamageCooldown Stopwatch
---@field Hurtbox Collider
---@field KillCollider Collider
local bossPuppet = {}

---Maintain a component of the Boss's speed to the value during the time given. 
---@param speed float The speed component's value to maintain.
---@param isX boolean Whether to affect the x component of the speed.
---@param time float The time the value should be maintained.
---@return IEnumerator
function bossPuppet:Keep1DSpeed(speed, isX, time) end

---Set a component of the Boss's speed to the value, kept during the time given.
---@param speed float The speed component's value to maintain.
---@param isX boolean Whether to affect the x component of the speed.
---@param time float The time the value should be maintained.
function bossPuppet:Set1DSpeedDuring(speed, isX, time) end

---Create a Tween to transition one of the Boss's speed component.
---@param start float The starting speed value.
---@param target float The target speed value.
---@param time float The time the transition should take.
---@param isX boolean Whether to affect the x component of the speed.
---@param easer? Ease.Easer The Easer to transition the speed value.
---@return Tween # The created Tween
function bossPuppet:Speed1DTween(start, target, time, isX, easer) end

---Change the Boss's Hitbox to the one specified.
---@param tag? string The Hitbox group tag to change to.
function bossPuppet:ChangeHitboxOption(tag) end

---Change the Boss's Hurtbox to the one specified.
---@param tag? string The Hurtbox group tag to change to.
function bossPuppet:ChangeHurtboxOption(tag) end

---Change the Boss's KillCollider to the one specified.
---@param tag? string The KillCollider group tag to change to.
function bossPuppet:ChangeKillColliderOption(tag) end

---Change the Boss's Bouncebox to the one specified.
---@param tag? string The Bouncebox group tag to change to.
function bossPuppet:ChangeBounceboxOption(tag) end

---Change the Boss's Target to the one specified.
---@param tag? string The Target group tag to change to.
function bossPuppet:ChangeTargetOption(tag) end

--#endregion

--#region BossController

---@class BossController : Entity
---@field Health int
---@field IsActing boolean *
---@field CurrentPatternIndex int
---@field CurrentPatternName string *
---@field Random Random
local bossController = {}

---Add an Entity to the scene tracked by the Boss.
---@param entity Entity
function bossController:AddEntity(entity) end

---Remove an Entity from the scene that the Boss is tracking.
---@param entity Entity The entity to destroy/remove.
function bossController:DestroyEntity(entity) end

---Remove all entities tracked by the Boss from the Scene.
function bossController:DestroyAll() end

---Interrupt the currently executing Pattern.
function bossController:InterruptPattern() end

---Get the index of the pattern with the given name.
---@param name string The name of the pattern to search.
---@return int # The index of the pattern, or -1 if not found.
function bossController:GetPatternIndex(name) end

---Start the pattern with the given index.
---@param index float
function bossController:StartAttackPattern(index) end

---Force the next attack to be the one found by the given index in the current pattern.
---Only applicable to Random patterns.
---@param index float The attack's index to use next.
function bossController:ForceNextAttack(index) end

---Save the current state of the Boss to Session, such that reloads will load the Boss with the given values.
---It allows to store the Boss's Health value, the pattern to start at, and whether it should start attacking immediately.
---@param health int The Health value to set the Boss to on reloads.
---@param index int The Pattern to start at on reloads.
---@param startImmediately boolean Whether the Boss should start its pattern attacks immediately.
function bossController:SavePhaseChangeToSession(health, index, startImmediately) end

---Remove the Boss from the scene.
---@param permanent boolean Whether the Boss should not load again on scene reloads.
function bossController:RemoveBoss(permanent) end

---Store an object/value in the Boss to reference later.
---@param key string The key to store the object under.
---@param object any The object/value to store.
function bossController:StoreObject(key, object) end

---Get an object/value stored in the Boss.
---@param key string The key the object/value was stored under.
function bossController:GetStoredObject(key) end

---Remove an onject/value from the Boss's storage.
---@param key string The key of the object/value to remove.
function bossController:DeleteStoredObject(key) end

---Decrease the Boss's health by the amount.
---@param amount? int
function bossController:DecreaseHealth(amount) end

--#endregion

---@class GlobalSavePoint : Entity
local globalSavePoint = {}

---@class BadelineSidekick : Entity
local badelineSidekick = {}

--#region Health Displays

---@class HealthDisplay : Entity
local healthDisplay = {}

---@class HealthIconList : HealthDisplay
local healthIconList = {}

--#endregion

--#region HealthSystemManager

---@class HealthSystemManager : Entity
local healthSystemManager = {}

---@class PlayerHealthBar : HealthIconList
local playerHealthBar = {}

--#endregion

return entities