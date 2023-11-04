require("packer").use({ "mhartington/formatter.nvim" })

-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	filetype = {
    javascript = {
	    require("formatter.filetypes.javascriptreact").prettier,
    },
    javascriptreact = {
	    require("formatter.filetypes.javascriptreact").prettier,
    },
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
		require("formatter.filetypes.lua").stylua,
		},

		javascript = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.javascript").prettier,
		},

		json = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.javascript").prettier,
		},
    
	},
})
