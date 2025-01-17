local addonName = ...

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true)

--Tabs
L["Action Bars"] = "Action Bars"
L["HUD"] = "HUD"
L["Link"] = "Links"
L["Config"] = "Config"
L["Profiles"] = "Profiles"
--Mouseover Units
L["enabled_units"] = "Enabled Units"
--Action Bars:
L["MainMenuBar"] = "Action Bar 1"
L["MultiBarBottomLeft"] = "Action Bar 2"
L["MultiBarBottomRight"] = "Action Bar 3"
L["MultiBarRight"] = "Action Bar 4"
L["MultiBarLeft"] = "Action Bar 5"
L["MultiBar5"] = "Action Bar 6"
L["MultiBar6"] = "Action Bar 7"
L["MultiBar7"] = "Action Bar 8"
L["StanceBar"] = "Stance Bar"
L["PetActionBar"] = "Pet Bar"
--HUD:
L["BagsBar"] = "Bags Bar"
L["MicroMenu"] = "Micro Menu"
L["PlayerFrame"] = "Player Frame"
L["Minimap"] = "Minimap"
L["ObjectiveTracker"] = "Objective Tracker"
L["BuffFrame"] = "Buff Frame"
L["DebuffFrame"] = "Debuff Frame"
L["TrackingBarContainer"] = "Tracking Bars"
L["ChatFrame"] = "Chat Frame"
--Links:
L["Show"] = "Show"
L["alongside"] = "alongside"
--Config:
L["global_settings_header"] = "Global Settings"
L["action_bar_config_name"] = "For:"
L["action_bar_settings"] = "Action Bar Settings"
L["event_delay_timer_button_name"] = "Event Delay Timer"
L["hideHotkey"] = "Hide Hotkey"
L["hideCount"] = "Hide Charges"
L["hideName"] = "Hide Macro Text"
L["Miscellaneous"] = "Miscellaneous"
L["minimap_button_name"] = "Minimap Button"
L["minimap_button_desc"] = "Display a Minimap button that can be used to control the add-on."
L["Hide"] = "Hide"
L["hide_bags_bar_name"] = "Bags Bar"
L["hide_bags_bar_desc"] = "hide the Bags Bar"
L["hide_tracking_bars_name"] = "Tracking Bars"
L["hide_tracking_bars_desc"] = "hide the XP and Reputation Bar"
L["hide_micro_menu_name"] = "Micro Menu"
L["hide_micro_menu_desc"] = "hide the Micro Menu"
--Event Delay Timer:
L["event_delay_timer_title"] = "Event Delay Timer"
L["event_delay_timer_header_name"] = "Delay fading after..."
L["mount_update_delay_timer_name"] = "...dismounting by:"
L["combat_update_delay_timer_name"] = "...leaving combat by:"
L["dragonriding_update_delay_timer_name"] = "...Dragonriding by:"
L["npc_update_delay_timer_name"] = "...talking to an NPC by:"
L["event_delay_timer_desc"] = "The time after which the frame starts to fade out after the condition is no longer true."
--Trigger:
L["trigger_frame_title_before_module_name"] = "You are currently tweaking: "
L["trigger_frame_title_after_module_name"] = ""
L["trigger_desc_name"] = "Always use mouse-over alpha when:"
L["status_header_name"] = "Status Trigger"
L["zone_header_name"] = "Zone Trigger"
L["config_header_name"] = "Behavior"
L["combat_update_name"] = "In Combat"
L["combat_update_desc"] =  ""
L["dragonriding_update_name"] = "Dragonriding"
L["dragonriding_update_desc"] = ""
L["npc_update_name"] = "Talking to an NPC"
L["npc_update_desc"] = ""
L["raid_update_name"] = "In Raid"
L["raid_update_desc"] = ""
L["dungeon_update_name"] = "In Dungeon"
L["dungeon_update_desc"] = ""
L["battleground_update_name"] = "In Battleground"
L["battleground_update_desc"] = ""
L["arena_update_name"] = "In Arena"
L["arena_update_desc"] = ""
L["scenario_update_name"] = "In Scenario"
L["scenario_update_desc"] = ""
L["open_world_update_name"] = "In Open World"
L["open_world_update_desc"] = ""
L["mount_update_name"] = "Mounted"
L["mount_update_desc"] = ""
L["party_group_update_name"] = "In Party Group"
L["party_group_update_desc"] = ""
L["raid_group_update_name"] = "In Raid Group"
L["raid_group_update_desc"] = ""
--Tweaks:
L["custom_animation_toggle_name"] = "Customize Animation"
L["custom_animation_toggle_desc"] = "Override global settings and use unit-specific settings."
L["animation_speed_in_name"] = "Fade in animation speed"
L["animation_speed_in_desc"] = "the time it takes to go from mouse-out alpha to mouse-over alpha."
L["animation_speed_out_name"] = "Fade out animation speed"
L["animation_speed_out_desc"] = "the time it takes to go from mouse-over alpha to mouse-out alpha."
L["custom_delay_toggle_name"] = "Use custom delay"
L["custom_delay_toggle_desc"] = "Override global settings and use unit-specific settings."
--Mouseover Unit Options:
L["delay_name"] = "Time to fade out"
L["delay_desc"] = "Time after which the unit fades out when the cursor leaves the area."
L["custom_alpha_toggle_desc"] = "Override global settings and use unit-specific alpha settings."
L["min_alpha_name"] = "Mouse-out Alpha"
L["min_alpha_desc"] = "the alpha value when the cursor leaves the region and the fade-out timer has expired."
L["max_alpha_name"] = "Mouse-over Alpha"
L["max_alpha_desc"] = "the alpha value when the cursor enters the region."
L["mouse_over_unit_config_button_name"] = "tweak"
--Profile Management:
L["profile_management_group_name"] = "Profile Management"
L["share_profile_title"] = "Import/Export Profile"
L["share_profile_header"] = "Share your profile or import one"
L["share_profile_desc_row1"] = "To export your current profile copy the code below."
L["share_profile_desc_row2"] = "To import a profile replace the code below and press Accept."
L["share_profile_input_name"] = "import/export from or to your current profile"
L["share_profile_input_desc"] = "Caution: Importing a profile will overwrite your current profile."
--Porfile import error handling:
L["import_empty_string_error"] = "No import string provided. Abort"
L["import_decoding_failed_error"] = "Decoding failed. Abort"
L["import_uncompression_failed_error"] = "Uncompressing failed. Abort"
L["invalid_profile_error"] = "Invalid profile. Abort"
--Minimap button:
L["left_click"] = "Left click:"
L["text_after_left_click"] = "Open add-on settings"
L["right_click"] = "Right click:"
L["text_after_right_click"] = "Disable/Enable add-on"
--
L["combat_message"] = "Please leave combat and try again."