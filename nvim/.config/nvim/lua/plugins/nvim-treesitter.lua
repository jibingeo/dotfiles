require("packer").use({
	"nvim-treesitter/nvim-treesitter",
	run = function()
		local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		ts_update()
	end,
})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "tsx", "typescript" },
	highlight = {
		enable = true,
    additional_vim_regex_highlighting = false,
	},
})
