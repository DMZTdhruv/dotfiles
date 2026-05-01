-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local util = require("lazyvim.util")
local snacks = require("snacks")

vim.keymap.set("n", "<C-/>", function()
  snacks.terminal(nil, { border = "none" })
end, { desc = "Term with border" })

vim.keymap.set("n", "<leader>gg", function()
  snacks.terminal({ "lazygit" }, { cwd = util.root(), esc_esc = false, ctrl_hjkl = false, border = "none" })
end, { desc = "Lazygit (root dir)" })

keymap.set("n", "ss", ":vsplit<Return>", opts)
keymap.set("n", "sv", ":split<Return>", opts)
