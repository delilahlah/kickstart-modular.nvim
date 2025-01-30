return {
  -- add catppuccin
  { 'catppuccin/nvim' },

  -- add gruvbox
  { 'ellisonleao/gruvbox.nvim' },

  -- add eva01/eva01-LCL
  { 'hachy/eva01.vim' },

  -- add hardhacker
  {
    'hardhackerlabs/theme-vim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'hardhacker'
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
        },
      }
    end,
  },

  -- toggleterm
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      size = vim.o.columns * 0.4,
      direction = 'vertical',
      start_in_insert = true,
      persist_mode = false,
      responsiveness = {
        horizontal_breakpoint = 135,
        vertical_breakpoint = 80,
      },
      float_opts = {
        border = 'curved',
      },
    },
  },

  -- columns
  {
    'godlygeek/tabular',
  },
}
