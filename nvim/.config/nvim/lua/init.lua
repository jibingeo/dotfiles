-- line number
vim.wo.number = true
vim.wo.relativenumber = true

-- leaderkey
vim.g.mapleader = " "

-- space and tab
local TAB_WIDTH = 2
vim.opt.tabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH
vim.opt.expandtab = true

-- hide command line
vim.opt.cmdheight = 0

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups 
vim.opt.termguicolors = true

require("plugins")
