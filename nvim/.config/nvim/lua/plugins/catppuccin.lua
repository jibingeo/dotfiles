require("packer").use({ "catppuccin/nvim", as = "catppuccin" })

require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	transparent_background = true,
})

-- setup theme
vim.cmd.colorscheme("catppuccin")
