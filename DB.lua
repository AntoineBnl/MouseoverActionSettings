local addonName, addonTable = ...
local addon = addonTable.addon

local defaults = {
    profile = {
        ["**"] = {
            enabled = true,
            minAlpha = 0,
            maxAlpha = 1,
            useCustomAnimationSpeed = false,
            animationSpeed_In = 0.2,
            animationSpeed_Out = 0.25,
            useCustomDelay = false,
            delay = 2,
            EDIT_MODE_UPDATE = true,
            ["*"] = false,
            links = {
                ["*"] = false,
            },
            DRAGONRIDING_UPDATE = false,
            COMBAT_UPDATE = false,
            DUNGEON_UPDATE = false,
            PARTY_GROUP_UPDATE = false,
            RAID_GROUP_UPDATE = false,
            MOUNT_UPDATE = false,
            NPC_UPDATE = false,
            RAID_UPDATE = false,
            BATTLEGROUND_UPDATE = false,
            ARENA_UPDATE = false,
            SCENARIO_UPDATE = false,
            OPEN_WORLD_UPDATE = false,
        },
        --ActionBars
        MainMenuBar = {
            GRID_UPDATE = true,
            DRAGONRIDING_UPDATE = true,
            COMBAT_UPDATE = true,
        },
        MultiBarBottomLeft = {
            GRID_UPDATE = true,
            COMBAT_UPDATE = true,
        },
        MultiBarBottomRight = {
            GRID_UPDATE = true,
            COMBAT_UPDATE = true,
        },
        MultiBarRight = {
            GRID_UPDATE = true,
        },
        MultiBarLeft = {
            GRID_UPDATE = true,
        },
        MultiBar5 = {
            GRID_UPDATE = true,
        },
        MultiBar6 = {
            GRID_UPDATE = true,
        },
        MultiBar7 = {
            GRID_UPDATE = true,
        },
        PetActionBar = {
            GRID_UPDATE = true,
        },
        StanceBar = {
            GRID_UPDATE = true,
        },
        --/ActionBars
        --HUD
        PlayerFrame = {
            minAlpha = 0.3,
            COMBAT_UPDATE = true,
        },
        BuffFrame = {
            COMBAT_UPDATE = true,
        },
        DebuffFrame = {
            COMBAT_UPDATE = true,
        },
        ChatFrame = {
            PARTY_GROUP_UPDATE = true,
            RAID_GROUP_UPDATE = true,
        },
        ObjectiveTracker = {
            DUNGEON_UPDATE = true,
        },
        ChatFrame = {
            minAlpha = 0.3,
        },
        --/HUD
        --Hide
        HideBagsBar = {
            enabled = false,
        },
        HideMicroMenu = {
            enabled = false,
        },
        HideTrackingBars = {
            enabled = false,
        },
        --/Hide
        --Config
        EventDelayTimers = {
            MOUNT_UPDATE = 0,
            COMBAT_UPDATE = 2,
            DRAGONRIDING_UPDATE = 0,
            NPC_UPDATE = 0,
        },
        ActionBarConfig = {
            hideHotkey = false,
            hideCount = false,
            hideName = false,
        },
        MiniMapButton = {

        },
    },
}

function addon:LoadDataBase()
    self.db = LibStub("AceDB-3.0"):New("MouseoverActionSettingsDB", defaults, true) 
    --db callbacks
    self.db.RegisterCallback(self, "OnProfileChanged", "ReloadConfig")
    self.db.RegisterCallback(self, "OnProfileCopied", "ReloadConfig")
    self.db.RegisterCallback(self, "OnProfileReset", "ReloadConfig")
end

function addon:SetModuleStatus(info, value)
    local module_name = info[#info]
    self.db.profile[module_name].enabled = value
    if value == false then
        addon:DisableModule(module_name)
    else
        addon:EnableModule(module_name)
        self:UpdateTrigger()
    end
end

function addon:GetModuleStatus(info)
    local module_name = info[#info]
    return self.db.profile[module_name].enabled
end

function addon:SetStatus(info, value)
    self.db.profile[info[#info-1]][info[#info]] = value
    self:ReloadModule(info[#info-1])
end

function addon:GetStatus(info)
    return self.db.profile[info[#info-1]][info[#info]]
end