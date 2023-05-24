return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "p00f/clangd_extensions.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    opts =  {
        ensure_installed = { "clangd" }, -- automatically install lsp
      },
  },
}
