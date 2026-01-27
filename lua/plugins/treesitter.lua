return {
	{ -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-context',
		},
		config = function(_, opts)
			require('nvim-treesitter').install({'rust', 'bash', 'c', 'cpp', 'lua', 'python', 'make', 'latex', 'vim', 'vimdoc', 'markdown'})
		end,
	},
}
