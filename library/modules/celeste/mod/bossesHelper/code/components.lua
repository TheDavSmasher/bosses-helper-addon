---@meta Celeste.Mod.BossesHelper.Code.Components

---@class Components
local components = {}

--#region Stopwatch
---@class Stopwatch : Component
---@field TimeLeft float
components.Stopwatch = {}

---Reset the Stopwatch
function components.Stopwatch:Reset() end
--#endregion

---@class EntityChecker : Component
---@overload fun(checker: (fun(): boolean), onCheck: fun(entity: Entity), state?: boolean, removeOnComplete?: boolean): EntityChecker
components.EntityChecker = {}

---@class EntityTimer : Component
---@overload fun(timer: float, onTimer: fun(entity: Entity)): EntityTimer
components.EntityTimer = {}

---@class EntityFlagger : Component
---@overload fun(flag: string, onFlag: fun(entity: Entity), state?: boolean, reset?: boolean): EntityFlagger
components.EntityFlagger = {}

---@class EntityChain : Component
---@overload fun(entity: Entity, startChained: boolean, removeTogether?: boolean): EntityChain
components.EntityChain = {}

---@class LuaCoroutineComponent : Component
---@overload fun(func: function): LuaCoroutineComponent
---@overload fun(coroutine: LuaCoroutine): LuaCoroutineComponent
components.LuaCoroutineComponent = {}

return components