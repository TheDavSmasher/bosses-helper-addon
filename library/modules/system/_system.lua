---@meta System

---@class System
local system = {}

---@alias float number
---@alias int integer
---@alias bool boolean

---@class Struct : Object
---@overload fun() : Struct

---@class Interface : Object

---@module "System.Exception"
system.Exception = {}

---@class Delegate : Object
local delegate = {}

--#region Random

---@class Random : Object
local random = {}

---Return the next random int
---@return int
function random:Next() end

--#endregion

--#region Collections

---@class IEnumerator : Interface
local iEnumerator = {}

--#region Generic


--#region Dictionary

---@class Dictionary<K, V> : Object
local dictionary = {}

---Add an element to the Dictionary with the given key.
---@generic K, V
---@param self Dictionary<K, V>
---@param key K The key of the new value.
---@param value V The value to add.
function dictionary:Add(key, value) end

dictionary.add = dictionary.Add

--#endregion

--#region HashSet

---@class HashSet<T> : Object
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

--#region Enum

---@class c__Enum
system.Enum = {}

---@generic T : Enum
---@param enum T
---@return string name
function system.Enum.GetName(enum) end

---@generic T : Enum
---@param enum T
---@return bool
function system.Enum.IsDefined(enum) end

---@param type Type
---@param name string
---@return Enum
function system.Enum.Parse(type, name) end

---@class CSEnum<T> : { [string]: T }

---@class Enum : Struct
local _enum = {}

---@param enum Enum
---@return bool
function _enum:HasFlag(enum) end

--#endregion

--#region Type

---@class Type : Object
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