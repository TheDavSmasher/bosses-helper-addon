---@meta Celeste

---@class Celeste
local celeste = {}

---@module "Celeste.Mod"
celeste.Mod = {}

---@class Actor : Entity
local actor = {}

--#region Audio

---@class c__Audio
---@field CurrentMusic string
celeste.Audio = {}

---Play the given audio event at the given global position.
---@param event string The event name to play.
---@param position? Vector2 Where to play the audio.
---@return EventInstance # The Audio EventInstance
function celeste.Audio.Play(event, position) end

--#endregion

--#region AudioState

---@class AudioState
---@field Music AudioTrackState
local audioState = {}

---Apply the current changes to the Audio State
---@param forceSixteenthNoteHack? boolean
function audioState:Apply(forceSixteenthNoteHack) end

--#endregion

--#region AudioTrackState

---@class AudioTrackState
---@field Event string
---@field Progress int
local audioTrackState = {}

---Update the given audio layer.
---@param layer int The layer to update.
---@param value boolean|float The value to give the layer.
function audioTrackState:Layer(layer, value) end

--#endregion

--#region BadelineDummy

---@class c__BadelineDummy
---@overload fun(pos: Vector2): BadelineDummy
celeste.BadelineDummy = {}

---@class BadelineDummy : Entity
---@field Sprite Sprite
---@field Floatness float
local badelineDummy = {}

---@param level Level
---@param silent? boolean
function badelineDummy:Appear(level, silent) end

function badelineDummy:Vanish() end

---@param target Vector2
---@param turnAtEndTo? int
---@param faceDir? boolean
---@param fadeLight? boolean
---@param quickEnd? boolean
---@return IEnumerator
function badelineDummy:FloatTo(target, turnAtEndTo, faceDir, fadeLight, quickEnd) end

--#endregion

--#region BadelineOldsite

---@class c__BadelineOldsite
---@overload fun(position: Vector2, index: int): BadelineOldsite
celeste.BadelineOldsite = {}

---@class BadelineOldsite : Entity
local badelineOldside = {}

--#endregion

---@class BloomRenderer
---@field Strength float
local bloomRenderer = {}

--#region CollisionData

---@class c__CollisionData
---@field Empty CollisionData
celeste.CollisionData = {}

---@class CollisionData
---@field Direction Vector2
---@field Moved Vector2
---@field TargetPosition Vector2
---@field Hit Platform
---@field Pusher Solid
local collisionData = {}

--#endregion

--#region CutsceneEntity

---@class c__CutsceneEntity
celeste.CutsceneEntity = {}

---@class CutsceneEntity : Entity
local _cutsceneEntity = {}

---@param target Vector2
---@param duration float
---@param ease? Ease.Easer
---@param delay? float
---@return IEnumerator
function celeste.CutsceneEntity.CameraTo(target, duration, ease, delay) end

---@param level Level
---@param removeSelf? boolean
function _cutsceneEntity:EndCutscene(level, removeSelf) end

--#endregion

--#region Dialog

---@class c__Dialog
celeste.Dialog = {}

---Get the Dialog given its name
---@param name string The name of the dialog to get.
---@return string
function celeste.Dialog.Get(name) end

--#endregion

--#region DisplacementRenderer

---@class DisplacementRenderer
local displacementRenderer = {}

---@class Burst
local burst = {}

---@param position Vector2
---@param duration float
---@param radiusFrom float
---@param radiusTo float
---@param alpha? float
---@param alphaEaser? Ease.Easer
---@param radiusEaser? Ease.Easer
---@return Burst
function displacementRenderer:AddBurst(position, duration, radiusFrom, radiusTo, alpha, alphaEaser, radiusEaser) end

--#endregion

---@class EntityData
---@field ID int
---@field Level Level
---@field Position Vector2
---@field Width int
---@field Height int
---@field Values Dictionary<string, any>
local entityData = {}

--#region EntityID

---@class c__EntityID
---@overload fun(level: string, id: int): EntityID
celeste.EntityID = {}

---@class EntityID
local entityID = {}

--#endregion

---@enum Facings
celeste.Facings = {}

--#region InvisibleBarrier

---@class c__InvisibleBarrier
---@overload fun(pos: Vector2, width: float, height: float): InvisibleBarrier
celeste.InvisibleBarrier = {}

---@class InvisibleBarrier : Solid
local invisibleBarrier = {}

--#endregion

--#region Key

---@class c__Key
---@overload fun(player: Player, id: EntityID): Key
celeste.Key = {}

---@class Key : Entity
---@field ID EntityID
local key = {}

--#endregion

--#region Level

---@class Level : Scene
---@field Session Session
---@field Bounds Rectangle
---@field Displacement DisplacementRenderer
---@field CameraOffset Vector2
---@field LevelOffset Vector2
---@field Bloom BloomRenderer
---@field CoreMode CoreModes
---@field Camera Camera
---@field CanRetry boolean
---@field PauseLock boolean
---@field InCutscene boolean
local level = {}

---Get the Spawnpoint closest to the target.
---@param at Vector2 Where to search a Spawnpoint.
---@return Vector2
function level:GetSpawnPoint(at) end

---Complete the current area/level
---@param spotlightWipe? boolean
---@param skipScreenWipe? boolean
---@param skipCompleteScreen? boolean
---@return userdata Screenwipe
function level:CompleteArea(spotlightWipe, skipScreenWipe, skipCompleteScreen) end

---Start a screen shake.
---@param time? float The duration of the shake.
function level:Shake(time) end

---Start a screen shake with a direction.
---@param dir Vector2
---@param time? float The duration of the shake.
function level:DirectionalShake(dir, time) end

---Instantly change to the next colorgrade.
---@param next string The next colorgrade.
function level:SnapColorGrade(next) end

---Change to the other colorgrade over the timer.
---@param next string The next colorgrade
---@param time? float The time to make the change over.
function level:NextColorGrade(next, time) end

---Cancel the current Cutscene.
function level:CancelCutscene() end

---@param screenSpaceFocusPoint Vector2
---@param zoom float
---@param duration float
---@return IEnumerator
function level:ZoomTo(screenSpaceFocusPoint, zoom, duration) end

---@param screenSpaceFocusPoint Vector2
---@param zoom float
---@param duration float
---@return IEnumerator
function level:ZoomAcross(screenSpaceFocusPoint, zoom, duration) end

---@param duration float
---@return IEnumerator
function level:ZoomBack(duration) end

function level:ResetZoom() end

--#endregion

---@class LevelData
---@field Bounds Rectangle
local levelData = {}

--#region LevelLoader

---@class c__LevelLoader
---@overload fun(session: Session, respawn: Vector2): LevelLoader
celeste.LevelLoader = {}

---@class LevelLoader : Scene
local levelLoader = {}

--#endregion

--#region MapData

---@class MapData
local mapData = {}

---Get the LevelData at the Offset.
---@param at Vector2 Offset to get the data from.
---@return LevelData
function mapData:GetAt(at) end

--#endregion

--#region MiniTextbox

---@class c__MiniTextbox
---@overload fun(dialogId: string): MiniTextbox
celeste.MiniTextbox = {}

---@class MiniTextbox : Entity
local miniTextbox = {}

--#endregion

---@class Platform : Entity
local _platform = {}

--#region Player

---@class c__Player
celeste.Player = {}

---@enum IntroTypes
celeste.Player.IntroTypes = {}

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

--#endregion

--#region PlayerInventory

---@class c__PlayerInventory
---@field Default PlayerInventory
---@field Prologue PlayerInventory
---@field OldSite PlayerInventory
---@field CH6End PlayerInventory
---@field TheSummit PlayerInventory
---@field Core PlayerInventory
---@field Farewell PlayerInventory
celeste.PlayerInventory = {}

---@class PlayerInventory
---@field Dashes int
---@field DreamDash bool
---@field Backpack bool
---@field NoRefills bool
local playerInventory = {}

--#endregion

--#region Postcard

---@class c__Postcard
---@overload fun(msg: string, sfxIn: string, sfxOut: string): Postcard
---@overload fun(msg: string, area: int): Postcard
celeste.Postcard = {}

---@class Postcard : Entity
local postcard = {}

---Called Before Render
function postcard:BeforeRender() end

---The Routine to display the Postcart.
---@return IEnumerator
function postcard:DisplayRoutine() end

--#endregion

--#region Session

---@class c__Session
celeste.Session = {}

---@enum CoreModes
celeste.Session.CoreModes = {}

---@class Session
---@field Level string
---@field RespawnPoint Vector2
---@field LevelData LevelData
---@field MapData MapData
---@field DeathsInCurrentLevel int
---@field Audio AudioState
---@field HitCheckpoint boolean
---@field Inventory PlayerInventory
---@field Keys HashSet<EntityID>
---@field LevelFlags HashSet<string>
local session = {}

---Update the Level's Starting Dashes
function session:UpdateLevelStartDashes() end

---Get the session flag value
---@param flag string
---@return boolean
function session:GetFlag(flag) end

---Set the session flag value.
---@param flag string
---@param value boolean
function session:SetFlag(flag, value) end

---Get the Level Flag value
---@param flag string
---@return boolean
function session:GetLevelFlag(flag) end

--#endregion

--#region SFX

---@class c__SFX
celeste.SFX = {}

---Get an event name by its handle.
---@param handle string
---@return string # The event name, or handle if not found.
function celeste.SFX.EventnameByHandle(handle) end

--#endregion

---@class Solid : Platform
local solid = {}

--#region SoundSource

---@class c__SoundSource
---@overload fun(): SoundSource
celeste.SoundSource = {}

---@class SoundSource : Component
local soundSource = {}

---Play the given event on the SoundSource.
---@param event string The event to play.
---@return SoundSource self
function soundSource:Play(event) end

--#endregion

--#region Textbox

---@class c__Textbox
celeste.Textbox = {}

---Display a Textbox with the given dialog
---@param dialog string The dialog or dialogId to show
---@return IEnumerator # The display routine
function celeste.Textbox.Say(dialog) end

--#endregion

--#region WindController

---@class c__WindController
---@overload fun(patterns: userdata): WindController
celeste.WindController = {}

---@class WindController: Entity
local windController = {}

--#endregion

return celeste