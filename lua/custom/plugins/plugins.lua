-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- add catppuccin
  { 'catppuccin/nvim' },

  -- add gruvbox
  { 'ellisonleao/gruvbox.nvim' },

  -- add hardhacker
  {
    'hardhackerlabs/theme-vim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'hardhacker'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  -- add eva01/eva01-LCL
  { 'hachy/eva01.vim' },

  -- set default colorscheme
  -- {
  --   'LazyVim/LazyVim',
  --   opts = {
  --     colorscheme = 'hardhacker',
  --   },
  -- },
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

  -- begin terraform stuff
  {
    'nvim-treesitter/nvim-treesitter',
    opts = { ensure_installed = { 'terraform', 'hcl' } },
  },
  -- {
  --   'neovim/nvim-lspconfig',
  --   opts = {
  --     autoformat = false,
  --     servers = {
  --       terraformls = {
  --         formatOnSave = true,
  --         preserveSpacing = true,
  --       },
  --     },
  --   },
  --   enabled = true,
  -- },
  -- {
  --   'williamboman/mason.nvim',
  --   opts = { ensure_installed = { 'tflint' } },
  -- },
  -- {
  --   'nvim-telescope/telescope.nvim',
  --   optional = true,
  --   specs = {
  --     {
  --       'ANGkeith/telescope-terraform-doc.nvim',
  --       ft = { 'terraform', 'hcl' },
  --     },
  --     {
  --       'cappyzawa/telescope-terraform.nvim',
  --       ft = { 'terraform', 'hcl' },
  --     },
  --   },
  -- },
  -- {
  --   optional = true,
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = {
  --       hcl = { "packer_fmt" },
  --       terraform = { "terraform_fmt" },
  --       tf = { "terraform_fmt" },
  --       ["terraform-vars"] = { "terraform_fmt" },
  --     },
  --   },
  -- },
  -- {
  --   optional = true,
  --   "nvimtools/none-ls.nvim",
  --   opts = function(_, opts)
  --     local null_ls = require("null-ls")
  --     opts.sources = vim.list_extend(opts.sources or {}, {
  --       null_ls.builtins.formatting.packer,
  --       null_ls.builtins.formatting.terraform_fmt,
  --       null_ls.builtins.diagnostics.terraform_validate,
  --     })
  --   end,
  -- },
  --end terraform stuff
}
