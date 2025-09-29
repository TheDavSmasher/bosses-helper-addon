---@meta Celeste

---@diagnostic disable: missing-fields

---@class Celeste
local celeste = {}

---@module "Celeste.Mod"
celeste.Mod = {}

--#region Actor

---@class Actor : Entity
---@field TreatNaive bool
---@field SquishCallback Collision
local actor = {}

---@param data CollisionData
function actor:OnSquish(data) end

--#endregion

---@module "Celeste.Audio"
celeste.Audio = {}

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

---@module "Celeste.BadelineDummy"
celeste.BadelineDummy = {}

---@module "Celeste.BadelineOldsite"
celeste.BadelineOldsite = {}

---@class BloomRenderer
---@field Strength float
local bloomRenderer = {}

--#region Collision

---@class Collision : Delegate
---@field Invoke fun(self: Collision, data: CollisionData)

---@alias L_Collision fun(data: CollisionData)

--#endregion

---@module "Celeste.CollisionData"
celeste.CollisionData = {}

---@module "Celeste.CutsceneEntity"
celeste.CutsceneEntity = {}

--#region DashCollision

---@class DashCollision : Delegate
---@field Invoke fun(self: DashCollision, player: Player, direction: Vector2): DashCollisionResult

---@alias L_DashCollision fun(player: Player, direction: Vector2): DashCollisionResult

--#endregion

---@enum DashCollisionResult
celeste.DashCollisionResult = {}

---@module "Celeste.Dialog"
celeste.Dialog = {}

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
---@field OnDashCollide DashCollision
local _platform = {}

---@module "Celeste.Player"
celeste.Player = {}

---@module "Celeste.PlayerInventory"
celeste.PlayerInventory = {}

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

---@module "Celeste.Session"
celeste.Session = {}

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