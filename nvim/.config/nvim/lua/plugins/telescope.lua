require("packer").use({
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	requires = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
})

local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close,
			},
		},
	},
})

--extensions
telescope.load_extension("file_browser")

local file_browser = telescope.extensions.file_browser

-- keybindings
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

vim.keymap.set("n", "<leader>f", function()
	file_browser.file_browser({
    path = "%:p:h",
    selected_buffer = true
  })
end, {})

vim.keymap.set("n", "<leader>g", builtin.live_grep, {})

vim.keymap.set("n", "<leader>b", function()
	builtin.buffers({
		sort_lastused = true,
	})
end, {})

vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
