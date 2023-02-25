require("packer").use({
	"nvim-tree/nvim-tree.lua",
	requires = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
})

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	hijack_cursor = true,
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	renderer = {
		highlight_git = true,
		indent_markers = {
			enable = false,
		},
		icons = {
			git_placement = "after",
			show = {
				file = false,
				folder = false,
				folder_arrow = true,
				git = true,
				modified = true,
			},
		},
	},
	view = {
		hide_root_folder = true,
		signcolumn = "no",
		float = {
			enable = true,
			open_win_config = {
				row = 0,
				col = 0,
			},
		},
	},
})

-- keybindings
vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", { silent = true })
