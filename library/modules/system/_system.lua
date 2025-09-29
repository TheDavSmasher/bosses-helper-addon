---@meta System

---@class System
local system = {}

---@alias float number
---@alias int integer
---@alias bool boolean

---@module "System.Exception"
system.Exception = {}

---@class Delegate
local delegate = {}

--#region Random

---@class Random
local random = {}

---Return the next random int
---@return int
function random:Next() end

--#endregion

--#region Collections

---@class IEnumerator
local iEnumerator = {}

--#region Generic


--#region Dictionary

---@class Dictionary<K, V>
local dictionary = {}

---Add an element to the Dictionary with the given key.
---@generic K, V
---@param self Dictionary<K, V>
---@param key K The key of the new value.
---@param value V The value to add.
function dictionary:Add(key, value) end

--#endregion

--#region HashSet

---@class HashSet<T>
local hashSet = {}

---Add a value to the HashSet.
---@generic T
---@param self HashSet<T>
---@param value T
function hashSet:Add(value) end

---Remove a value from the HashSet.
---@generic T
---@param self HashSet<T>
---@param value T
function hashSet:Remove(value) end

--#endregion


--#endregion


--#endregion

--#region Type

---@class Type
local type = {}

--#endregion

--#region Object

---@class Object
local object = {}

---@return Type
function object:GetType() end

---@alias csobject Object

--#endregion

return system