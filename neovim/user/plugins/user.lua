return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "p00f/clangd_extensions.nvim",
    lazy = false,
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function() require("clangd_extensions").setup() end,
  },
}
