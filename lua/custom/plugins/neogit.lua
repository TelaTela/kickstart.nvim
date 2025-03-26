return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    -- 'ibhagwan/fzf-lua', -- optional
    -- 'echasnovski/mini.pick', -- optional
  },
  config = function()
    local neogit = require 'neogit'
    neogit.setup {}

    -- Keymaps
    vim.keymap.set('n', '<leader>Gg', function()
      neogit.open()
    end, { desc = 'Open Neogit' })

    vim.keymap.set('n', '<leader>Gb', function()
      neogit.open { 'branch' }
    end, { desc = 'Show git branches' })
  end,
}
