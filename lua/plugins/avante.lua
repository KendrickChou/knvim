return {
	'yetone/avante.nvim',
	event = 'VeryLazy',
	lazy = false,
	version = '0.0.8', -- set this if you want to always pull the latest change
	opts = {
		-- add any opts here
		provider = 'openai',
		auto_suggestion_provider = 'openai',
		openai = {
			endpoint = 'http://ipads.chat.gpt:3006/v1',
			-- model = "gpt-4o",
			model = 'claude-3-5',
			timeout = 30000, -- Timeout in milliseconds
			temperature = 0,
			max_tokens = 4096,
			['local'] = false,
		},
		behaviour = {
			auto_suggestions = false, -- Experimental stage
			auto_set_highlight_group = true,
			auto_set_keymaps = true,
			auto_apply_diff_after_generation = false,
			support_paste_from_clipboard = false,
		},
	},
	-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	build = 'make',
	-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'stevearc/dressing.nvim',
		'nvim-lua/plenary.nvim',
		'MunifTanjim/nui.nvim',
		--- The below dependencies are optional,
		'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
		'zbirenbaum/copilot.lua', -- for providers='copilot'
		-- {
		--   -- support for image pasting
		--   "HakonHarnes/img-clip.nvim",
		--   event = "VeryLazy",
		--   opts = {
		--     -- recommended settings
		--     default = {
		--       embed_image_as_base64 = false,
		--       prompt_for_file_name = false,
		--       drag_and_drop = {
		--         insert_mode = true,
		--       },
		--       -- required for Windows users
		--       use_absolute_path = true,
		--     },
		--   },
		-- },
		{
			-- Make sure to set this up properly if you have lazy=true
			'MeanderingProgrammer/render-markdown.nvim',
			opts = {
				file_types = { 'markdown', 'Avante' },
			},
			ft = { 'markdown', 'Avante' },
		},
	},
}