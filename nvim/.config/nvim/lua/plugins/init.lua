local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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
  
	-- autoclose
	require("plugins/autoclose")

  -- boostrap
  if packer_bootstrap then
    require('packer').sync()
  end
end)
