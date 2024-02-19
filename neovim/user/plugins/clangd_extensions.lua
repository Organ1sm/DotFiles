local utils = require "astronvim.utils"
return {
  {
    "p00f/clangd_extensions.nvim",
    ft = { "c", "cpp" },
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    opts = function() return { server = require("astronvim.utils.lsp").config "clangd" } end,
    lazy = true,
  },
}
