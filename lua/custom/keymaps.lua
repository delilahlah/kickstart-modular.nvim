-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "qq", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "qq", "<Esc>", { noremap = true, silent = true })
-- Disable mouse horizontal scrolling
vim.keymap.set("", "<ScrollWheelLeft>", "<Nop>")
vim.keymap.set("", "<ScrollWheelRight>", "<Nop>")
-- Send some stuff to the black hole register by default
vim.keymap.set("n", "di", '"_di', { noremap = true, silent = true })
vim.keymap.set("n", "dw", '"_dw', { noremap = true, silent = true })
vim.keymap.set("n", "diw", '"_diw', { noremap = true, silent = true })
-- I miss acme
vim.keymap.set(
  "x",
  "<leader>tts",
  ":ToggleTermSendVisualSelection<CR>",
  { noremap = true, silent = true, desc = "Send selection to ToggleTerm" }
)
vim.api.nvim_set_keymap(
  "n",
  "lg",
  "<cmd>lua require('toggleterm.terminal').Terminal:new({ cmd = 'lazygit', hidden = true, direction = 'float' }):toggle()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "tts", "<cmd>ToggleTermSendVisualSelection<CR>", { noremap = true, silent = true })
