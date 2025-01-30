-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_gitignored = false,
          hide_hidden = false,
          hide_dotfiles = false,
        },
        follow_current_file = true,
      },
      window = {
        position = 'left', -- Options: left, right, float
        width = 35, -- Width of the NeoTree window
        mappings = {
          ['<leftrelease>'] = 'open',
        },
      },
      source_selector = {
        winbar = true,
        statusline = false,
        sources = {
          { source = 'filesystem' },
          { source = 'buffers' },
        },
      },
    }
  end,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
