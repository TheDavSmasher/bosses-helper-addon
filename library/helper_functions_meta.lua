---@meta HelperFunctions

---@diagnostic disable: deprecated

---@class HelperFunctions
helpers = {}

---@module "Monocle"
local _monocle

---@module "Celeste"
local _celeste

---@module "Microsoft.XNA.Framework"
local _framework

helpers.monocle = _monocle

helpers.engine = _monocle.Engine

helpers.celeste = _celeste

---Returns a new Vector2
---@param x number
---@param y number
---@return Vector2
---@overload fun(x: table): Vector2
---@overload fun(x: userdata): userdata
---@overload fun(x: Vector2): Vector2
function helpers.vector2(x, y) end

--- Set the prefix for getting Celeste classes.
--- By default this is "Celeste.".
---@param prefix string The new prefix.
function helpers.setClassNamePrefix(prefix) end

--- Get the prefix for getting Celeste classes.
--- By default this is "Celeste.".
---@return string classNamePrefix The class name prefix.
function helpers.getClassNamePrefix() end

--- Get the content of a file from a Celeste asset.
---@param filename string Filename to load. Filename should not have a extention.
---@return string content The content of the file
function helpers.readCelesteAsset(filename) end

--- Loads and returns the result of a Lua asset.
---@param filename string Filename to load. Filename should not have a extention.
---@return table|nil result Tahble of loaded asset or nil
function helpers.loadCelesteAsset(filename) end

--- Put debug message in the Celeste console.
---@param message string The debug message.
---@param tag string? The tag in the console.
---@default "Bosses Helper"
function helpers.log(message, tag) end

--- Gets enum value.
---@param enum string String name of enum.
---@param value any string name or enum value to get.
---@return userdata enumValue
function helpers.getEnum(enum, value) end

--- Pause code exection for duration seconds.
---@param duration? float Duration to wait (in seconds).
---@return float?
---@overload fun(routine: IEnumerator): IEnumerator
function helpers.wait(duration) end

--- Gets the current room the player is in.
---@return Level level The current room.
function helpers.getRoom() end

helpers.getLevel = helpers.getRoom

--- Gets the current session.
---@return Session session The current session.
function helpers.getSession() end

--- Display textbox with dialog.
---@param dialog string Dialog ID used for the conversation.
---@return IEnumerator
function helpers.say(dialog) end

--- Display minitextbox with dialog.
---@param dialog string Dialog ID used for the textbox.
function helpers.miniTextbox(dialog) end

--- Allow the user to select one of several minitextboxes, similar to intro cutscene of Reflection.
---@param ... string Dialog IDs for each of the textboxes as varargs. First argument can be a table of dialog ids instead.
---@return integer index The index of the option the player selected.
---@overload fun(ids: string[]): integer
---@overload fun(...: string): integer
function helpers.choice(...) end

---Displays a choice dialog, similar to intro cutscene of Reflection.
---Unlike helpers.choice, this function also handles displaying dialogs and keeping track of which choices were already picked.
---Check the 'example_talker.lua' file for a usage example.
---@param dialogs table Table describing all choices and requirements, etc.
function helpers.choiceDialog(dialogs) end

---Closes the choice dialog previously opened by helpers.choiceDialog
function helpers.closeChoiceDialog() end

--- Display postcard.
---@param dialog string Dialog ID or message to show in the postcard.
---@param sfxIn string|integer effect when opening the postcard or area ID.
---@param sfxOut string? Sound effect when closing the postcard. If not used then second argument is assumed to be area ID.
---@default nil
function helpers.postcard(dialog, sfxIn, sfxOut) end

--- Player walks to the given X coordinate. This is in pixels and uses map based coordinates.
---@param x number X coordinate to walk to.
---@param walkBackwards boolean? If the player should visually be walking backwards.
---@default false
---@param speedMultiplier number? How fast the player should move. Walking is considered a speed multiplier of 1.0.
---@default 1.0
---@param keepWalkingIntoWalls boolean? If the player should keep walking into walls.
---@default false
---@return IEnumerator
function helpers.walkTo(x, walkBackwards, speedMultiplier, keepWalkingIntoWalls) end

--- Player walks x pixels from current position.
---@param x number X offset for where player should walk.
---@param walkBackwards boolean? If the player should visually be walking backwards.
---@default false
---@param speedMultiplier number? How fast the player should move. Walking is considered a speed multiplier of 1.0.
---@default 1.0
---@param keepWalkingIntoWalls boolean? If the player should keep walking into walls.
---@default false
---@return IEnumerator
function helpers.walk(x, walkBackwards, speedMultiplier, keepWalkingIntoWalls) end

--- Player runs to the given X coordinate. This is in pixels and uses map based coordinates.
---@param x float X coordinate to run to.
---@param fastAnimation? boolean Whether this should use the fast animation or not.
---@return IEnumerator
function helpers.runTo(x, fastAnimation) end

--- Player runs x pixels from current position.
---@param x float X coordinate to run to.
---@param fastAnimation? boolean Whether this should use the fast animation or not.
---@return IEnumerator
function helpers.run(x, fastAnimation) end

--- Kills the player.
---@param direction table|Vector2? The direction the player dies from.
---@default {0, 0}
---@param evenIfInvincible boolean? If the player should die even if they are invincible (assist mode).
---@default false
---@param registerDeathInStats boolean? If it should count as a death in journal.
---@default true
function helpers.die(direction, evenIfInvincible, registerDeathInStats) end

--- Sets the current player state.
---@param state string|integer Name of the state or the state number.
---@param locked boolean? If this should prevent the player for changing state afterwards.
---@default false
function helpers.setPlayerState(state, locked) end

--- Gets the current state of the player.
---@return integer state The current Player's state
---@return boolean locked If the StateMachine is Locked
function helpers.getPlayerState() end

--- Disable player movement.
function helpers.disableMovement() end

--- Enable player movement.
function helpers.enableMovement() end

--- Make the player jump.
---@param duration number? How long the "jump button" would be held (in seconds).
---@default 2.0
function helpers.jump(duration) end

--- Waits until the player is on the ground.
function helpers.waitUntilOnGround() end

--- Changes the room the game thinks the player is in.
---@param name string Room name.
---@param spawnX number? X coordinate for new spawn point, by default it uses bottom left of room.
---@param spawnY number? Y coordinate for new spawn point, by default it uses bottom left of room.
function helpers.changeRoom(name, spawnX, spawnY) end

function helpers.getRoomPosition(name) end

--- Sets the player position to the absolute coordinates.
---@param x number Target x coordinate.
---@param y number Target y coordinate.
---@param room string? What room the game should attempt to load. If room is specified player will land at closest spawnpoint to target location.
---@param introType string|IntroTypes intro type to use, can be either a #IntroTypes enum or a string
---@overload fun(x: float, y: float, room?: string, introType?: string|IntroTypes)
function helpers.teleportTo(x, y, room, introType) end

--- Teleport the player to (x, y) pixels from current position.
---@param x number X offset on X axis.
---@param y number Y offset on Y axis.
---@param room string? What room the game should attempt to load. If room is specified player will land at closest spawnpoint to target location.
---@param introType any? intro type to use, can be either a #IntroTypes enum or a string. Only applies if room is specified.
function helpers.teleport(x, y, room, introType) end

--- Instantly teleport the player seamlessly.
--- Teleport player to (x, y) position, in pixels.
--- Room name as only argument will seamlessly teleport to that room at the same relative position.
---@param x number|string X offset on X axis if number. Target room if string.
---@param y number? Y offset on Y axis.
---@param room string? What room the game should attempt to load. By default same room.
---@overload fun(x: string)
function helpers.instantTeleportTo(x, y, room) end

--- Instantly teleport the player to the same coordinates in another room seamlessly.
--- Teleport player (x, y) pixels from current position.
--- Room name as only argument will seamlessly teleport to that room at the same relative position.
---@param x number X offset on X axis if number. Target room if string.
---@param y number Y offset on Y axis.
---@param room string? What room the game should attempt to load. By default same room.
---@overload fun(x: string)
function helpers.instantTeleport(x, y, room) end

--- Completes the level and returns the player to the chapter screen.
---@param spotlightWipe boolean? Whether this should be a spotlight wipe or not.
---@default false
---@param skipScreenWipe boolean? Whether this wipe is skipped or not.
---@default false
---@param skipCompleteScreen boolean? Whether this skips the complete screen.
---@default false
function helpers.completeArea(spotlightWipe, skipScreenWipe, skipCompleteScreen) end

--- Plays a sound.
---@param name string Event for the song.
---@param position Vector2? Where the sound is played from.
---@return FMOD.Studio.EventInstance audio The audio instance of the sound.
function helpers.playSound(name, position) end

--- Gets all tracked entities by class name.
---@param name string Class name of the entity, relative to "Celeste." by default.
---@param prefix string? Overrides the global class name prefix.
---@return table entities Tracked entities of given class.
function helpers.getEntities(name, prefix) end

--- Gets the first tracked entity by class name.
---@param name string Class name of the entity, relative to "Celeste." by default.
---@param prefix string? Overrides the global class name prefix.
---@return any entity First tracked entity of given class.
function helpers.getEntity(name, prefix) end

--- Gets all entities by class name.
---@param name string Class name of the entity, relative to "Celeste." by default.
---@param prefix string? Overrides the global class name prefix.
---@return table entities All entities of given class.
function helpers.getAllEntities(name, prefix) end

--- Gets the first entity by class name.
---@param name string Class name of the entity, relative to "Celeste." by default.
---@param prefix string? Overrides the global class name prefix.
---@return any entity First entity of given class.
function helpers.getFirstEntity(name, prefix) end

--- Puts player in feather state.
function helpers.giveFeather() end

--- Get amount of deaths in current room.
---@return integer deaths Current deaths in room.
function helpers.deathsInCurrentRoom() end

--- Play and update the current music track.
---@param track string Name of song, same as in Ahorn's room window.
---@param progress integer? Which progress level the music should be at. Leave empty for no change.
function helpers.playMusic(track, progress) end

--- Get the current music track name.
---@return string track Music track name.
function helpers.getMusic() end

--- Sets music progression.
---@param progress number The new progress level.
function helpers.setMusicProgression(progress) end

--- Gets the current music progression.
---@return integer progress Music progress level.
function helpers.getMusicProgression() end

--- Set music layer on/off.
---@param layer float[]|float float or table of floats to set.
---@param value boolean The state of the layer.
function helpers.setMusicLayer(layer, value) end

--- Attempt to set the player spawnpoint.
---@param target table? Where it should attempt to set the spawnpoint from.
---@default {0, 0}
---@param absolute boolean? If set uses absolute coordinates from target, otherwise it offsets from the center of the cutscene trigger.
---@default false
function helpers.setSpawnPoint(target, absolute) end

--- Shakes the camera.
---@param direction Vector2|number Direction the screen should shake from.
---@param duration? number How long the screen should shake.
---@overload fun(direction: number)
function helpers.shake(direction, duration) end

--- Set player inventory
---@param inventory string|PlayerInventory Inventory to use. If name is string look it up in valid inventories, otherwise use the inventory.
function helpers.setInventory(inventory) end

--- Get player inventory
---@param inventory string? If name is given get inventory by name, otherwise the current player inventory
---@return PlayerInventory inventory
function helpers.getInventory(inventory) end

--- Offset the camera by x and y like in camera offset trigger.
---@param x number X coordinate or table of coordinates to offset by.
---@param y number Y coordinate to offset by.
---@overload fun(x: table)
function helpers.setCameraOffset(x, y) end

--- Get the current offset struct.
---@return Vector2 offset The camera offset.
function helpers.getCameraOffset() end

--- Get the current room coordinates.
---@return Vector2 offset The camera offset.
function helpers.getRoomCoordinates() end

--- Get the current room coordinates offset by x and y.
---@param x number X coordinate or table of coordinates to offset by.
---@param y number Y coordinate to offset by.
---@return Vector2 offset The camera offset.
---@overload fun(offset: table): Vector2
function helpers.getRoomCoordinatesOffset(x, y) end

--- Set session flag.
---@param flag string Flag to set.
---@param value boolean State of flag.
function helpers.setFlag(flag, value) end

--- Get session flag.
---@param flag string Flag to get.
---@return boolean state The state of the flag.
function helpers.getFlag(flag) end

---@param x number
---@param y number
---@param relativeToPlayer boolean?
---@return BadelineOldsite
function helpers.spawnBadeline(x, y, relativeToPlayer) end

--- Ends the current cutscene.
function helpers.endCutscene() end

--- Sets the current bloom strength.
---@param amount number New bloom strength.
function helpers.setBloomStrength(amount) end

--- Returns the current bloom strength.
---@return number strength Bloom strength.
function helpers.getBloomStrength() end

helpers.setDarkness = helpers.setBloomStrength

helpers.getDarkness = helpers.getBloomStrength

--- Sets the current core mode.
---@param mode string|CoreModes String name for mode or Core Mode enum.
function helpers.setCoreMode(mode) end

--- Returns the current core mode.
---@return CoreModes
function helpers.getCoreMode() end

--- Changes the current colorgrade to the new one.
---@param colorGrade string Name of the color grade
---@param instant boolean? Wheter the color grade should instantly change or gradually change
---@default false
function helpers.setColorGrade(colorGrade, instant) end

--- Bubble flies (cassette collection) to the target. This is in pixels and uses map based coordinates.
---@param endX number X coordinate for end point.
---@param endY number Y coordinate for end point.
---@param controllX number? X coordinate for controll point.
---@default endX
---@param controllY number? Y coordinate for controll point.
---@default endY
function helpers.cassetteFlyTo(endX, endY, controllX, controllY) end

--- Bubble flies (cassette collection) to the target relative to player. Values are in pixels and not tiles.
---@param endX number X offset for end point.
---@param endY number Y offset for end point.
---@param controllX number? X offset for controll point.
---@default endX
---@param controllY number? Y offset for controll point.
---@default endY
function helpers.cassetteFly(endX, endY, controllX, controllY) end

--- Set session level flag.
---@param flag string Flag to set.
---@param value boolean State of flag.
function helpers.setLevelFlag(flag, value) end

--- Get session level flag.
---@param flag string Flag to get.
---@return boolean state The state of the flag.
function helpers.getLevelFlag(flag) end

--- Gives the player a key.
function helpers.giveKey() end

function helpers.setWind(pattern) end

function helpers.getWind() end

function helpers.rumble(...) end

--- Disables skip cutscene from menu.
function helpers.makeUnskippable() end

--- Enables retrying from menu.
function helpers.enableRetry() end

--- Disables retrying from menu.
function helpers.disableRetry() end

--- Prevents the player from even accessing the pause menu.
function helpers.disablePause() end

--- Reenables the player to pause the game.
function helpers.enablePause() end

--- Adds the provided entity onto the scene, as well as into the Boss' tracked entities.
---@param entity Entity The entity to add
function helpers.addEntity(entity) end

--- Calls RemoveSelf on the entity provided, as well as removing it from the tracked entities.
---@param entity Entity The entity to destroy.
function helpers.destroyEntity(entity) end

--- Calls RemoveSelf on all active tracked entities.
function helpers.destroyAll() end

---Plan an animation on the Boss's given sprite
---@param anim string The animation to play
function helpers.playPuppetAnim(anim) end

---Play an animation on the Boss's given sprite and wait for it to complete one full cycle.
---@param anim string The animation to play
---@return IEnumerator
function helpers.playAndWaitPuppetAnim(anim) end

---Get a random number based on the boss's random seed.
---@return integer next A seeded-random integer.
function helpers.seededRandom() end

---Get the Boss' current health value
---@return integer health The Boss's current health value
function helpers.getHealth() end

---Set the Boss' health value to a new value.
---@param health integer The value to set the health to.
function helpers.setHealth(health) end

---Decrease the Boss' health by the given value
---@param health? integer The amount of health lost. Defaults to 1.
---@default 1
function helpers.decreaseHealth(health) end

--- Wait for the current attack coroutine to end
function helpers.waitForAttackToEnd() end

---Interrupt the current boss action pattern
function helpers.interruptPattern() end

---Gets the currently set pattern index
---@return integer ID The current pattern's index, base 0
function helpers.getCurrentPatternIndex() end

helpers.getCurrentPatternID = helpers.getCurrentPatternIndex

---Gets the currently set pattern index
---@return string Name The current pattern's name, if any.
function helpers.getCurrentPatternName() end

---Get the index of the Pattern that is identified by the given name, if any.
---@param name string The name of the Pattern to search for.
---@return integer index The index of the pattern with the given name, or -1 if not found.
function helpers.getPatternIndex(name) end

---Start a new boss action pattern.
---@param goTo? integer The pattern index to start executing. Defaults to -1, which will start the currently set pattern again.
---@default -1
function helpers.startAttackPattern(goTo) end

---Start the next action pattern in index order.
function helpers.startNextAttackPattern() end

---Force the next attack to be the attack of the given index. Index is based off of position within the Pattern.
---Currently only supported in Random Patterns. The index is always ran past a modulo on the pattern attacks' count to avoid an out-of-bounds issue.
---@param index integer The attack index to select next. Will only take effect once per call.
function helpers.forceNextAttackIndex(index) end

---Saves certain values to the Mod's Session so they are stored on Retry and even on Save and Quit. These values will be fetched by the controller automatically when loaded back into the level.
---@param health integer The health value to save and set back upon reload.
---@param index integer The pattern index the boss should start with upon reload.
---@param startImmediately? boolean If the Boss should start the defined action pattern immediately instead of waiting for the player to move. Defaults to false.
---@default true
function helpers.savePhaseChangeToSession(health, index, startImmediately) end

---Removes the Boss from the scene, alongside its puppet and any Entities spawned by it.
---This function also Works in Cutscene files
---@param permanent boolean If the boss should not be loaded again. False will spawn the Boss every time the room is loaded.
function helpers.removeBoss(permanent) end

--- Set the gravity multiplier to the given value. Gravity constant is 900.
--- @param mult number The multiplier to apply to the Gravity constant which the Boss will use.
function helpers.setEffectiveGravityMult(mult) end

---Set the Boss's horizontal ground friction deceleration rate.
---@param friction number The deceleration rate to set.
function helpers.setGroundFriction(friction) end

---Set the Boss's horizontal air friction deceleration rate.
---@param friction number The deceleration rate to set.
function helpers.setAirFriction(friction) end

---Set the Boss' x speed to the given value
---@param value number The value to set the Boss' speed x component to.
function helpers.setXSpeed(value) end

---Set the Boss' y speed to the given value
---@param value number The value to set the Boss' speed y component to.
function helpers.setYSpeed(value) end

---Set the Boss' speed to the given values
---@param x number The value to set the Boss' speed x component to.
---@param y number The value to set the Boss' speed y component to.
function helpers.setSpeed(x, y) end

---Set the Boss' x speed to the given value, kept constant during the given time.
---@param value number The value to set the Boss' speed x component to.
---@param time number The time to hold the value for.
---@return number time The time given from the Tween
function helpers.setXSpeedDuring(value, time) end

---Set the Boss' y speed to the given value, kept constant during the given time.
---@param value number The value to set the Boss' speed y component to.
---@param time number The time to hold the value for.
---@return number time The time given from the Tween
function helpers.setYSpeedDuring(value, time) end

---Set the Boss' speed to the given values, kept constant during the given time.
---@param x number The value to set the Boss' speed x component to.
---@param y number The value to set the Boss' speed y component to.
---@param time number The time to hold the values for.
---@return number time The time given from the Tween
function helpers.setSpeedDuring(x, y, time) end

---Keep the Boss' current x speed constant during the given time.
---@param time number The time to hold the value for.
---@return number time The time given from the Tween
function helpers.keepXSpeedDuring(time) end

---Keep the Boss' current y speed constant during the given time.
---@param time number The time to hold the value for.
---@return number time The time given from the Tween
function helpers.keepYSpeedDuring(time) end

---Keep the Boss' current speed constant during the given time.
---@param time number The time to hold the values for.
---@return number time The time given from the Tween
function helpers.keepSpeedDuring(time) end

---Create a new Position Tween, which will slowly move the Boss to the target.
---@param target Vector2 The vector2 target position the Boss will move towards.
---@param time number The time the Boss will take to reach the target.
---@param easer? string|Ease.Easer The easer to apply to the motion. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.positionTween(target, time, easer, invert) end

---Create a new Tween for the Boss' x speed.
---@param start number The initial value of the Tween, which the Boss' speed x component will set to at the start.
---@param target number The value the Boss' speed x component will slowly change to.
---@param time number The time the Boss will take to reach the target x speed.
---@param easer? string|Ease.Easer The easer to apply to the x speed value. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.speedXTween(start, target, time, easer, invert) end

---Create a new Tween for the Boss' y speed.
---@param start number The initial value of the Tween, which the Boss' speed y component will set to at the start.
---@param target number The value the Boss' speed y component will slowly change to.
---@param time number The time the Boss will take to reach the target y speed.
---@param easer? string|Ease.Easer The easer to apply to the y speed value. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.speedYTween(start, target, time, easer, invert) end

---Create a new Tween for the Boss' speed.
---@param xStart number The initial value of the Tween, which the Boss' speed x component will set to at the start.
---@param xTarget number The value the Boss' speed x component will slowly change to.
---@param yStart number The initial value of the Tween, which the Boss' speed y component will set to at the start.
---@param yTarget number The value the Boss' speed y component will slowly change to.
---@param time number The time the Boss will take to reach the target x speed.
---@param easer? string|Ease.Easer The easer to apply to the x speed value. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.speedTween(xStart, yStart, xTarget, yTarget, time, easer, invert) end

---Create a new Tween for the Boss' x speed from its current x speed value.
---@param target number The value the Boss' speed x component will slowly change to.
---@param time number The time the Boss will take to reach the target x speed.
---@param easer? string|Ease.Easer The easer to apply to the x speed value. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.speedXTweenTo(target, time, easer, invert) end

---Create a new Tween for the Boss' x speed from its current y speed value.
---@param target number The value the Boss' speed y component will slowly change to.
---@param time number The time the Boss will take to reach the target y speed.
---@param easer? string|Ease.Easer The easer to apply to the y speed value. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.speedYTweenTo(target, time, easer, invert) end

---Create a new Tween for the Boss'  speed from its current x speed value.
---@param xTarget number The value the Boss' speed x component will slowly change to.
---@param yTarget number The value the Boss' speed y component will slowly change to.
---@param time number The time the Boss will take to reach the target x speed.
---@param easer? string|Ease.Easer The easer to apply to the x speed value. If a string is provided, it will call helpers.getEaserByName. Defaults to nil.
---@default nil
---@param invert? boolean If the easer should be inverted. Defaults to false.
---@default false
---@return number time The time given from the Tween
function helpers.speedTweenTo(xTarget, yTarget, time, easer, invert) end

--- Enable the Boss' Collision checks from other entities.
function helpers.enableCollisions() end

--- Disable the Boss' Collision checks from other entities.
function helpers.disableCollisions() end

--- Enable the Boss' Collision checks with solids.
function helpers.enableSolidCollisions() end

--- Disable the Boss' Collision checks with solids.
function helpers.disableSolidCollisions() end

---Set the Boss' hit cooldown to the given value
---@param value number The timer to set the cooldown to
function helpers.setHitCooldown(value) end

---Set the Boss' hit cooldown back to the default value defined.
function helpers.resetHitCooldown() end

---Change the Boss' hitboxes to those stored under the given tag.
---@param tag string The hitbox group tag to use.
function helpers.changeBaseHitboxTo(tag) end

---Change the Boss' hurtboxes to those stored under the given tag.
---@param tag string The hurtbox group tag to use.
function helpers.changeHurtboxTo(tag) end

---Change the Boss' bouncebox to that stored under the given tag.
---@param tag string The bouncebox tag to use.
function helpers.changeBounceboxTo(tag) end

---Change the Boss' Sidekick Target to that stored under the given tag.
---@param tag string The Sidekick Target tag to use.
function helpers.changeTargetTo(tag) end

---Create a new Rectangular Hitbox Collider
---@param width number The width of the collider.
---@param height number The height of the collider.
---@param x? number The x offset of the hitbox. Defaults to 0.
---@default 0
---@param y? number The y offest of the Hitbox. Defaults to 0.
---@default 0
---@return Hitbox hitbox The created Hitbox Collider
function helpers.getHitbox(width, height, x, y) end

---Create a new Circle Collider
---@param radius number The radius of the collider.
---@param x? number The x offset of the hitbox. Defaults to 0.
---@default 0
---@param y? number The y offest of the Hitbox. Defaults to 0.
---@default 0
---@return Circle circle The created Hitbox Collider
function helpers.getCircle(radius, x, y) end

---Create a ColliderList object from the provided colliders.
---@param ... Collider All the colliders to combine into a ColliderList
---@return ColliderList colliderList The combined ColliderList object.
function helpers.getColliderList(...) end

---Add a component to the Boss.
---@param component Component The component to add.
function helpers.addComponentToBoss(component) end

---Add a function that will run in the background.
---@param func fun(...) The function that will run in the background. Will run to completion or loop as defined.
---@param ... any Parameters to pass to the wrapped function, if any
function helpers.addConstantBackgroundCoroutine(func, ...) end

---Returns an EntityChecker Component that will execute the second passed function when the first function's return value matches the state required.
---@param checker fun() The function that will be called every frame to test its value.
---@param func? fun(entity: Entity) The function that will execute once the timer ends. Takes an entity parameter, which will be the Entity the component is added to. Defaults to the DestroyEntity function.
---@default helpers.destroyEntity
---@param state? boolean The state the checker function's return value must match. Defaults to true.
---@default true
---@param remove? boolean If the component should remove itself after it calls the func function. Defaults to true
---@default true
---@return EntityChecker checker The Entity Checker that can be added to any Entity.
function helpers.getEntityChecker(checker, func, state, remove) end

---Returns an EntityTimer Component that will execute the passed function when the timer ends.
---Can be added to any Entity.
---@param timer number The amount of time that must pass for the timer to execute.
---@param func? fun(entity: Entity) The function that will execute once the timer ends. Takes an entity parameter, which will be the Entity the component is added to. Defaults to the DestroyEntity function.
---@default helpers.destroyEntity
---@return EntityTimer timer The Entity Timer that can be added to any Entity.
function helpers.getEntityTimer(timer, func) end

---Returns an EntityFlagger Component that will execute the passed function when the given session flag's state matches the required state.
---Can be added to any Entity.
---@param flag string The session flag the entity will use to activate its function.
---@param func? fun(entity: Entity) The function that will execute once the session flag state is the same as the state parameter. Takes an entity parameter, which will the Entity the component is added to. Defaults to the destroyEntity function.
---@default helpers.destroyEntity
---@param state? boolean The state the flag must match to activate the passed function. Defaults to true.
---@default true
---@param resetFlag? boolean If the flag should return to its previous state once used by the Flagger. Defaults to true
---@default true
---@return EntityFlagger flagger The Entity Flagger that can be added to any Entity.
function helpers.getEntityFlagger(flag, func, state, resetFlag) end

---Returns an EntityChain component that will keep another entity's position chained to the Entity this component is added to.
---@param entity Entity The entity to chain, whose position will change as the base Entity moves.
---@param startChained? boolean Whether the entity should start chained immediately. Defaults to true.
---@default true
---@param remove? boolean Whether the chained entity should be removed if the chain component is also removed.
---@default false
---@return EntityChain chain The Entity Chain component that can be added to any Entity.
function helpers.getEntityChain(entity, startChained, remove) end

---Create and return a basic entity to use in attacks.
---@param position Vector2 The position the entity will be at.
---@param hitboxes Collider The collider the entity will use.
---@param spriteName string The sprite the entity will use.
---@param startCollidable? boolean If the entity should spawn with collisions active. Defaults to true.
---@default true
---@param funcOnPlayer? fun(self, player) The function that will be called when the entity "self" collides with the Player. Defaults to killing the Player.
---@default killPlayer
---@param xScale? number The horizontal sprite scale. Defaults to 1.
---@default 1
---@param yScale? number The vertical sprite scale. Defaults to 1.
---@default 1
---@return AttackEntity
function helpers.getNewBasicAttackEntity(position, hitboxes, spriteName, startCollidable, funcOnPlayer, xScale, yScale) end

---Create and return a basic entity to use in attacks.
---@param position Vector2 The position the entity will be at.
---@param hitboxes Collider The collider the entity will use.
---@param spriteName string The sprite the entity will use.
---@param gravMult? number The multiplier to the Gravity constant the Actor should use. Defaults to 1.
---@default 1
---@param maxFall? number The fastest the Boss will fall naturally due to gravity. Defaults to 90.
---@default 90
---@param startCollidable? boolean If the entity should spawn with collisions active. Defaults to true.
---@default true
---@param startSolidCollidable? boolean If the entity should spawn with solid collisions active. Defaults to true.
---@default true
---@param funcOnPlayer? fun(self, player) The function that will be called when the entity "self" collides with the Player. Defaults to killing the Player.
---@default killPlayer
---@param xScale? number The horizontal sprite scale. Defaults to 1.
---@default 1
---@param yScale? number The vertical sprite scale. Defaults to 1.
---@default 1
---@return AttackActor
function helpers.getNewBasicAttackActor(position, hitboxes, spriteName, gravMult, maxFall, startCollidable, startSolidCollidable, funcOnPlayer,  xScale, yScale) end

--- Gets all tracked components by class name.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return Component[] components Tracked components of given class.
function helpers.getComponents(name, prefix) end

--- Gets the first tracked component by class name.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return Component component First tracked component of given class.
function helpers.getComponent(name, prefix) end

--- Gets all components by class name.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return Component[] components All components of given class on scene.
function helpers.getAllComponents(name, prefix) end

--- Gets the first component by class name.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return Component component First component of given class.
function helpers.getFirstComponent(name, prefix) end

--- Gets all components by class name added to an entity of given class name.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param entity string Class name of the entity, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix for the Component class.
--- @param entityPre? string Overrides the global class name prefix for the Entity class.
--- @return Component[] components All components of given class on scene attached to the entity type.
function helpers.getAllComponentsOnType(name, entity, prefix, entityPre) end

--- Gets the first component by class name added to an entity of the given class name.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param entity string Class name of the entity, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix for the Component class.
--- @param entityPre? string Overrides the global class name prefix for the Entity class.
--- @return Component component First component of given class attached to the entity type.
function helpers.getFirstComponentOnType(name, entity, prefix, entityPre) end

--- Returns all the components of the given class name from the entity given, if any.
--- @param entity Entity The entity to check.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return Component[] components All components of given class on scene sored on the entity, if any.
function helpers.getComponentsFromEntity(entity, name, prefix) end

--- Returns the component of the given class name from the entity given, if any.
--- @param entity Entity The entity to check.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return Component component First component of given class stored on the entity, if any.
function helpers.getComponentFromEntity(entity, name, prefix) end

--- Checks if the entity given has a component of the given class name.
--- @param entity Entity The entity to check.
--- @param name string Class name of the component, relative to "Celeste." by default.
--- @param prefix? string Overrides the global class name prefix.
--- @return boolean componentFound If the Entity does have a Component of the type specified.
function helpers.entityHasComponent(entity, name, prefix) end

---Get the Player's current health value on the active Health System
---@return integer health The player's health value, or -1 if there's no active Health System
function helpers.getPlayerHealth() end

---Gives additional time where the player is invincible to taking damage.
---@param time number The time to add to the invincible timer.
function helpers.giveInvincibleFrames(time) end

---Display textbox with dialog. Any provided functions will be passed as Triggers accessible to Dialog.txt triggers.
---@param dialog string Dialog ID used for the conversation.
---@param ... function Functions that will be called whenever a trigger is activated through dialogue.
---@return IEnumerator
function helpers.sayExt(dialog, ...) end

---Creates a new SoundSource and adds it to the provided entity, starting the sound immediately
---@param event string The name of the Event to play.
---@param entity Entity The entity to add the SoundSource to.
---@return Component newSound The newly created SoundSource
function helpers.addSoundTo(event, entity) end

---Creates a new SoundSource and adds it to the Boss, starting the sound immediately
---@param event string The name of the Event to play.
---@return Component newSound The newly created SoundSource attached to the Boss
function helpers.addSoundToBoss(event) end

---Get a new EntityData object
---@param position Vector2 The vector2 position the entityData will hold.
---@param width? number The width the EntityData will hold. Defaults to 0.
---@default 0
---@param height? number The height the EntityData will hold. Defaults to 0.
---@default 0
---@param id? integer The id the EntityData will hold. Defaults to 1000.
---@default 1000
---@return EntityData entityData The formed EntityData object with the Values dictionary initialized empty.
function helpers.getNewEntityData(position, width, height, id) end

---Set a list of attributes to the provided EntityData object's Values dictionary.
---@param entityData EntityData The EntityData to update.
---@param attributes table<string,any> The list of attributes to add.
function helpers.setEntityDataAttributes(entityData, attributes) end

---Store any object within the Boss under a specific key, to be retreived later.
---@param key string The key to store the object with. Must be unique, or the object will not be stored.
---@param object any The object to store
function helpers.storeObjectInBoss(key, object) end

---Return an item that was stored within the Boss by key.
---@param key string The key the object is stored under.
---@return nil|any object The object stored, or nil if key is not found.
function helpers.getStoredObjectFromBoss(key) end

---Remove the object stored under the specified key from the Boss' stored objects.
---@param key string The key the object is stored under.
function helpers.deleteStoredObjectFromBoss(key) end

---Set a method that will execute after a given delay.
---@param func fun() The function to execute. Takes no parameters.
---@param delay number The time in seconds the function will be called after.
function helpers.doMethodAfterDelay(func, delay) end

---A specific Easer can be obtained by calling "monocle.Ease.{name}" which returns the desired Easer.
---@param name? string The name of the Easer to get.
---@param invert? boolean If the easer returned should be inverted.
---@return nil|Ease.Easer easer The Easer found or nil if not found.
function helpers.getEaserByName(name, invert) end

---@deprecated Use Vector2:Length instead
---Get the length of the provided vector2
---@param vector Vector2 Vector to get length of
---@return number length The length of the vector2
function helpers.v2L(vector) end

---@deprecated Use Vector2:SafeNormalize instead
---Normalizes the vector provided to the given length or 1.
---@param vector Vector2 The vector to normalize
---@param length? number The new length of the vector or 1
---@default 1
---@return Vector2 normal The normalized vector2
function helpers.normalize(vector, length) end

monocle = helpers.monocle
engine = helpers.engine
celeste = helpers.celeste
vector2 = helpers.vector2
setClassNamePrefix = helpers.setClassNamePrefix
getClassNamePrefix = helpers.getClassNamePrefix
readCelesteAsset = helpers.readCelesteAsset
loadCelesteAsset = helpers.loadCelesteAsset
log = helpers.log
getEnum = helpers.getEnum
wait = helpers.wait
getRoom = helpers.getRoom
getLevel = helpers.getLevel
getSession = helpers.getSession
say = helpers.say
miniTextbox = helpers.miniTextbox
choice = helpers.choice
choiceDialog = helpers.choiceDialog
closeChoiceDialog = helpers.closeChoiceDialog
postcard = helpers.postcard
walkTo = helpers.walkTo
walk = helpers.walk
runTo = helpers.runTo
run = helpers.run
die = helpers.die
setPlayerState = helpers.setPlayerState
getPlayerState = helpers.getPlayerState
disableMovement = helpers.disableMovement
enableMovement = helpers.enableMovement
jump = helpers.jump
waitUntilOnGround = helpers.waitUntilOnGround
changeRoom = helpers.changeRoom
getRoomPosition = helpers.getRoomPosition
teleportTo = helpers.teleportTo
teleport = helpers.teleport
instantTeleportTo = helpers.instantTeleportTo
instantTeleport = helpers.instantTeleport
completeArea = helpers.completeArea
playSound = helpers.playSound
getEntities = helpers.getEntities
getEntity = helpers.getEntity
getAllEntities = helpers.getAllEntities
getFirstEntity = helpers.getFirstEntity
giveFeather = helpers.giveFeather
deathsInCurrentRoom = helpers.deathsInCurrentRoom
playMusic = helpers.playMusic
getMusic = helpers.getMusic
setMusicProgression = helpers.setMusicProgression
getMusicProgression = helpers.getMusicProgression
setMusicLayer = helpers.setMusicLayer
setSpawnPoint = helpers.setSpawnPoint
shake = helpers.shake
setInventory = helpers.setInventory
getInventory = helpers.getInventory
setCameraOffset = helpers.setCameraOffset
getCameraOffset = helpers.getCameraOffset
getRoomCoordinates = helpers.getRoomCoordinates
getRoomCoordinatesOffset = helpers.getRoomCoordinatesOffset
setFlag = helpers.setFlag
getFlag = helpers.getFlag
spawnBadeline = helpers.spawnBadeline
endCutscene = helpers.endCutscene
setBloomStrength = helpers.setBloomStrength
getBloomStrength = helpers.getBloomStrength
setDarkness = helpers.setDarkness
getDarkness = helpers.getDarkness
setCoreMode = helpers.setCoreMode
getCoreMode = helpers.getCoreMode
setColorGrade = helpers.setColorGrade
cassetteFlyTo = helpers.cassetteFlyTo
cassetteFly = helpers.cassetteFly
setLevelFlag = helpers.setLevelFlag
getLevelFlag = helpers.getLevelFlag
giveKey = helpers.giveKey
setWind = helpers.setWind
getWind = helpers.getWind
rumble = helpers.rumble
makeUnskippable = helpers.makeUnskippable
enableRetry = helpers.enableRetry
disableRetry = helpers.disableRetry
disablePause = helpers.disablePause
enablePause = helpers.enablePause
addEntity = helpers.addEntity
destroyEntity = helpers.destroyEntity
destroyAll = helpers.destroyAll
playPuppetAnim = helpers.playPuppetAnim
playAndWaitPuppetAnim = helpers.playAndWaitPuppetAnim
seededRandom = helpers.seededRandom
getHealth = helpers.getHealth
setHealth = helpers.setHealth
decreaseHealth = helpers.decreaseHealth
waitForAttackToEnd = helpers.waitForAttackToEnd
interruptPattern = helpers.interruptPattern
getCurrentPatternIndex = helpers.getCurrentPatternIndex
getCurrentPatternID = helpers.getCurrentPatternID
getCurrentPatternName = helpers.getCurrentPatternName
getPatternIndex = helpers.getPatternIndex
startAttackPattern = helpers.startAttackPattern
startNextAttackPattern = helpers.startNextAttackPattern
forceNextAttackIndex = helpers.forceNextAttackIndex
savePhaseChangeToSession = helpers.savePhaseChangeToSession
removeBoss = helpers.removeBoss
setEffectiveGravityMult = helpers.setEffectiveGravityMult
setGroundFriction = helpers.setGroundFriction
setAirFriction = helpers.setAirFriction
setXSpeed = helpers.setXSpeed
setYSpeed = helpers.setYSpeed
setSpeed = helpers.setSpeed
setXSpeedDuring = helpers.setXSpeedDuring
setYSpeedDuring = helpers.setYSpeedDuring
setSpeedDuring = helpers.setSpeedDuring
keepXSpeedDuring = helpers.keepXSpeedDuring
keepYSpeedDuring = helpers.keepYSpeedDuring
keepSpeedDuring = helpers.keepSpeedDuring
positionTween = helpers.positionTween
speedXTween = helpers.speedXTween
speedYTween = helpers.speedYTween
speedTween = helpers.speedTween
speedXTweenTo = helpers.speedXTweenTo
speedYTweenTo = helpers.speedYTweenTo
speedTweenTo = helpers.speedTweenTo
enableCollisions = helpers.enableCollisions
disableCollisions = helpers.disableCollisions
enableSolidCollisions = helpers.enableSolidCollisions
disableSolidCollisions = helpers.disableSolidCollisions
setHitCooldown = helpers.setHitCooldown
resetHitCooldown = helpers.resetHitCooldown
changeBaseHitboxTo = helpers.changeBaseHitboxTo
changeHurtboxTo = helpers.changeHurtboxTo
changeBounceboxTo = helpers.changeBounceboxTo
changeTargetTo = helpers.changeTargetTo
getHitbox = helpers.getHitbox
getCircle = helpers.getCircle
getColliderList = helpers.getColliderList
addComponentToBoss = helpers.addComponentToBoss
addConstantBackgroundCoroutine = helpers.addConstantBackgroundCoroutine
getEntityChecker = helpers.getEntityChecker
getEntityTimer = helpers.getEntityTimer
getEntityFlagger = helpers.getEntityFlagger
getEntityChain = helpers.getEntityChain
getNewBasicAttackEntity = helpers.getNewBasicAttackEntity
getNewBasicAttackActor = helpers.getNewBasicAttackActor
getComponents = helpers.getComponents
getComponent = helpers.getComponent
getAllComponents = helpers.getAllComponents
getFirstComponent = helpers.getFirstComponent
getAllComponentsOnType = helpers.getAllComponentsOnType
getFirstComponentOnType = helpers.getFirstComponentOnType
getComponentsFromEntity = helpers.getComponentsFromEntity
getComponentFromEntity = helpers.getComponentFromEntity
entityHasComponent = helpers.entityHasComponent
getPlayerHealth = helpers.getPlayerHealth
giveInvincibleFrames = helpers.giveInvincibleFrames
sayExt = helpers.sayExt
addSoundTo = helpers.addSoundTo
addSoundToBoss = helpers.addSoundToBoss
getNewEntityData = helpers.getNewEntityData
setEntityDataAttributes = helpers.setEntityDataAttributes
storeObjectInBoss = helpers.storeObjectInBoss
getStoredObjectFromBoss = helpers.getStoredObjectFromBoss
deleteStoredObjectFromBoss = helpers.deleteStoredObjectFromBoss
doMethodAfterDelay = helpers.doMethodAfterDelay
getEaserByName = helpers.getEaserByName
v2L = helpers.v2L
normalize = helpers.normalize
