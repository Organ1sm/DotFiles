return {
  {
    "p00f/clangd_extensions.nvim",
    ft = { "c", "cpp" },
    event = "VeryLazy",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      require("clangd_extensions").setup {
        server = require("astronvim.utils.lsp").config "clangd",
        extensions = {
          autoSetHints = true,
          -- These apply to the default ClangdSetInlayHints command
          inlay_hints = {
            inline = vim.fn.has "nvim-0.10" == 1,
            -- Options other than `highlight' and `priority' only work
            -- if `inline' is disabled
            -- Only show inlay hints for the current line
            only_current_line = true,
            -- Event which triggers a refersh of the inlay hints.
            -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
            -- not that this may cause  higher CPU usage.
            -- This option is only respected when only_current_line and
            -- autoSetHints both are true.
            only_current_line_autocmd = "CursorHold",
          },
        },
      }
    end,
  },
}
