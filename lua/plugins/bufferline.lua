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
					bg = {
						attribute = "bg",
						highlight = "Normal"
					},
				},
				background = {
					bg = {
						attribute = "bg",
						highlight = "Normal"
					}
				},
				tab = {
					fg = {
						attribute = "fg",
						highlight = "Normal"
					},
					bg = {
						attribute = "bg",
						highlight = "Normal"
					}
				},
				tab_close = {
					fg = {
						attribute = "fg",
						highlight = "Normal"
					},
					bg = {
						attribute = "bg",
						highlight = "Normal"
					}
				},
				close_button = {
					bg = {
						attribute = "bg",
						highlight = "Normal"
					}
				},
				separator = {
					fg = {
						attribute = "fg",
						highlight = "Normal"
					},
					bg = {
						attribute = "bg",
						highlight = "Normal"
					}
				},
			},
		},
	},
}
