-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  renderer = {
    highlight_git = true,
    icons = {
      git_placement = "after"
    }
  }
})

-- keybindings
vim.keymap.set('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', {silent = true })

