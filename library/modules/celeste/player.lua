---@meta Celeste.Player

---@class c__Player
local c_Player = {}

---@enum IntroTypes
c_Player.IntroTypes = {}

---@class Player : Actor
---@field IntroType IntroTypes
---@field Facing Facings
---@field StateMachine StateMachine
---@field ForceCameraUpdate boolean
---@field Dead boolean
---@field DummyFriction boolean
---@field DummyAutoAnimate boolean
---@field AutoJump boolean
---@field AutoJumpTimer float
---@field Speed Vector2
---@field Sprite Sprite
local player = {}

---Make the player Die
---@param dir Vector2
---@param evenIfInvincible? boolean
---@param registerDeathInStats? boolean
---@return userdata deadBody
function player:Die(dir, evenIfInvincible, registerDeathInStats) end

---Check if the Player is touching ground.
---@param at? float Vertical offset to check at.
---@return boolean
function player:OnGround(at) end

---Make the player walk in Dummy state.
---@param x float The target x.
---@param walkBackwards? boolean
---@param speedMultiplier? float
---@param keepWalkingIntoWalls? boolean
---@return IEnumerator
function player:DummyWalkTo(x, walkBackwards, speedMultiplier, keepWalkingIntoWalls) end

---Make the player run in Dummy state.
---@param x float The target x.
---@param fastAnimation? boolean
---@return IEnumerator
function player:DummyRunTo(x, fastAnimation) end

---Make the player jump.
---@param particles? boolean Whether to display dust particles.
---@param playSfx? boolean Whether to play an SFX.
function player:Jump(particles, playSfx) end

---Start the Player's StartFly state
function player:StartStarFly() end

---Start the Player's CassetteFly state.
---@param target Vector2 The target end position.
---@param control Vector2 The flying arc middle point.
function player:StartCassetteFly(target, control) end

function player:CreateSplitParticles() end

return c_Player