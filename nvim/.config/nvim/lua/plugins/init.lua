return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Thems
  use { "catppuccin/nvim", as = "catppuccin" }
  require("plugins/catppuccin")

  -- Filetree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  require("plugins/nvim-tree")
end)
	
	
	
	
	
