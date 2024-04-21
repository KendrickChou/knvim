return {
	-- {
	-- 	'neanias/everforest',
	-- 	opts = {},
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.everforest_colors_override = { bg_dim = '#2d353b' }
	-- 		-- vim.g.everforest_background = 'hard'
	-- 		-- vim.cmd.colorscheme 'everforest'
	-- 	end,
	-- },
	{
		'sannihe/everforest',
		opts = {},
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_colors_override = { bg_dim = '#2d353b' }
			-- vim.g.everforest_background = 'hard'
			vim.cmd.colorscheme 'everforest'
		end,
	},
}
