-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
	{ -- Useful plugin to show you pending keybinds.
		'folke/which-key.nvim',
		event = 'VimEnter', -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			require('which-key').setup()

			local wk = require('which-key')
			-- Document existing key chains
			wk.add({
				{ '<leader>a', group = '[A]vante' },
				{ '<leader>a_', hidden = true },
				{ '<leader>c', group = '[C]hatGPT' },
				{ '<leader>c_', hidden = true },
				{ '<leader>d', group = '[D]ocument' },
				{ '<leader>d_', hidden = true },
				{ '<leader>f', group = '[F]ind' },
				{ '<leader>f_', hidden = true },
				{ '<leader>h', group = 'Git [H]unk' },
				{ '<leader>h_', hidden = true },
				{ '<leader>r', group = '[R]ename' },
				{ '<leader>r_', hidden = true },
				{ '<leader>t', group = '[T]erminal' },
				{ '<leader>t_', hidden = true },
				{ '<leader>w', group = '[W]orkspace' },
				{ '<leader>w_', hidden = true },
				{ '<leader>h', desc = 'Git [H]unk', mode = 'v' },
			})
			-- -- Document existing key chains
			-- require('which-key').register {
			-- 	['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
			-- 	['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
			-- 	['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
			-- 	['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
			-- 	['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
			-- 	['<leader>t'] = { name = '[T]erminal', _ = 'which_key_ignore' },
			-- 	['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
			-- }
			-- -- visual mode
			-- require('which-key').register({
			-- 	['<leader>h'] = { 'Git [H]unk' },
			-- }, { mode = 'v' })
		end,
	},
}
