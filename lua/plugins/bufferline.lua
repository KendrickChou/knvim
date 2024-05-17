return {
	{
		'akinsho/bufferline.nvim',
		-- version = '*',
		dependencies = 'nvim-tree/nvim-web-devicons',
		opts = {
			options = {
				offsets = {
					{
						filetype = 'neo-tree',
						text = 'File Explorer',
						text_align = 'center',
						padding = 0,
					},
				},
			},
			highlights = {
				fill = {
					bg = '#2d353b',
				},
				background = {
					bg = '#2d353b',
				},
				-- tab = {
				-- 	fg = '#2d353b',
				-- 	bg = '#2d353b',
				-- },
				tab_close = {
					fg = '#2d353b',
					bg = '#2d353b',
				},
				close_button = {
					bg = '#2d353b',
				},
				separator = {
					fg = '#2d353b',
					bg = '#2d353b',
				},
			},
		},
	},
}
