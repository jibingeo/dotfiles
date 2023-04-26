require("packer").use({
   "mhanberg/elixir.nvim",
   requires = { "nvim-lua/plenary.nvim" }
})

require("elixir").setup({
  cmd = "/usr/bin/elixir-ls",
})
