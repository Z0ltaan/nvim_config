return {
  {
    'ibhagwan/fzf-lua',
    event = 'BufEnter',

    config = function()
      local fzflua = require 'fzf-lua'
      fzflua.setup {
        fzf_colors = {
          ['hl+'] = { 'fg', 'WarningMsg', 'bold' },
          ['hl'] = { 'fg', 'WarningMsg', 'bold' },
        },

        vim.keymap.set('n', '<leader>sf', fzflua.files, { desc = '[S]earch [F]iles' }),
        vim.keymap.set('n', '<leader>sh', fzflua.helptags, { desc = '[S]earch [H]elp' }),
        vim.keymap.set('n', '<leader>sm', fzflua.man_pages, { desc = '[S]earch [M]anual pages' }),
        vim.keymap.set('n', '<leader><leader>', fzflua.buffers, { desc = '[ ] Search existing buffers' }),
        vim.keymap.set('n', '<leader>/', fzflua.grep_curbuf, { desc = '[/] Search current buffer only' }),

        vim.keymap.set('n', '<leader>gs', fzflua.git_status, { desc = '[G]it [S]tatus' }),
        vim.keymap.set('n', '<leader>gb', fzflua.git_branches, { desc = '[G]it [B]ranches' }),
        vim.keymap.set('n', '<leader>gc', fzflua.git_commits, { desc = '[G]it [C]ommits' }),

        vim.keymap.set('n', '<leader>mh', fzflua.highlights, { desc = '[M]isc find [H]ighlights' }),
        vim.keymap.set('n', '<leader>mc', fzflua.colorschemes, { desc = '[M]isc find [C]olorschemes' }),
        vim.keymap.set('n', '<leader>mk', fzflua.keymaps, { desc = '[M]isc find [K]eymaps' }),
      }
    end,
  },
}
