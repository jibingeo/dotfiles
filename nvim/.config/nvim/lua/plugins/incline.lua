require("packer").use({ "b0o/incline.nvim" })

require("incline").setup({
	window = {
		margin = {
			vertical = 1,
			horizontal = 0,
		},
		padding = 0,
		winhighlight = {
			active = {
				Normal = "Normal",
			},
			inactive = {
				Normal = "VertSplit",
			},
		},
	},
	render = function(props)
		local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
		local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
		local modified = vim.api.nvim_buf_get_option(props.buf, "modified") and " *" or ""

		local buffer = {
			{ "[ " },
			{ filename == "" and "[No Name]" or filename },
			{ modified },
			{ " ]" },
		}
		return buffer
	end,
})
