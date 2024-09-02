-- Pull in the wezterm API
local wezterm = require "wezterm"
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dracula+"

-- Set leader key
config.leader = { key = "z", mods = "OPT", timeout_milliseconds = 1500 }

-- Keybinds for splitting panes
config.keys = {
  { key = "d", mods = "SHIFT|CMD", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "DownArrow", mods = "SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },
  { key = "UpArrow", mods = "SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "LeftArrow", mods = "SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "RightArrow", mods = "SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = true }) },
  { key = "r", mods = "LEADER", action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }) },
  { key = "Enter", mods = "LEADER", action = act.ActivateCopyMode },
  { key = "c", mods = "CMD", action = act.CopyTo("Clipboard") },
  { key = "n", mods = "CMD", action = act.SpawnWindow },
  { key = "v", mods = "CMD", action = act.PasteFrom("Clipboard") },
  {
    key = ",",
    mods = "LEADER",
    action = act.PromptInputLine({
      description = "Enter new name for tab",
      action = wezterm.action_callback(function(window, pane, line)
        if line then
          window:active_tab():set_title(line)
        end
      end),
    }),
  },
}
config.mouse_bindings = {
  -- Ctrl-click will open the link under the mouse cursor
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "CTRL",
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}


-- Font
config.font = wezterm.font "MesloLGS NF"
config.default_cursor_style = "SteadyBar"

config.ssh_domains = {
    {
        name = "server",
        remote_address = "gcis-lxwast-rl.main.ad.rit.edu",
        username = "bl1282",
        remote_wezterm_path = "/home/bl1282/bin/wezterm"
    },
    {
        name = "rit_pc",
        remote_address = "gccis-bl1282-rl1.main.ad.rit.edu",
        username = "bl1282",
        remote_wezterm_path = "/home/bl1282/bin/wezterm"
    },
    {
        name = "granger",
        remote_address = "granger.cs.rit.edu",
        username = "bl1282",
        remote_wezterm_path = "/home/fall2023/bl1282/.local/opt/brew/bin/wezterm"
    },
    {
        name = "weasley",
        remote_address = "weasley.cs.rit.edu",
        username = "bl1282",
        remote_wezterm_path = "/home/fall2023/bl1282/.local/opt/brew/bin/wezterm"
    },
    {
        name = "lovegood",
        remote_address = "lovegood.cs.rit.edu",
        username = "bl1282",
        remote_wezterm_path = "/home/fall2023/bl1282/.local/opt/brew/bin/wezterm"
    },
}

-- and finally, return the configuration to wezterm
return config
