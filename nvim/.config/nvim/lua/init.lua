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

require("plugins")
