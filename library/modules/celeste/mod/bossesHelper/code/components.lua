---@meta Celeste.Mod.BossesHelper.Code.Components

---@class Celeste.Mod.BossesHelper.Code.Components
local components = {}

--#region Stopwatch
---@class Celeste.Mod.BossesHelper.Code.Components.Stopwatch
---@overload fun(time: float): Stopwatch
components.Stopwatch = {}

---@class Stopwatch : Component
---@field TimeLeft float
---@field Finished bool
local stopwatch = {}

---Reset the Stopwatch
function stopwatch:Reset() end
--#endregion

--#region EntityChecker
---@class Celeste.Mod.BossesHelper.Code.Components.EntityChecker
---@overload fun(checker: (fun(): boolean), onCheck: fun(entity: Entity), state?: boolean, removeOnComplete?: boolean): EntityChecker
components.EntityChecker = {}

---@class EntityChecker : Component
local entityChecker = {}
--#endregion

--#region EntityTimer
---@class Celeste.Mod.BossesHelper.Code.Components.EntityTimer
---@overload fun(timer: float, onTimer: fun(entity: Entity)): EntityTimer
components.EntityTimer = {}

---@class EntityTimer : Component
local entityTimer = {}
--#endregion

--#region EntityFlagger
---@class Celeste.Mod.BossesHelper.Code.Components.EntityFlagger
---@overload fun(flag: string, onFlag: fun(entity: Entity), state?: boolean, reset?: boolean): EntityFlagger
components.EntityFlagger = {}

---@class EntityFlagger : Component
local entityFlagger = {}
--#endregion

--#region EntityChain
---@class Celeste.Mod.BossesHelper.Code.Components.EntityChain
---@overload fun(entity: Entity, startChained: boolean, removeTogether?: boolean): EntityChain
components.EntityChain = {}

---@class EntityChain : Component
local entityChain = {}
--#endregion

--#region LuaCoroutineComponent
---@class Celeste.Mod.BossesHelper.Code.Components.LuaCoroutineComponent
---@overload fun(func: function): LuaCoroutineComponent
---@overload fun(coroutine: LuaCoroutine): LuaCoroutineComponent
components.LuaCoroutineComponent = {}

---@class LuaCoroutineComponent : Coroutine
local luaCoroutineComponent = {}
--#endregion

return components