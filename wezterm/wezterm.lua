------------------------------------------------------
--               Wezterm configuration
-----------------------------------------------------
local wezterm = require("wezterm")
local mux = wezterm.mux

local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

local config = {
	check_for_updates = false,
	color_scheme = "MaterialDarker",

	enable_scroll_bar = false,
	exit_behavior = "Close",

	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "DemiBold", italic = false }),
	font_size = 11.0,

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	default_cursor_style = "SteadyUnderline",
	window_background_opacity = 0.95,
	adjust_window_size_when_changing_font_size = true,
	hide_tab_bar_if_only_one_tab = true,

	launch_menu = {},
}

if is_windows then
	config["default_prog"] = { "pwsh" }

	table.insert(config.launch_menu, { label = "🟣 PowerShell Core", args = { "pwsh.exe", "-NoLogo" } })
	table.insert(config.launch_menu, { label = "🔵 Windows PowerShell", args = { "powershell" } })

	for _, vsvers in ipairs(wezterm.glob("Microsoft Visual Studio/20*", "C:/Program Files (x86)")) do
		local year = vsvers:gsub("Microsoft Visual Studio/", "")
		table.insert(config.launch_menu, {
			label = "x64 Native Tools VS " .. year,
			args = {
				"cmd.exe",
				"/k",
				"C:/Program Files (x86)/" .. vsvers .. "/BuildTools/VC/Auxiliary/Build/vcvars64.bat",
			},
		})
	end
end

return config
