--[[
  This file is part of Onore RolePlay.

  Copyright (c) Onore RolePlay - All Rights Reserved

  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]

---@class Zone
---@field public location table
---@field public type number
---@field public color table
---@field public onInteract function
---@field public helpText string
---@field public zoneID number
---@field public drawDist number
---@field public itrDist number
---@field public restricted boolean
---@field public allowed table
Zone = {}
Zone.__index = Zone

setmetatable(Zone, {
    __call = function(_, location, type, color, onInteract, helpText, drawDist, itrDist, restricted, baseAllowed)
        local self = setmetatable({}, Zone)
        self.zoneID = (#OnoreSZonesManager.list + 1)
        self.location = location
        self.type = type
        self.color = color
        self.onInteract = onInteract
        self.helpText = helpText
        self.drawDist = drawDist
        self.itrDist = itrDist
        self.restricted = restricted
        self.allowed = baseAllowed or {}
        OnoreSZonesManager.list[self.zoneID] = self
        return self
    end
})

---interact
---@public
---@return void
function Zone:interact(source)
    self.onInteract(source)
    OnoreServerUtils.trace(("%s a intéragit avec la zone n°%s"):format(GetPlayerName(source),self.zoneID), OnorePrefixes.zones)
end

---setRestriction
---@public
---@return void
function Zone:setRestriction(boolean)
    self.restricted = boolean
end

---isRestricted
---@public
---@return boolean
function Zone:isRestricted()
    return self.restricted
end

---clearAllowed
---@public
---@return void
function Zone:clearAllowed()
    self.allowed = {}
end

---isAllowed
---@public
---@return boolean
function Zone:isAllowed(source)
    return self.allowed[source] ~= nil
end

---addAllowed
---@public
---@return void
function Zone:addAllowed(source)
    self.allowed[source] = true
end

---removeAllowed
---@public
---@return void
function Zone:removeAllowed(source)
    self.allowed[source] = nil
end
