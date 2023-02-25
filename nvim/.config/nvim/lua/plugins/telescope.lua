require("packer").use({
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	requires = { { "nvim-lua/plenary.nvim" } },
})

require("telescope").setup({})

-- keybindings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
