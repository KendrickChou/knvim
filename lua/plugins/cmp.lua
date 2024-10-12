local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

return {
	{ -- Autocompletion
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			-- Snippet Engine & its associated nvim-cnmp source
			{
				'L3MON4D3/LuaSnip',
				build = (function()
					-- Build Step is needed for regex support in snippets.
					-- This step is not supported in many windows environments.
					-- Remove the below condition to re-enable on windows.
					if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
						return
					end
					return 'make install_jsregexp'
				end)(),
				dependencies = {
					-- `friendly-snippets` contains a variety of premade snippets.
					--    See the README about individual language/framework/plugin snippets:
					--    https://github.com/rafamadriz/friendly-snippets
					-- {
					--   'rafamadriz/friendly-snippets',
					--   config = function()
					--     require('luasnip.loaders.from_vscode').lazy_load()
					--   end,
					-- },
				},
			},
			{
				'zbirenbaum/copilot-cmp',
				opts = {},
				dependencies = {
					'zbirenbaum/copilot.lua',
					cmd = 'Copilot',
					opts = {
						fix_pairs = true,
					},
					config = function()
						require('copilot').setup {
							suggestion = { enabled = false },
							panel = { enabled = false },
						}
					end,
				},
			},
			'saadparwaiz1/cmp_luasnip',

			-- Adds other completion capabilities.
			--  nvim-cmp does not ship with all sources by default. They are split
			--  into multiple repos for maintenance purposes.
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'onsails/lspkind.nvim',
		},
		config = function()
			-- See `:help cmp`
			local cmp = require 'cmp'
			local luasnip = require 'luasnip'
			local lspkind = require 'lspkind'
			local icons = require 'icons'
			local has_words_before = function()
				if vim.api.nvim_buf_get_option(0, 'buftype') == 'prompt' then
					return false
				end
				local line, col = unpack(vim.api.nvim_win_get_cursor(0))
				return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match '^%s*$' == nil
			end

			lspkind.init {
				symbol_map = {
					Copilot = icons.get('cmp').Copilot_alt,
				},
			}

			vim.api.nvim_set_hl(0, 'CmpItemKindCopilot', { fg = '#6CC644' })


			luasnip.config.setup {}
			cmp.setup {
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				completion = { completeopt = 'menu,menuone,noselect' },

				window = {
					completion = {
						border = 'rounded',
					},
					documentation = {
						border = 'rounded',
					},
				},

				-- documentation = {
				-- 	border = border 'CmpDocBorder',
				-- },
				--- Do not preselect, allow <Tab> to select first entry
				preselect = cmp.PreselectMode.None,

				-- For an understanding of why these mappings were
				-- chosen, you will need to read `:help ins-completion`
				--
				-- No, but seriously. Please read `:help ins-completion`, it is really good!
				mapping = cmp.mapping.preset.insert {
					-- Select the [n]ext item
					['<C-n>'] = cmp.mapping.select_next_item(),
					-- Select the [p]revious item
					['<C-p>'] = cmp.mapping.select_prev_item(),

					-- Scroll the documentation window [b]ack / [f]orward
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),

					-- Accept ([y]es) the completion.
					--  This will auto-import if your LSP supports it.
					--  This will expand snippets if the LSP sent a snippet.
					-- ['<C-y>'] = cmp.mapping.confirm { select = true },
					['<Enter>'] = cmp.mapping(function(fallback)
						if cmp.visible() and has_words_before() and vim.g.tab_pressed then
							cmp.confirm { select = true }
							vim.g.tab_pressed = false
						else
							fallback()
						end
					end, { 'i', 's' }),

					['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() and has_words_before() then
							cmp.select_next_item()
							vim.g.tab_pressed = true
						elseif luasnip.expand_or_locally_jumpable() then
							vim.fn.feedkeys(t '<Plug>luasnip-expand-or-jump')
						else
							fallback()
						end
					end, { 'i', 's' }),
					['<S-Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.expand_or_locally_jumpable() then
							vim.fn.feedkeys(t '<Plug>luasnip-jump-prev', '')
						else
							fallback()
						end
					end, { 'i', 's' }),

					-- Manually trigger a completion from nvim-cmp.
					--  Generally you don't need this, because nvim-cmp will display
					--  completions whenever it has completion options available.
					-- ['<C-Space>'] = cmp.mapping.complete {},

					-- Think of <c-l> as moving to the right of your snippet expansion.
					--  So if you have a snippet that's like:
					--  function $name($args)
					--    $body
					--  end
					--
					-- <c-l> will move you to the right of each of the expansion locations.
					-- <c-h> is similar, except moving you backwards.
					['<C-l>'] = cmp.mapping(function()
						if luasnip.expand_or_locally_jumpable() then
							luasnip.expand_or_jump()
						end
					end, { 'i', 's' }),
					['<C-h>'] = cmp.mapping(function()
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { 'i', 's' }),

					-- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
					--    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
				},
				formatting = {
					expandable_indicator = true,
					fields = { 'abbr', 'kind', 'menu' },
					format = lspkind.cmp_format {
						maxwidth = 20,
						ellipsis_char = '...',
					},
				},
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{ name = 'path' },
					{ name = 'copilot' },
				},
			}
		end,
	},
}
