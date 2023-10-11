local utils = require "astronvim.utils"
return {
  {
    "p00f/clangd_extensions.nvim",
    -- init = function() utils.list_insert_unique(astronvim.lsp.skip_setup, "clangd") end,
    ft = { "c", "cpp" },
    lazy = true,
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    opts = function() return { server = require("astronvim.utils.lsp").config "clangd" } end,
  },
}
