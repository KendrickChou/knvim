return {
	'jackMort/ChatGPT.nvim',
	event = 'VeryLazy',
	config = function()
		require('chatgpt').setup {
			openai_params = {
				-- NOTE: model can be a function returning the model name
				-- this is useful if you want to change the model on the fly
				-- using commands
				-- Example:
				-- model = function()
				--     if some_condition() then
				--         return "gpt-4-1106-preview"
				--     else
				--         return "gpt-3.5-turbo"
				--     end
				-- end,
				model = 'gpt-4o',
				frequency_penalty = 0,
				presence_penalty = 0,
				max_tokens = 4095,
				temperature = 0.2,
				top_p = 0.1,
				n = 1,
			},
			api_key_cmd = 'cat ' .. vim.fn.expand '$HOME' .. '/.config/nvim/openai.sk',
			api_host_cmd = 'echo http://ipads.chat.gpt:3006',
			chat = {
				keymaps = {
					close = '<Esc><Esc>',
					yank_last = '<C-y>',
					yank_last_code = '<C-k>',
					scroll_up = '<C-u>',
					scroll_down = '<C-d>',
					new_session = '<C-n>',
					cycle_windows = '<Tab>',
					cycle_modes = '<C-f>',
					next_message = '<C-j>',
					prev_message = '<C-k>',
					select_session = '<Enter>',
					rename_session = 'r',
					delete_session = 'd',
					draft_message = '<C-r>',
					edit_message = 'e',
					delete_message = 'd',
					toggle_settings = '<C-o>',
					toggle_sessions = '<C-p>',
					toggle_help = '<C-h>',
					toggle_message_role = '<C-r>',
					toggle_system_role_open = '<C-s>',
					stop_generating = '<C-x>',
				},
			},
		}

		vim.keymap.set('n', '<leader>cc', '<cmd>ChatGPT<CR>', { desc = '[C]hatGPT' })
		vim.keymap.set('n', '<leader>ca', '<cmd>ChatGPTActAs<CR>', { desc = '[C]hatGPT [A]ct' })
	end,
	dependencies = {
		'MunifTanjim/nui.nvim',
		'nvim-lua/plenary.nvim',
		'folke/trouble.nvim',
		'nvim-telescope/telescope.nvim',
	},
}
