-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 1
opt.cmdheight = 0

opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 8
opt.relativenumber = false
opt.clipboard = "unnamedplus"
opt.termguicolors = true

opt.pumblend = 0

opt.expandtab = true
opt.shiftwidth = 2
opt.wrap = true

vim.g.snacks_animate = false
vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_cmp = "blink.cmp"

vim.g.root_spec = { "cwd" }
vim.g.omni_sql_no_default_maps = 1

opt.linebreak = true -- Wrap lines at word boundaries
opt.breakindent = true -- Indent wrapped lines to match original indentation
opt.showbreak = "↳ " -- String to show at the start of wrapped lines
opt.wildignore:append({ "*/node_modules/*" })

opt.showtabline = 2 -- Always show tabline (like Helix's bufferline)
opt.cursorline = true -- Highlight cursor line (like Helix's inline diagnostics)
opt.showmode = false -- Hide mode in command line (lualine shows it)
opt.signcolumn = "yes" -- Always show sign column for diagnostics
opt.list = true -- Show whitespace characters

-- Indent guides
opt.list = true
