local wezterm = require 'wezterm'

return {
    font = wezterm.font('JetBrains Mono'),
    font_size = 16.0,
    -- color_scheme = 'Dracula',
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    use_fancy_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    window_background_opacity = 0.8,
	macos_window_background_blur = 10,

	-- Remove the title bar
    window_decorations = 'NONE',  -- This removes the top bar

    keys = {
        --{ key = 't', mods = 'CTRL', action = wezterm.action.SpawnTab('DefaultDomain') },
        --{ key = 'w', mods = 'CTRL', action = wezterm.action.CloseCurrentTab { confirm = true } },
		-- Split the window into another terminal
        { key = 's', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
        { key = 'a', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

        -- Close the split window
        { key = 'x', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = true } },

		-- Navigate between split windows
        { key = ';', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left' },
        { key = 'l', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down' },
        { key = 'k', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up' },
        { key = 'j', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right' },

		-- Close the entire window
        { key = 'q', mods = 'CTRL|SHIFT', action = wezterm.action.QuitApplication },

    },
    -- Add other settings as needed
}
