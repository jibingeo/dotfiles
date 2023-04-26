return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Theme
	require("plugins/catppuccin")

	-- Filetree
	require("plugins/nvim-tree")

	-- Telescope
	require("plugins/telescope")

	-- Formatter
	require("plugins/formatter")

	-- Lualine
	require("plugins/lualine")

	-- incline
	require("plugins/incline")

	-- smart split
	require("plugins/smart-splits")

	-- comment.nvim
	require("plugins/comment")

	-- elixir.nvim
	require("plugins/elixir")

	-- nvim-treesitter
	require("plugins/nvim-treesitter")
end)
