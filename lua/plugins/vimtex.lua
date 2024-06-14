return {
	{
		'lervag/vimtex',
		lazy = false,
		config = function()
			vim.g.vimtex_mappings_prefix = ','
			vim.g.vimtex_view_method = 'skim'
			-- vim.g.vimtex_compiler_latexmk_engines = {
			-- 	_ = '-xelatex',
			-- }
			vim.g.vimtex_view_skim_sync = 1
			-- vim.g.vimtex_view_skim_activate = 1
			vim.g.tex_comment_nospell = 1
			vim.g.vimtex_quickfix_open_on_warning = 0
			vim.g.vimtex_complete_enabled = 0
			-- vim.g.vimtex_lint_chktex_ignore_warnings = 0
			-- vim.g.vimtex_log_ignore = { 'thebibliography' }
			-- vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
		end,
	},
}
