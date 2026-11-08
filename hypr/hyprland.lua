
--------------------------------------------------
-- HYPRLAND CONFIGURATION
--------------------------------------------------


--------------------------------------------------
-- 1. APPLICATIONS
--------------------------------------------------

local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "rofi -show run"
local browser     = "firefox"


--------------------------------------------------
-- 2. ENVIRONMENT VARIABLES
--------------------------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


--------------------------------------------------
-- 3. MODULE LOADING
--------------------------------------------------

-- Monitor
require("modules.monitors")

-- Appearance and animations
require("modules.settings")
require("modules.animations")

-- System configuration
require("modules.system")

-- Input and layouts
require("modules.input")
require("modules.layouts")

-- Window rules
require("modules.window-rules")

-- Keyboard and mouse shortcuts
require("modules.keybindings")({
    terminal = terminal,
    fileManager = fileManager,
    menu = menu,
    browser = browser,
})


--------------------------------------------------
-- 4. AUTOSTART
--------------------------------------------------

--------------------------------------------------
-- 4. AUTOSTART
--------------------------------------------------

-- Start Hypridle when Hyprland starts.
hl.on("hyprland.start", function()
    hl.exec_cmd("hypridle")
end)

--------------------------------------------------
-- 5. PERMISSIONS
--------------------------------------------------

-- Permission changes require a Hyprland restart.
-- Review these carefully before enabling them.
--
-- hl.config({
--     ecosystem = {
--         enforce_permissions = true,
--     },
-- })
--
-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
--
-- hl.permission(
--     "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland",
--     "screencopy",
--     "allow"
-- )
--
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


--------------------------------------------------
-- 6. OPTIONAL WORKSPACE RULES
--------------------------------------------------

-- Smart Gaps / No gaps when only
-- Enable these rules if you decide to use this behavior.
--
-- hl.workspace_rule({
--     workspace = "w[tv1]",
--     gaps_out = 0,
--     gaps_in = 0,
-- })
--
-- hl.workspace_rule({
--     workspace = "f[1]",
--     gaps_out = 0,
--     gaps_in = 0,
-- })
--
-- hl.window_rule({
--     name = "no-gaps-wtv1",
--     match = {
--         float = false,
--         workspace = "w[tv1]",
--     },
--     border_size = 0,
--     rounding = 0,
-- })
--
-- hl.window_rule({
--     name = "no-gaps-f1",
--     match = {
--         float = false,
--         workspace = "f[1]",
--     },
--     border_size = 0,
--     rounding = 0,
-- })

