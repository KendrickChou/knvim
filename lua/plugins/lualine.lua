local diag_icons = require('icons').get 'diagnostics'
local git_icons = require('icons').get 'git'
local mode = 'mode'
local filetype = {
	'filetype',
	-- padding = { left = 0, right = 0 },
}
local filename = {
	'filename',
	path = 1,
	padding = { left = 0, right = 0 },
}
local branch = {
	'branch',
	icon = git_icons.Branch,
	colored = true,
	padding = { left = 0, right = 1 },
}
local diagnostics = {
	'diagnostics',
	sources = { 'nvim_diagnostic' },
	sections = { 'error', 'warn', 'info', 'hint' },
	symbols = {
		error = diag_icons.Error_alt .. ' ',
		hint = diag_icons.Hint_alt .. ' ',
		info = diag_icons.Information_alt .. ' ',
		warn = diag_icons.Warning_alt .. ' ',
	},
	colored = true,
	update_in_insert = false,
	always_visible = false,
	-- padding = { left = 0, right = 1 },
}

local diff = {
	'diff',
	source = function()
		local gitsigns = vim.b.gitsigns_status_dict
		if gitsigns then
			return {
				added = gitsigns.added,
				modified = gitsigns.changed,
				removed = gitsigns.removed,
			}
		end
	end,
	symbols = {
		added = git_icons.Add .. ' ',
		modified = git_icons.Mod_alt .. ' ',
		removed = git_icons.Remove .. ' ',
	},
	colored = true,
	always_visible = true,
	padding = { left = 0, right = 1 },
}

local searchcount = {
	'searchcount',
	padding = { left = 1, right = 0 },
}

local location = {
	'location',
	padding = { left = 0, right = 0 },
}

return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			'AndreM222/copilot-lualine',
		},
		opts = {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = { left = '', right = '' },
				section_separators = { left = ' ', right = ' ' },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { branch, diff },
				lualine_c = { filename,  },
				lualine_x = { 'copilot', filetype, diagnostics },
				lualine_y = {},
				lualine_z = { searchcount, location },
				-- lualine_a = { 'mode' },
				-- lualine_b = { 'branch', 'diff', 'diagnostics' },
				-- lualine_c = { 'filename' },
				-- lualine_x = { 'copilot', 'encoding', 'fileformat', 'filetype' },
				-- lualine_y = { 'progress' },
				-- lualine_z = { 'searchcount', 'location' },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { 'filename' },
				lualine_x = { 'location' },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {
				'aerial',
				'neo-tree'
			},
		},
	},
}
