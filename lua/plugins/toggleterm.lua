return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},
    config = function()
      require('toggleterm').setup {
        size = function(term)
          if term.direction == 'horizontal' then
            return 15
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.40
          end
        end,

        vim.keymap.set({ 'n', 'v' }, '<leader>tf', '<Esc>:ToggleTerm direction=float<CR>', { desc = '[T]erminal [f]loat' }),
        vim.keymap.set({ 'n', 'v' }, '<leader>th', '<Esc>:ToggleTerm direction=horizontal<CR>', { desc = '[T]erminal [h]orizontal' }),
        vim.keymap.set({ 'n', 'v' }, '<leader>tv', '<Esc>:ToggleTerm direction=vertical<CR>', { desc = '[T]erminal [v]ertical' }),
      }
    end,
  },
}
