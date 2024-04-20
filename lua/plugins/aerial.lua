return {
	{
		'stevearc/aerial.nvim',
		opts = {
			ignore = { filetypes = { 'neo-tree', 'terminal', 'nofile' } },
			-- optionally use on_attach to set keymaps when aerial has attached to a buffer
			on_attach = function(bufnr)
				-- Jump forwards/backwards with '{' and '}'
				vim.keymap.set('n', '{', ':AerialPrev<CR>', { buffer = bufnr })
				vim.keymap.set('n', '}', ':AerialNext<CR>', { buffer = bufnr })
			end,
			vim.keymap.set('n', '<leader>do', ':AerialToggle!<CR>', { desc = '[D]ocument [O]utline' }),
		},
		-- Optional dependencies
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons',
		},
	},
}
